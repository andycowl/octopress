---
date: '2006-02-23 16:50:26'
categories:
    - uncategorised
title: how bind variables made me a demigod
layout: post
comments: true
---

In a previous life, I was a development DBA. Sorry that's not quite
true. My job title was 'Persistence Architect' for a J2EE application.
The Oracle database wasn't really considered to be a database. In fact,
it wasn't even considered to be a repository either. The database was
merely a means of persisting objects.

There was a swear box for the terms 'Table', 'Column', 'Database',
'record, 'schema', 'SELECT' and bizarrely, 'PMON'. This meant I had to
resurrect the word 'tuple'.

Anyway, I was responsible for the production system which was lightly
loaded and adequately configured so life was easy and I could blog and
surf all day. Well, actually I couldn't because I didn't blog back then
and I was behind a corporate firewall so I just had some EJB's and the
complete Oracle 9i documentation set for company.

One Friday, a developer came along and asked me to restart the DEV
database. I asked 'Why ?'. He replied 'Because it is the second Friday
in the month'. I asked 'Why ?'. 'Because we restart it every two weeks
at Friday lunchtime'. 'Why ?'. 'Because that's what Bryan used to do'
'Why ?'. 'To fix the Oracle bug where we can't instantiate any more
objects'. 'What Oracle bug ?'. 'Look - I really don't know - some stupid
low level Oracle error. Please just restart it'.

Ten minutes investigations revealed he was indeed speaking the truth.
The Oracle listener was failing with 'Unable to fork process' due to a
lack of resources. Just like the objects, database connections were also
persisted. This was a development Solaris server with lots of components
co-hosted with 2 CPU, 512 MB memory and a paltry 128 MB swap space.
Configured more swap space, ordered more memory. Job done.

Everyone was happy. All objects could be instantiated successfully and I
didn't have to set a fortnightly reminder to restart Oracle on Friday
lunchtime.

So, I was able to return to the 'Concepts' guide and my status was
elevated from 'quiet man in corner' to 'Hero'.

A couple of months later, I was asked to look into the 'appalling lack
of performance scalability' of the database on UAT. Apparently, during
load tests, the J2EE application could only process 800 transactions per
hour. Well, they weren't actually conventional database transactions but
rather complex, involved business processes.

UAT had a 128 MB buffer cache and a 1 GB shared pool. Odd. The shared
pool was littered with lots of almost identical SQL statements with
embedded literals. I suspect the shared pool was originally 128 MB, the
library cache hit ratio was low and some performance tuning wizard
(human or otherwise) recommended 'Low library cache hit ratio means
increase shared pool immediately'. Repeat ad infinitum.

I summoned up the courage and talked to the developers. 'Would it be
possible to modify the application to use bind variables ?' 'No. Listen.
We just use objects. We don't make database calls'. Some more
investigations. The J2EE application uses TopLink which is an interface
layer translating the objects into database accesses.

I decided to read the TopLink manual and suggested setting the TopLink
configuration parameter 'should-bind-all-parameters' to True and repeat
the test. While the development team made the changes, I reduced the
shared pool to 128MB and increased the buffer cache to 1GB.

Repeat test. Staggering improvement to over 3,000 'transactions' per
hour.

My status is immediately elevated to 'demigod'. Why, they were so
grateful, a Java developer finally divulged the proxy they were all
using to access the internet.

I created my own private swear box for the terms 'EJB', 'J2EE',
'Container Managed Persistence', 'multiple inheritance', 'classes',
'methods', 'destructors' and 'Persistence Architect' and returned to
quietly reading the fine Oracle manuals.
