---
date: 2007-01-24 00:58:04
title: fun with disaster recovery
layout: post
comments: true
categories: blogging
---
Sort of.

I decided to remove all posts from my newly created Habari
[sandbox](http://www.nbrightside.com/habari/) in case my readership and
GoogleBot gets confused. As there was no obvious bulk deletion tool, I
simply truncated the \`wp\_posts\` table.

Unfortunately, I truncated the \`wp\_posts\` table from the Wordpress
schema instead of the Habari schema.

So, in the space of a mere 24 hours, I had managed to
[lose](http://www.nbrightside.com/blog/2007/01/24/lost-in-transit/) my
favourite boxer shorts, get a brand new shiny blog and then completely
trash my established, trusty, stable blog.

No problem. Earlier today I upgraded to WordPress 2.1 so I can use the
backup I carefully took before that upgrade. Only the Bluehost one-click
upgrades are so reliable and trouble-free, I got out of the excellent
habit of taking my own backup by hand.

No problem. I will just use the backup Bluehost took automatically. Only
I can't. That backup is purely of the PHP code (and not the database).

No problem. I will simply use the Bluehost mySQL database backup. Only I
can't. Murphy has spoken. The latest daily backup has been made in the
last 2 hours and the \`wp\_posts\` table is empty.

No problem. I will go back to the weekly dump, extract the SQL for
\`wp\_posts\` in isolation and add the raw data by executing the INSERT
statements.

That all works fine. 502 records inserted into \`wp\_posts\`.
Triumphantly, I pat myself on the back and check the blog looks OK.
There are still no articles. Weird.

I create a test article, which is visible, and compare the 'good' record
against the 'bad' record. Quickly track the problem to the 'post\_type'
column which is NULL on the imported posts and should be 'post'. Issue
the necessary UPDATE statement and, magically, all my posts immediately
re-appear. Fix the 'About' page which imaginatively has a 'post\_type'
of 'page'.

All that remains is to fill in the gap between last week's backup by
manually pasting in articles from Google Reader and modifying the
timestamps. Slightly tedious but much preferable to laboriously typing
in 501 articles.

And the moral of this tale. If I ever cross your threshold to be
interviewed for that production DBA role for a large Siebel deployment,
just thank me and politely show me the door. Quickly.
