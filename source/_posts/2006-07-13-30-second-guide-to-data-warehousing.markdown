---
layout: post
title: 30 second guide to data warehousing
date: 2006-07-13 21:16:28
comments: true
categories: oracle
---
Many years ago, my horrid manager refused me a wonderful opportunity
to go on an all expenses paid training course all about data
warehousing in some exotic location.

I was moaning about this to a colleague over lunch. She was an
ex-teacher and happened to work in the prestigous data warehousing
consultancy group.  'There, there Norman. Don't cry. Tell me exactly
what you wanted to learn from this course ?'

'Well Sue, I just feel so stupid. I don't even know what a fact table
is, or a slowly moving dimension let alone a star schema - all that
fancy data warehousing terminology'.

'Shut up and listen. You buy a sandwich in Tesco. The sandwich costs
2.55 GBP. You have a table called TRANSACTION with a column called
PRICE. There are other tables called PRODUCT, REGION, STORE, DATE and
CAMPAIGN. There are a load of foreign keys from the fact table to the
dimensions and the data model is highly normalised.'

'The TRANSACTION table is a fact table because it records a fact - an
event that actually happened. Fact tables tend to be large. Just think
of all those massive queues for all the the checkouts at all the Tesco
stores.'

The other tables are called dimensions - these tables tend to be
smaller and describe elements of the business and allow managers to
report on sales by product/region/store/campaign/month/year/quarter.

'Oh I see but what about a star schema ?'

'Draw a picture with the fact table in the middle and the dimension
tables around the edges. Connect the tables together. What do you see
?'

'Oh I see. A pretty star. OK then. What about a snowflake ?'

'Draw 7 stars and join them up. What do you see ?'

'Oh I see. A lovely snowflake. Thanks a lot, Sue. That really has been
very useful.'

'No problem. Data warehousing isn't actually that hard.'

'Now what is the Pareto Principle ?'

Unfortunately, my helpful teacher suddenly remembered she had an
urgent meeting to go to and the '30 second Guide to CRM' was
postponed.
