---
date: '2007-07-17 22:26:56'
categories:
    - uncategorised
title: membership form for BAAG
layout: post
comments: true
---
I own up. It's a fair cop. It is 27 years and 5 months since my last
confession. Since then, I have sinned, Holy Father. In fact, I have
committed an absolutely heinous crime. Please forgive me for I have
submitted multiple random guesses.

May the high priests (and priestesses) of the
[BAAG](http://www.battleagainstanyguess.com/baag/) movement, please have
mercy on my wretched soul.

Recently, I have been guilty of supporting and even proposing a
multitude of 'any guesses', all of which were proposed as possible
solutions to solve a critical system problem on a production system:

1.  I failed to cough and splutter in an effort to stifle my laughter
    when a manager suggested that 500 European users adopted shift
    working to clear the backlog.
2.  I didn't shout down a ludicrous proposal to reboot the Siebel
    Enterprise every 4 hours in order to maintain some level of service.
3.  I wrote on a whiteboard that consideration should be given to
    reinstating the previous version of the application even though this
    in itself was risky, time-consuming and unlikely to address the root
    cause.
4.  I even proposed patching to Oracle 10.2.0.3 with no supporting
    evidence whatsoever.
5.  I shuffled nervously and blushed when the customer asked 'Who do we
    escalate to when you fail to fix this problem ?'
6.  I watched in silence as the SAN man was stood against a wall and
    pelted with questions as senior management all pointed fingers in
    his direction.
7.  I failed to stand up for righteousness and technical purity as
    runaway, rogue sessions were maliciously and arbitrarily terminated
    by an Oracle DBA.
8.  I failed to suggest running a trivial SQL to determine index
    fragmentation and stood by as 74 indexes were needlessly
    reorganised.
9.  I watched helplessly as a systems administrator claimed the problem
    was 'definitely in the underlying disk I/O subsystem' simply because
    8,000 operations a second were being performed.
10. I failed to raise my eyes skywards and embark on a spontaneous two
    hour training session with a DBA who claimed the 'buffer cache hit
    ratio was fine' and the problems only started once users were
    allowed onto the system.

My only defence is that all of the above 'any guesses' created enough of
a diversionary smokescreen to buy me enough time, alone in a darkened
room, to analyze multiple Statspack reports, reproduce the majority of
the problems in SQL\*Plus and then **prove** the behaviour was improved
when statistics on empty tables were dropped and two additional indexes
created.
tags:
    - uncategorised

This lucky 'guess' miraculously restored performance and stability. So
you see, 'any guess' is not always such a bad strategy, after all.
