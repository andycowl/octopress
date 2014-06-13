---
date: 2007-03-27 10:16:34
title: the sole responsibility of a production Oracle DBA
layout: post
comments: true
categories: oracle
---
Many years ago, I managed a set of Oracle databases for various clients.

However, I was not an Oracle DBA. I was an Unix/C developer who happened
to progress to Pro\*C, PL/SQL and some ETL projects for data warehouses.

I was an mediocre development DBA because I was a mediocre developer and
I had a keen interest in performance tuning i.e. I was (am remain) a
'glory hunter'.

I was not a production DBA because I didn't have the training,
experience and discipline required for change controls and saying 'No'.

One day, the CEO of our 18 man Internet startup asked me to deliver a
short presentation to the rest of the company what my team (me and my
junior) did all day.

I put up a slide that said:

- Data Availability

I think a clever new media colleague helped me to add 'transitions' to
add two more bullets.

- Data Availability
- Data Availability

Ironically, this wasn't what we did which was covered on the next 34
slides. We did absolutely everything: fixing code, reloading data,
backups, analysis, ETL, extracts, PL/SQL, performance tuning, long
hours, recovery, testing, code reviews, cloning, documentation, nervous
breakdowns, monitoring, upgrades, configuration management, severed
relationships, recruitment, management and coffee.

However, data availability is precisely the only thing we should have
been doing.

Data availability is the sole responsibility of an Oracle production
DBA.

It is to ensure that data is available at all times to all users.

It is not to tune queries from 37 seconds to sub-second.

It is not to experiment with parallel query and parallel DML to tune a
third party application.

It is not to ensure that you can clone 'ALL\_OBJECTS' in less than 17
seconds.

It is not to ensure you can load 184 million records in 72 hours.

It is to ensure that you can restore data from a catastrophic failure.

It is to ensure you can restore service following an expected failure.

It is to ensure you can restore from the backups deposited in secure
off-site storage.

It is to ensure that the file system holding the archive logs never
fills up.

It is to ensure that you can have a coherent plan to restore service
after any unexpected event.

It is to ensure that you take responsibility and say 'Yes. That is down
to me'.
