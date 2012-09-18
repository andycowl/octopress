---
layout: post
title: "migration plan"
date: 2012-09-14 15:55
comments: true
categories:
    - blogging
---
Loose thoughts on the plan of attack for the blog migration:

1. Install Octopress locally
2. Configure S3 and install a dummy Web site.
3. Use's3cmd' to upload test site to Amazon S3
4. Test incremental uploads. This is a firm requirement.
5. Full database backup of existing Drupal blog
6. Take backup of Drupal installation (additional modules, scripts).
7. Install vanilla Drupal 7 locally.
8. Install copy of the existing Dupal blog in local version (overwrite database ?).
9. Use the Drupal to Octopress migration script. This extracts nodes from the database and creates Markdown files for each post, This script is probably for Drupal 6 so some tweaks (major rewrite) may be needed for bleeding edge Drupal 7. URL aliasing is supposedly supported.
10. Test the various elements in the [checklist](http://www.nbrightside.com/blog/2012/09/14/blog-migration-checklist/). Disqus comments need the correct domain name so will have to come last.
11. Configure a redirect from 'nbrightside.com' to the Amazon URL. I can see trouble and lots of Googl'ing here.
12. Place source code (Markdown posts) into GitHub repository.
13. Put kettle on.
