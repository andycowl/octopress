---
layout: post
title: "30 second guide to tuning Siebel"
date: 2006-09-07 03:52
comments: true
categories:
    - oracle
    - siebel
---
<h1>Bottom up</h1>
<p>
Identify resource intensive SQL statements using Statspack (ADDM, custom scripts, Spotlight).  Siebel is a black box that pumps out lengthy, complicated SQL statements with lots of (outer) joins. Level 7 snapshots are useful as 'sprepsql' may be used to reveal the full query text which is often tantalisingly truncated in the summary reports. In addition, the associated query plan for any statement can retrospectively dumped.
</p>
<p>
The DBA can determine which queries are executed and how many times. There is no point tuning a query that is only executed monthly whereas shaving fractions of a second from a fundamental query executed thousands of times may prove more worthwhile.
</p>
<p>
The disadvantages of this approach are that the bind variables and username who issued the query are not available which may be important. Secondly, it is not obvious which Siebel screen is associated with the problematic SQL statement(s).
<h1>Middle out</h1>
<p>
Increase Object Manager logging to dump the SQL statements together with timing information for prepare, fetch and execute. Search the log files for any SQL taking more than one second. The advantage here is that the username for the session. the sequence of screens visited and all bind variables are included so it is easier to reproduce in SQL*Plus.
</p>
<p>
Patterns of usages and resource intensive queries should start to appear. You may even identify groups of users (by job role or geographic location) who have different types of problems.
<h1>Top down</h1>
<p>
A little radical for most DBA's (developers, integrators and highly paid consultants for that matter). Seek out the users, sit down and talk with them.
</p>
<p>
Watch how they actually use the application for 30 minutes. This is often most enlightening. You witness first hand how users actually use the system. Sometimes it turns out that they are not always using the application efficiently (for various reasons).
</p>
<p>
You can see the typical business scenarios, the frequently used views (tables), the type of searches users specify, what they like, what they hate, what is fast, what is slow. In fact, your visit may well end up lasting a lot more than 30 minutes.
</p>
<p>
Or you may need a combination of all three.
</p>
