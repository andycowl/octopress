---
date: '2006-02-20 21:56:23'
categories:
    - uncategorised
title: introduction to ETL for Oracle
layout: post
comments: true
---

There are a variety of methods to extract, transform and load (ETL) data
in and out of an Oracle database. This short article provides an
overview of some of the basic options that are supplied with Oracle.

### L is for Load

Firstly, we need a table to load data into. This SQL script creates a
table called PERSON.
    create table person
    (person_id number(12),
    forename varchar2(200),
    surname varchar2(200),
    title varchar2(10),
    email varchar2(100),
    gender varchar2(1),
    ni_number varchar(30),
    address1 varchar2(100),
    address2 varchar2(100),
    town varchar2(100),
    county varchar2(100),
    postcode varchar2(10),
    country varchar2(100),
    phone varchar2(100),
    mobile varchar2(100),
    salary number(12),
    date_of_birth date);

The following PL/SQL procedure may be used to populate this table with
an arbitrary amount of data.

    create or replace
    procedure load_person(p_records in pls_integer)
    is
    v_person_id person.person_id%type;
    begin
    for i in 1 .. p_records
    loop
    v_person_id := to_char(i);
    insert into person
    (person_id,
    forename,
    surname,
    title,
    email,
    gender,
    ni_number,
    address1,
    address2,
    town,
    county,
    postcode,
    country,
    phone,
    mobile,
    salary,
    date_of_birth)
    values
    (v_person_id,   /* person_id */
    'Norman',     /* forename */
    'Brightside',    /* surname */
    'Mr',    /* title */
    'norman@brightside.com',  /* email */
    'M',    /* gender */
    'AA123456B',   /* ni_number */
    'Leafy Cottage',    /* address1 */
    '1 New Street',   /* address2 */
    'Anytown',    /* town */
    'Anycounty',    /* county */
    'NN12 9ZZ',    /* postcode */
    'UK',     /* country */
    '0208444555',   /* phone */
    '07789123321',   /* mobile */
    20000,    /* salary */
    '01-JAN-1970'   /* DOB */
    );
    end loop;
    commit;
    end;

Loading 1,000,000 records took 1 min 54 secs running Oracle 10g (10.2.1)
on my home PC.

One obvious deficiency in the PL/SQL is that all records (and the SQL
statement) are identical. In practice, this will not be the case.
Therefore, it may be beneficial to replace the literal SQL with bind
variables using using native, dynamic SQL.
    create or replace
    procedure load_bind(p_records in pls_integer)
    is
    sql_stmt varchar2(2000);
    v_person_id person.person_id%type;
    v_forename person.forename%type := 'Norman';
    v_surname person.surname%type := 'Brightside';
    v_title person.title%type := 'Mr';
    v_email person.email%type := 'norman@brightside.com';
    v_gender person.gender%type := 'M';
    v_ni_number person.ni_number%type := 'AA123456B';
    v_address1 person.address1%type := 'Leafy Cottage';
    v_address2 person.address2%type := '1 New Street';
    v_town person.town%type := 'Anytown';
    v_county person.county%type := 'Anycounty';
    v_postcode person.postcode%type := 'NN12 9ZZ';
    v_country person.country%type := 'UK';
    v_phone person.phone%type := '0208444555';
    v_mobile person.mobile%type := '07789123321';
    v_salary person.salary%type := 20000;
    v_date_of_birth person.date_of_birth%type := to_date('01-JAN-1970', 'DD-MON-YYYY');
    begin
    sql_stmt :=
    'insert into person
    (person_id,
    forename,
    surname,
    title,
    email,
    gender,
    ni_number,
    address1,
    address2,
    town,
    county,
    postcode,
    country,
    phone,
    mobile,
    salary,
    date_of_birth)
    values (:v_person_id,
    :v_forename,
    :v_surname,
    :v_title,
    :v_email,
    :v_gender,
    :v_ni_number,
    :v_address1,
    :v_address2,
    :v_town,
    :v_county,
    :v_postcode,
    :v_country,
    :v_phone,
    :v_mobile,
    :v_salary,
    :v_date_of_birth)';
    for i in 1 .. p_records
    loop
    v_person_id := to_char(i);
    execute immediate sql_stmt using
    v_person_id,
    v_forename,
    v_surname,
    v_title,
    v_email,
    v_gender,
    v_ni_number,
    v_address1,
    v_address2,
    v_town,
    v_county,
    v_postcode,
    v_country,
    v_phone,
    v_mobile,
    v_salary,
    v_date_of_birth;
    end loop;
    commit;
    end;
    /
    show errors

The modified PL/SQL procedure took 2 mins 1 sec for 1 million records.
This doesn't imply that bind variables are worse than literals. More
likely, that parsing overhead is relatively small for insert statements.

### E is for Extract

People often ask why Oracle do not provide an equivalent SQL\*Unloader
to dump tables to delimited files. Well, the standard SQL\*Plus utility
may be used for such a purpose. Tom Kyte created some generic wrapper
[scripts](http://asktom.oracle.com/~tkyte/flat/index.html) (for both
Unix and Windows) to dump an Oracle table to a delimited text file.

The 'flat' utility was used to dump the contents of the PERSON table
into a comma separated value (CSV) file containing 1 million (identical)
records.

SQL\*Loader was then used to immediately load the data back in to the
PERSON table again using this control file.
    LOAD DATA
    TRUNCATE
    INTO TABLE person
    FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
    TRAILING NULLCOLS
    (person_id,
    forename,
    surname,
    title,
    email,
    gender,
    ni_number,
    address1,
    address2,
    town,
    county,
    postcode,
    country,
    phone,
    mobile,
    salary,
    date_of_birth
    )

The time taken was 1 min 25 secs for conventional mode and 28 seconds
when specifying DIRECT=TRUE for a direct path load.

Another interesting and often overlooked method for loading data is the
use of external tables. This allows the creation of a virtual read-only
table which is mapped directly to the host file using a CREATE TABLE
syntax (similar to that for SQL\*Loader control file).

This SQL script creates an external table which can then be analysed
using standard SQL query tools without having to actually load a
database table.

    create table person_ext
    (person_id number(12),
    forename varchar2(200),
    surname varchar2(200),
    title varchar2(10),
    email varchar2(100),
    gender varchar2(1),
    ni_number varchar(30),
    address1 varchar2(100),
    address2 varchar2(100),
    town varchar2(100),
    county varchar2(100),
    postcode varchar2(10),
    country varchar2(100),
    phone varchar2(100),
    mobile varchar2(100),
    salary number(12),
    date_of_birth date)
    ORGANIZATION EXTERNAL
    (TYPE ORACLE_LOADER
    DEFAULT DIRECTORY data_dir
    ACCESS PARAMETERS (FIELDS TERMINATED BY ',')
    LOCATION ('person.dat')
    );

It is then trivial to load data from the external table into a
conventional Oracle table as follows:
    SQL> insert into person select * from person_ext;

\
 This method of data loading took 39 secs.

### T is for Transform

And deliberately left until last. Extracting and loading data is
relatively easy. Often the time consuming and complicated task in ETL is
to identify, transform and potentially clean the data items from the
source system and map them to tables in the target database.
