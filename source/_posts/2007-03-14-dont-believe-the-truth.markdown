---
date: 2007-03-14 16:33:29
title: don't believe the truth
layout: post
comments: true
categories: oracle
---
I am currently trying to assist with a couple of long standing Service
Requests. This type of work is interesting because the issue is normally
pretty deep rooted and complicated. These escalations are also very
challenging because lots of very intelligent people have already spent a
lot of man-hours investigating the problem.

Anyway, one of the first steps is to review associated Service Requests
and try to determine whether they are indeed related to the issue under
investigation.

The opening paragraph of one such SR contained this bold assertion from
the customer: 'As you can see, we have populated the interface tables
correctly and EIM still doesn't work.'

This was a interesting statement and was directly related to the problem
I was looking at. This statement went unchallenged by Technical Support
so I took it at face value and continued my analysis.

There was further empirical evidence that this data load would fail as
changes to the corresponding meta-data in the Siebel Repository had been
made in version 7.8. A user key definition on this table had been
inactivated which was previously present in 7.5. Interesting.

A few hours later, I returned to this SR as I was about to actually try
loading data into the same Siebel tables. This seemed rather pointless
if it wasn't going to work. However, I started from scratch, read the
documentation and created my own simple test case for a single record.

Sure enough, the customer was correct. Even though, I had populated the
correct columns in the correct interface table with the correct data,
Siebel failed to populate the target tables.

However, when I reviewed the EIM log files more carefully, the errors
were the conventional (foreign key lookup failed) type. I fixed the test
data, re-ran the load script and sure enough data appeared in the target
tables and was visible in the Siebel application.

So, the customer was actually mistaken and I suspect his bold assertion
including the four little words 'As you can see' also misled the
technical support engineer.

Last night, my son told me that playing World of Warcraft was much, much
quicker since the recent broadband upgrade from 4Mb to 10Mb. This made
sense as online gaming presumably needs lots of bandwidth and Virgin
customer services told me the
[upgrade](http://www.nbrightside.com/blog/2007/03/09/free-upgrades-from-virgin-media/)
would be effective from last Friday.

Out of curiosity, I downloaded a
[100MB file](http://fuller.zen.co.uk/test/) (twice) and looked at the
download speeds which were in the range 360-390 KB/sec. Quick but less
than you would expect for a 10Mb connection.

I called my friends at Virgin Media to check the status of my broadband
upgrade. Sure enough, contrary to what I was told, the 10Mb upgrade will
only be activated on 23 March when the engineer installs the V+ box.

So, unless you see it with your own eyes, it didn't happen.
