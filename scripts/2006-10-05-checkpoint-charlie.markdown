---
date: '2006-10-05 00:46:49'
categories:
    - uncategorised
title: Checkpoint Charlie
layout: post
comments: true
---

The migration from andyc.wordpress.com is now complete. All articles
have been migrated. All comments have been lovingly preserved. All the
internal links have been fixed (by hand) in a long and painstaking
process. Robots and spiders are crawling all over the new site.

The only omission was a handful of WordPress images. I realised that I
was a little hasty in deleting my old WordPress blog otherwise I could
have easily retrieved these files too. Or a simple
'[wget](http://www.gnu.org/software/wget/)' of the complete site would
have done the job.

Time for a checkpoint, I think. Activate the [WP-DB
Backup](http://www.skippy.net/blog/category/wordpress/plugins/wp-db-backup/)
plugin and take a full backup of the MySQL database. Export the complete
blog (posts and comments) to XML. As for Charlie - well that's yours
truly for not taking a checkpoint earlier.

I decided I didn't like the format of the '[Related
Posts](http://www.w-a-s-a-b-i.com/archives/2006/02/02/wordpress-related-entries-20/)'
plugin and uninstalled it. However, when I reversed the database
changes, I inadvertently deleted two key WP tables instead of column
attributes. This idiotic error broke my blog. Totally.

So I was forced to delete my shiny, new WordPress installation and
database, and repeat the whole migration process again (including the
time consuming and painstaking change to all internal links) from my
local WordPress installation. Lucky I took that copy otherwise I would
have been really stuck.

Still, I am getting pretty good at the migration from hosted to hosting
WordPress now and, finally, I understand the importance of backups.
