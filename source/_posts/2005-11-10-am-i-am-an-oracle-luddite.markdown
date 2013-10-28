---
title: Am I am an Oracle luddite ?
layout: post
comments: true
date: 2005-11-10 16:57:14
categories: oracle
---
Jeff Moss'
[article](http://oramossoracle.blogspot.com/2005/11/free-toad-at-least-until-raptor-comes.html)
about the commercial and free versions of Toad and the incredibly
tenacious, persistent breed of salesperson bred by Quest Software got
me thinking about the Oracle DBA tools I use.

-   People
-   SQL\*Plus
-   Statspack
-   putty

People are important because people have developed the application,
people are using the application, people are managing the servers,
people are managing the database and intelligent people have
configured that very expensive storage array.

These people know a lot about the application, the history of the
project, the successes and failures, the lessons learned, the
architecture, the infrastructure whereas I may know, quite literally,
nothing about the same subjects.

I have seen people using Toad (and similar GUI based Oracle
development tools) very effectively, multi-tasking, flipping between
windows at breakneck speed. Sometimes it makes me quite tired just
watching them.

However, I prefer SQL\*Plus to do most of the work because :-

-   SQL\*Plus provides a complete report of my session, with timings,
    query plans, statistics. No need to frantically try to write it all
    down.
-   The SQL script can be incrementally developed and is repeatable. It
    is quite easy in Toad to execute an arbitrary set of mouse-clicks so
    it is not clear which of the six 'alter session' statements were
    actually in effect when you finally got the optimal results.
-   SQL\*Plus is the 'vi' of the Oracle world. It is the one Oracle tool
    you are guaranteed to have access to, everywhere. The sys admin may
    not allow you to install commerial software without a valid license
    or may use another tool you have never seen before.
-   SQL\*Plus can use bind variables, provide the query plan (with or
    without retrieving the 6 million records) and provide the vital
    statistics (consistent gets) just the same as the GUI tools. Almost
    everything you need in fact.

Statspack is important because it is an Oracle package. Oracle will
maintain and develop statspack for the latest features available in
10g.  Statspack produces reports in a standard format which can easily
be analysed by others (colleagues, DBA's, even Oracle). Statspack can
also be configured to run automatically at regular intervals. If there
is always a problem with the overnight ETL at 03.30, I would rather
statspack gets the overtime and gathers the performance metrics rather
than me sitting there in the middle of the night.

Statspack tells the truth, the whole truth and nothing but the
truth. It is incredibly tempting to use an Oracle monitoring tool like
OEM or Spotlight, obsessively watching the screen, drilling in on what
appears to be an expensive query and your salvation. The problem is
that you don't know the query in question is only spawned once a
quarter for the accountant's financial report and runs in batch. The
query could take 37 minutes and no-one would care. It is simply not
important. It is not what the users are complaining about.

Worse, because your refresh interval is 5 seconds, you are blissfully
unaware that you have missed the crucial SQL query with literal SQL
that takes 1.7 seconds but is executed hundreds of times per second.
Statspack does.

Setting the default statspack level to level 7 means that statspack
can (retrospectively) produce the query plan for any problematic SQL
statement identified in the summary report. This is handy where you
may have long winded SQL statements where the summary report has
tantalisingly truncated the SQL text just as the WHERE clause starts.

Putty is important so you can run O/S utilities (prstat, glance,
topas, top, iostat, vmstat) to monitor the actual database server
during the investigations. If the server is a development server
hosting multiple Oracle instances with 2 CPU's running at 100% and
saturated disks, then the performance of the application will be
impacted, no matter what wizardry you weave.
