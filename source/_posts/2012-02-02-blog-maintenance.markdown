---
layout: post
title: "blog maintenance"
date: 2012-02-02 09:39
comments: true
categories:
    - blogging
    - drupal
---
Time to upgrade Drupal again. Yesterday version
[7.12](http://drupal.org/drupal-7.12) was released and this blog is
currently running a very outdated (and probably insecure)
7.4. Although Drupal 7 included automatic update for modules and
themes, updating the core Drupal software still needs manual
intervention and takes time.

Over the years, the main self-hosted blog platforms I have used are:

* WordPress - one-click updates. Quick and easy. By far the best and most robust solution. Never let me down.
* Habari - Official Habari releases were fairly infrequent so I chose to I track the latest development version so upgrade was manual but as simple as typing '$ svn update'. Rolling back was needed on a couple of occasions but possible simply by reverting to the previous SVN version ($ svn update -r <nnn>).
* Drupal - manual [update](http://drupal.org/node/1285892). Involves taking the site offline, copying files, thinking, run 'update.php', copying files back again, bringing the site back online and a little time. Slightly tedious as Drupal tend to to release a new version of the core software every month or so with a nagging email reminder to do the right thing.

I have also noticed that my sitemap hasn't been generated in 6 months
and doesn't include the most recent entries. In addition, some (old)
posts have been marked as 'Never Update' but after some housekeeping
to modify some permalinks to fix various '404 - Not found' errors,
these old entries now need to be regenerated.
