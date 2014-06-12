---
date: 2006-10-23 23:28:36
title: the never ending quest for the truth
layout: post
comments: true
categories: oracle
---
Modern versions of Siebel use the Cost Based Optimizer (CBO) so the
strategy used for gathering (and refreshing) statistics and histograms
becomes increasingly important.

Sometimes, the strategy can be articulated by the Oracle DBA or may even
be documented or SQL scripts may be supplied that define the strategy.

Normally, however, the definitive version of the truth lies in the data
dictionary.

    SQL> exec dbms_stats.gather_table_stats(ownname=>user,tabname=>'PERSON',cascade=>TRUE,
    method_opt=>'FOR ALL COLUMNS SIZE AUTO');
    SQL> select column_name,
    to_char(last_analyzed, 'mm/dd/yyyy hh24:mi:ss') as last_analyzed, num_nulls,
    global_stats, user_stats
    from user_tab_col_statistics where table_name='PERSON' and column_name = 'SALARY';
    COLUMN_NAME         LAST_ANALYZED       NUM_NULLS   GLOBAL USER
    SALARY              10/23/2006 14:55:15    0         YES       NO
    SQL> exec dbms_stats.set_column_stats(ownname=>user,tabname=>'PERSON',colname=>'SALARY',
    nullcnt=>1000000);
    SQL> /
    COLUMN_NAME         LAST_ANALYZED       NUM_NULLS  GLOBAL USER
    SALARY              10/23/2006 14:55:18   1000000   YES       YES

So when trying to answer to question: 'Have you ever had cause to
manually populate column statistics ?', although the Oracle DBA is your
friend, the USER\_STATS column in the DBA\_TAB\_COL\_STATISTICS view is
your best friend.
