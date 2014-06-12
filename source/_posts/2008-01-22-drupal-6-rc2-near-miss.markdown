---
date: 2008-01-22 04:40:45
title: Drupal 6 RC2 near miss
layout: post
comments: true
categories: blogging
---
Siebel customers (and employees alike) all over the world are busy
enjoying
[Metalink3](http://www.paulmcnamara.com/blog/2008/01/16/metalink3/)
which has recently replaced SupportWeb.

Everyone (well me, mainly) is taking great delight in taunting Oracle
DBA types with incredulous cries of 'Sorry - did you say you're still on
legacy Metalink2 ?'

A number of readers, impressed with this bleeding edge technology and
dying for more, have emailed me asking why this humble Siebel
[blog](http://www.nbrightside.com/drupal/blog) hasn't yet been updated
to Drupal [6.0 RC2](http://drupal.org/drupal-6.0-rc2).

Consequently, I downloaded the distribution for Drupal 6 Release
Candidate \#2 and, unusually for me, I even took the time to read
'UPGRADE.txt'. I followed the instructions therein and took the site
offline so any visitors receive a configurable, professional looking
message: 'This site is being upgraded to bleeding edge CMS technology.
Please spread the news and don't forget to taunt any Oracle DBA's.'

After that completely unnecessary configuration change (I have no
visitors), I was then unable to login to initiate the upgrade. Sigh.
Thankfully, I discovered this [article](http://drupal.org/node/133910)
from another early adopter which enabled me to regain control of my
original site.

I attempted the upgrade from Drupal 5.3 which failed to modify the
database schema and produced a worrying number of SQL errors.

Not to be defeated, I read this helpful
[article](http://drupal.org/node/209450) which implied the Drupal 5.x
system should be running the latest stable release (5.6) which seemed
eminently sensible advice.

I quickly upgraded from Drupal 5.3 to 5.6. Only I couldn't because my
site was now inaccessible after the partial, incomplete upgrade so I had
to hold my breath while I restored from yesterday's MySQL database
[backup](http://www.nbrightside.com/blog/2007/01/30/automated-mysql-backups/)
which worked perfectly.

Then I upgraded Drupal from 5.3 to 5.6, having naively convinced myself
this would fix the problem, and duly repeated the upgrade process to 6.0
RC2 which promptly failed with the same dire, database related, results.

Still, this is a beta release after all and sure enough (as always),
some other poor soul has already been
[there](http://drupal.org/node/212381) and done that.

No fix yet. Roll on RC3.
