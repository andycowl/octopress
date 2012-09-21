---
date: '2006-12-22 05:04:02'
categories:
    - oracle
title: probably the best feature in Oracle 10g
layout: post
comments: true
---
Regularly refreshing Oracle statistics on all tables, indexes and column
histograms flushes the shared pool and can occasionally lead to some
unexpected and unpleasant surprises.

Thankfully, Oracle 10g automatically maintains 31 days of statistics
history which means it is trivial to revert to a previous set in order
to restore service to the production environment while you investigate
further.

A perfectly valid strategy for statistics gathering is to gather, test,
validate, save and leave well alone.


    SQL> select dbms_stats.get_stats_history_retention from dual;

    GET_STATS_HISTORY_RETENTION
    ---------------------------
    31

    SQL> select dbms_stats.get_stats_history_availability from dual;

    GET_STATS_HISTORY_AVAILABILITY
    ---------------------------------------------------------------------------
    14-NOV-06 10.26.57.421000000 AM +00:00

    SQL> exec dbms_stats.restore_schema_stats(ownname=>'SIEBEL',as_of_timestamp=>trunc(sysdate)-7)

    PL/SQL procedure successfully completed. 

