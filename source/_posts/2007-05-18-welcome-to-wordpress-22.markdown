---
date: '2007-05-18 18:06:26'
categories:
    - uncategorised
title: Welcome to WordPress 2.2
layout: post
comments: true
---

I don't know what I did wrong but I just upgraded to [WordPress
2.2](http://wordpress.org/development/2007/05/wordpress-22/) and
everything still works.

-   Download WordPress 2.2
    [distribution](http://wordpress.org/download/) and read
    [instructions](http://codex.wordpress.org/Upgrading_WordPress#How_to_Upgrade_in_Five_Steps).
-   Upload tar archive to Bluehost using
    [pscp](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html).
-   Run manual database backup using
    [AutoMySQLBackup](http://sourceforge.net/projects/automysqlbackup/).
-   Deactivate all plugins.
-   $ cp -rv blog blog-213
-   $ rm -fr blog
-   $ tar zxvf \~/wordpress-2.2.tar.gz
-   $ mv wordpress blog
-   Overlay contents of original wp-content/plugins and
    wp-content/themes directories.
-   Reactivate all plugins (apart from widgets) which is now in core.
-   Check version number (2.2) from dashboard.
-   Manually delete 143 spam comments that appeared during the 4 minutes
    Akismet's shields were down.
-   Admire new full screen WYSIWYG preview post.

