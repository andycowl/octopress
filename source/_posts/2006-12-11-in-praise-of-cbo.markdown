---
date: '2006-12-11 04:48:57'
categories:
    - oracle
    - siebel
title: in praise of CBO
layout: post
comments: true
---
Jonathan [Lewis](http://jonathanlewis.wordpress.com/) poses a very
interesting
[question](http://jonathanlewis.wordpress.com/2006/12/09/how-many-ways/):

> Have you ever wondered how hard the optimizer has to work to produce a
> plan ?

Well actually Jonathan, curiously enough I have. Many times, in fact.

Siebel 7.7 (released in 2004) was the first version of Siebel to support
the Oracle cost based optimizer (CBO) and pleased a lot of demanding
Oracle DBA's who looked contemptuously on the 10 year old rule based
optimizer (RBO) technology and had long petitioned Siebel to finally add
support for CBO to improve performance, support table partitioning,
parallel query, bitmap indexes and lots of other features they wanted to
use (i.e learn about).

Inevitably, this major architecture change brought improvements in
performance and was generally welcomed by new customers. However, the
use of CBO also introduced some new issues for existing, long-standing
Siebel customers who upgraded to 7.7 from previous releases.

For example, if you dug very deep with tkprof and ran comparative tests,
it was common to observe that parse times were increased with CBO. This
was because versions of Siebel prior to 7.7 used the rule based
optimizer which follows a fixed set of, 15, err, rules to determine the
query plan to be used. Consequently, parsing in RBO is deterministic and
relatively quick.

Academics proved that it was actually possible for a well-trained monkey
to learn and recite the 15 rules and accurately predict the query plan
that Oracle will select. Clever Siebel 2000 developers discovered they
could influence the chosen query plan by reciting magic incantations,
altering search specifications, sacrificing lambs, nullifying the use of
unhelpful indexes and even modifying the ordering of WHERE clauses in
the SQL statements.

However. as Siebel finally moved into the 1990's and embraced CBO,
things suddenly became very different. The strategy for CBO is to simply
give the optimizer as much data as possible so the optimizer can make
the 'best' decision regardless. Talented Siebel developers everywhere
quaked in their boots and now sacrificed their lambs, praying for a
contract renewal.

So whenever Siebel customers complained to me that parse times were too
high, I was often tempted to ask them:-

'How many pages of A4 did it take to print out this problematic query
with the high parse time ?'

'Err, 16.' 'How many tables are joined ?'

'Well, err, 38.' 'And how many outer joins are in this query ?'

'Well, err, 12.' 'How many indexes are defined on those 38 tables ?'

'Well, err, 189 ?'

'So, if I gave you detailed statistics on those 38 tables together with
even more statistics on those 189 indexes together with frequency
histograms of all of the columns involved, how long would it take you to
parse that query and tell me the best query plan to return the data as
quickly as possible ?'

'Well, err, I'm not sure'

'And how long do you think it would it take you to write a computer
program to crunch all that data and return the best query plan ?'

'Well, err, I really don't know'

'So do you still think that 3.4 seconds is really too long to parse this
statement for the first time and sub-second thereafter ?'.

'Well, err no, I guess not'.

Now I am lucky enough to work for Oracle, I have visibility to a wide
variety of complicated CBO related bugs including detailed analysis from
Technical Support and Engineering of 10053 trace files.

Consequently, I have nothing but complete respect for the software
engineers who develop, maintain, fix and seek to improve the Oracle cost
based optimizer.

[ I can thoroughly recommend Jonathan Lewis'
[book](http://www.amazon.co.uk/Cost-Based-Oracle-Fundamentals-Experts/dp/1590596366/sr=8-1/qid=1165872049/ref=sr_1_1/203-2869917-8143900?ie=UTF8&s=books)
as an excellent introduction with plenty of examples to illustrate how
the CBO works. ]
