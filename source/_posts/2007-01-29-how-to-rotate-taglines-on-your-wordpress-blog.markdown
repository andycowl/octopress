---
date: 2007-01-29 20:42:57
title: how to rotate taglines on your WordPress blog
layout: post
comments: true
categories: blogging
---
Another thing on my todo list was to learn PHP and write a WordPress
plugin to randomly select quotes stored in the database to rotate the
tagline.

An admin interface to create, modify and delete quotes was planned for
Version 2.1 (beta) due Q4 2008.

Fortunately for me though, a helpful person called Zombie Robot
(pseudonym ?) has already produced
[wp-quotes](http://www.zombierobot.com/wp-quotes/) (and another kind
person [tweaked](http://hangoversunday.com/?p=260) it to work properly
for taglines).

All that remains is the interesting part - performance tuning. No -
wait. Existing users have already identified this
[modification](http://www.zombierobot.com/archives/optimizing-wp-quotes/)
as efficiently fetching a single, random record. Horribly database
specific of course but worth having when you have 2.4 million quotes.

    36c36
    < $sql = "select * from " . WP_QUOTES_TABLE . " where visible='yes'
    < order by rand() limit 1";
    ---
    > $sql = "select * from " . WP_QUOTES_TABLE . " where visible='yes'";
