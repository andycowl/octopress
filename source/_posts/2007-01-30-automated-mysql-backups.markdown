---
date: '2007-01-30 22:25:35'
categories:
    - uncategorised
title: automated MySQL backups
layout: post
comments: true
---

After my recent brush with
[disaster](http://www.nbrightside.com/blog/2007/01/24/fun-with-disaster-recovery/),
I realised that my, err, backup strategy relied on me remembering to
perform a manual, occasional Wordpress export or a database backup.

This was acceptable while I was messing around with this blogging lark
but now I realise that it would be a little disappointing to lose the
entire contents of my blog.

While Bluehost run backups (which have saved my skin once), it would be
foolish to completely
[rely](http://www.tomrafteryit.net/blacknight-customer-service-gets-worse/)
on my hosting provider and the height of stupidity to rely on me !

As I said to a lovely hotel receptionist in Brussels recently,
struggling to find the reservation made on my behalf for Monday night,
'We have a saying in England - if you want something doing, then do it
yourself.' She nodded sagely as she eventually unearthed my booking for
Tuesday night by which time I would have left the country.

Unlike [Mark
Rittman](http://www.rittman.net/2006/11/15/wheres-everything-gone/), I
can't really count on the goodwill of both my readers to manually type
in more than 500 articles, so I looked around for a fully automated
backup that would backup all of my MySQL databases (not just WordPress)
using cron.

[AutoMySQLBackup](http://sourceforge.net/projects/automysqlbackup/) does
exactly what it says on the tin and works like a dream.

I even tested it on a local installation because we all know backups are
worthless unless you prove that you can actually restore them.
