---
date: 2007-01-15 04:22:19
categories:
    - uncategorised
title: what's new in Siebel 8.0
layout: post
comments: true
---
Siebel 8.0 is the first major release since the Oracle takeover and is
now imminent.

Oracle are planning a simultaneous
[launch](http://www.oracle.com/webapps/events/EventsDetail.jsp?p_eventId=59792&src=4938562&src=4938562&Act=11)
of five different products (JD Edwards, E-Business, PeopleSoft and
Siebel 8.0) on 31 January 2007.

Ed Abbo (VP CRM products) will be chairing the Siebel session and
[SearchCRM](http://searchcrm.techtarget.com/) has an interesting (albeit
low quality) ~~interview~~
[podcast](http://searchcrm.techtarget.com/originalContent/0,289142,sid11_gci1233500,00.html)
with Ed where he talks about new features in Siebel 8.0, CRM OnDemand
and the impact of the Oracle takeover on Siebel's development and
strategy.

The Oracle Applications Users Group ([OAUG](http://www.oaug.org/)) also
has an excellent
[summary](http://www.oaug.org/usercommunities/siebel/documents/siebel8overview.pdf)
of the new functionality in Siebel 8.0.

IBM has published a useful
[whitepaper](http://www-03.ibm.com/support/techdocs/atsmastr.nsf/WebIndex/TD103401)
about tuning Siebel 8.0 on AIX 5.3. The paper includes benchmarks with
different virtual memory page sizes and shows the benefits of
simultaneous multi-threading. The paper also includes analysis of
generic tuning features available in Siebel (connection pooling and
threads per process).

The two key features that specifically interest me are the Siebel
Diagnostic Console and the introduction of support for Linux (RedHat
4.0, SuSE 9.0).

The Siebel Diagnostic Console offers an Analytics style dashboard
interface into the volumes of data produced by SARM.

Secondly, the number of Siebel customers choosing to deploy on Linux in
the coming months will be interesting.

Another example of the closer integration between Siebel and Oracle is
the recent announcement of a management pack for Oracle Enterprise
Manager (OEM) in the recently released 10.2.0.3.
> Oracle Application Management Pack for Siebel is a comprehensive
> solution for managing the configuration, performance, availability,
> and service level of Siebel CRM applications. It can be used to
> monitor the health of the servers and components, measure application
> response time, track configuration changes, and diagnose performance
> and execution problems.

This will be an invaluable tool for Oracle DBA's (who may be unfamiliar
with the Siebel application) to easily monitor a Siebel OLTP instance
and identify performance problems more promptly.
