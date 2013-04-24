---
layout: post
title: Octopress versus Drupal performance
date: 2012-10-03 08:50:00
comments: true
categories: octopress
---
One of the main advantages of a statically generated blog (like
[Octopress][1]) over a blogging platform that uses a database
([WordPress][2], [Drupal][3]) is performance.

[1]: http://octopress.org
[2]: http://wordpress.org
[3]: http://drupal.org

My humble blog doesn't get enough traffic for performance to be a
consideration and I thought I wouldn't be able to discern any
improvement.

<a
href="https://picasaweb.google.com/lh/photo/0g3QJNr4-JBTTnUr30I-INMTjNZETYmyPJy0liipFm0?feat=embedwebsite">
<img
src="https://lh3.googleusercontent.com/-6HMK8sqiSk0/UGvuBc5qgkI/AAAAAAAABzs/G58jXbvG-ow/s400/Webmaster-Crawl-Stats2.png"
height="362" width="400" /></a>

This graph is from Google Webmaster Tools. Can you guess when the blog
[migration][4] from Drupal to Octopress was done ? Yes - that's right - the
middle of September (17th to be precise).

[4]: http://www.nbrightside.com/blog/2012/09/17/migration-complete/

Undeniably, the performance is much better (fastest response time of
128 milliseconds) and reliable since the move to
Octopress. Unfortunately, this 'before' and 'after' comparison isn't
ideal. Previously, the blog was running Drupal 7, configured with a
small number of [modules][5] using MySQL and hosted on cheap ($6 a
month) shared hosting with Bluehost.

[5]: http://www.nbrightside.com/blog/2010/12/22/essential-modules-your-new-drupal-7-site/

The performance spikes (high of 2.5 seconds to access a page !) are
probably related to high usage of the Linux server my blog was
co-hosted on (rather than a specific Drupal performance problem).

When I migrated to Octopress, I also moved the blog to [Amazon S3][6]
storage so it's not entirely clear how much S3 has contributed to the
relatively stable and fast response times of the blog since
mid-September.

[6]: http://aws.amazon.com/s3/

With hindsight, I really wish I had phased the migration by deploying
Octopress for a month on the same Bluehost hosting (using rsync) and
then moved to Amazon S3. Still, it's a but late for that now.

However, it looks like I am ready for the SlashDot effect.
