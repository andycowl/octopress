---
date: '2010-01-29 14:53:11'
categories:
    - uncategorised
title: why can't people understand date arithmetic ?
layout: post
comments: true
---

` AND TO_NUMBER(TO_CHAR(appt_start_dt + 9/24, 'YYYYMMDDHH24MISS')) <= TO_NUMBER(TO_CHAR((TO_DATE(:b1, 'DD/MM/YYYY HH24:MI:SS')), 'YYYYMMDDHH24MISS'))`

Please can a clever Oracle person explain, in English, the precise
semantics of this WHERE clause snippet in the comments below.

I realise this construct and variants thereof have probably been
discussed ad infinitum on [Oracle
WTF](http://oracle-wtf.blogspot.com/) but I just don't get it.

I don't know whether this SQL was written by a human being or a third
party ETL tool but it doesn't matter. Currently, all ETL tools are
written by humans in any case.

Why do people struggle so much with date arithmetic ?

When I was a little boy, I used to say 'Only 43
days to my birthday now, Dad'. Although I didn't know it at the time I
could have written this as 

` sysdate + 43 = :my_birthday`

I even understand that TRUNC(SYSDATE) is midnight - it just seems
fairly intuitive and logical to me.

My tiny brain can even understand
the concept of date subtraction - last Wednesday was two days ago and
Manchester City's last trophy was almost 34 years ago.

I understand that a date is a date is a date. I realise that a date is
not an orange. I realise that a date is not a string and I only see
dates in SQL Developer because that was a design decision to perform
an implied conversion using the default date format and a useful user
friendly feature.

I understand that if I want to display the date and be assured of the
date format I need to convert it to a string using TO\_CHAR with the
appropriate date format mask.

I understand that Unix systems (and the
next generation blogging platform, Habari) stores 'dates' internally
as the number of seconds that have elapsed since the Unix epoch on 01
January 1970 00:00:00.

But look again at that code snippet. The author
is obviously familiar with the Oracle functions TO\_CHAR and
TO\_NUMBER but why in the name of God does he convert a date to a
string to a number and then compare the resulting outputs ?

What is the meaning of that generated 'number' - 20100129143559 ?
'Twenty billion, one hundred thousand and and one hundred and twenty
nine million, one hundred and forty three thousand and five hundred
and fifty nine. Or something. Why is that a useful number ?

Why did he waste time and energy doing do all that typing ?  Is he
working on a top secret defence project that requires him to obfuscate
the code ?  Maybe he is paid by lines of code ?  The author is clearly
aware of some elements of date arithmetic in Oracle because he used '+
9/24' to add 9 hours to the appointment start date.

Maybe there was a useful index defined on APPT\_START\_DT that he
wanted to suppress for performance reasons.

I'm not sure but I have an awful suspicion that the object associated
with the bind variable :B1 may already be declared as a DATE data type
but hey, let's convert it to a date using TO\_DATE - just to be sure,
to be sure.

Why didn't he simply use 

` AND appt_start_dt + 9/24 <= [TO_DATE] :B1`

Why ?
