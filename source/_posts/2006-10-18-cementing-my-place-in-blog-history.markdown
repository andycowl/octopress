---
date: '2006-10-18 05:09:37'
categories:
    - uncategorised
title: cementing my place in blog history
layout: post
comments: true
---
There is nothing worse than a blog entry titled 'Dear Diary' - hence the
title - but this is my humble submission for '[One Day in
layout: post
comments: true
History](http://www.historymatters.org.uk/output/page96.asp)' so please
forgive me. Of course, I could author this piece directly on the site
but that would mean checking I am within the 650 word limit which is far
too much work (unless I use Microsoft Word).

Get up at 7am and unload dishwasher. My one and only household chore but
one I perform very well. Breakfast of cereal, tea and orange juice.

Quick scan of work email to see if anything needs my attention. Today I
am going to be onsite with a customer and unlikely to have access to
email.

Quick scan of
[Netvibes](http://www.nbrightside.com/blog/2006/05/25/good-vibes-from-netvibes/).
The only thing to interest me is the recent update to
[TailRank](http://blog.tailrank.com/2006/10/tailrank_20_is_.html). I
have occasionally played with various meme trackers
([TechMeme](http://techmeme.com/), [Digg](http://digg.com/),
[Reddit](http://reddit.com/), [populicio.us](http://populicio.us/)) but
usually my feeds contain the same stories of interest. I also like
[popurls](http://popurls.com/) as a quick dashboard of current and
breaking news.

Today I am visiting a Siebel customer in Ascot. This location is
convenient for me (no hotels, no flights, no lengthy drive) and is a
shorter journey than to Oracle's offices in Thames Valley Park.

That's strange. For some reason, the traffic in Kingston upon Thames
isn't completely gridlocked and I actually cross the bridge over the
River Thames in less than 20 minutes. Then I remember why. This week is
half-term for some local schools (my son is on holiday) but, much to his
glee and her chagrin, my daughter is still at school.

Drive through Sunningdale and marvel at the size of some of the houses
(mansions would be a better description) here. Although I keep hearing
that [Sandbanks](http://www.thedorsetpage.com/locations/place/S020.htm)
in Dorset is the richest area in the UK, Sunningdale must run it a close
second.

Arrive at client offices. I am slightly early which is better than
slightly late so I make a quick call to an account manager with a
('political not technical') query from a customer about a review from
last week.

This customer has a serious data issue in production. On July 22 2006, a
'consultant' advised the customer to configure Siebel to use Universal
Time Co-ordinated (UTC). This proposal was a good idea (TM) but poorly
executed.

Key elements of the UTC migration were omitted (migration of
pre-existing non-UTC data, specification of timezones for each group of
users who are located around the world, modification of the database
timezone). Apart from that, the conversion to UTC went very well.

The net result was obtuse behaviour and incorrect appointment times
observed by different users. The issue is compounded by the fact that
this customer also has mobile Web clients who use Siebel on a
disconnected laptop and then synchronise with the server. In addition,
the Siebel administrator reports that server components (EIM, Workflow)
function but now report incorrect submit/start times.

Fortunately, Siebel has a conversion utility (documented in the Global
Deployment Guide) to address the issue so I spent some time configuring
and testing to fix the data quality issue for the various scenarios.

Get home. Eat tea. Settle down to watch United versus Copenhagen.
Discover that the wife is going out (how very inconsiderate) and I have
pop out to collect my daughter from trampolining.

Count words using Google [Docs](http://docs.google.com) - 560.
