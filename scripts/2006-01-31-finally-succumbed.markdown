---
date: '2006-01-31 18:59:38'
categories:
    - uncategorised
title: finally succumbed
layout: post
comments: true
---

[Tim Hall](http://oracle-base.blogspot.com/) was right. I can resist
everything except temptation.

> Install Apache 1.3.2 for Windows. Very quick and easy. Slight feeling
> of version envy. The latest version is 2.x. Will upgrade later.
> Install mySQL 5.0 for Windows. Very quick and easy. Install mySQL
> Administration Tools 1.1. Very quick and easy. Install mySQL
> QueryBrowser 1.1.9. Very quick and easy.

Login to mySQL database. Create a table. Insert a record. Select the
record. All seems fine.

> Install PHP 5.12 for Windows. Very quick and easy.

But wait, what's that ? I actually have to do some work and edit Apache
'httpd.conf' because that code hasn't been written yet. Read
'install.txt' for details. Oh no. Make the necessary changes. Now the
Apache service doesn't even start. No Apache error log. Have to run
something called Event Viewer. Investigate for 3 minutes. Get bored.
Consider reformatting disk, installing Linux and using

> ./configure; make; make test; make install

Kids want to use computer. I want to watch the football. I need to get a
move on. I haven't got all day.

Stumble across [Wamp](http://www.wampserver.com/en/) (Apache 2.0.55,
mySQL 5.0.18, PHP 5.12 bundle). Phew. Version envy dissolves.

Wamp (Apache) doesn't install cleanly due to conflict with existing
installed programs. Uninstall everything. Reboot. Reinstall wamp which
is successful. Nice dashboard with phpMyAdmin and mySQL interface
(SQLiteManager).

Download [Joomla](http://www.joomla.org/). Use browser based
installation which runs perfectly. Run Joomla. Looks nice.

Download [gtd-php](http://gtd-php.sourceforge.net/). Configure. Create a
GTD database and tables. Run gtd-php. Looks nice.

Try to create a project. Get '403 Forbidden' error. Ask politely for
help. Google points me at a similar
[issue](http://www.wampserver.com/phorum/read.php?f=2&i=3874&t=3874) in
Wamp. Make the suggested edits. Adding items now works ! Add the
following 'Next Actions'

> Install Apache Install PHP Install mySQL Install Joomla Install
> GTD-PHP Add mySQL to CV

Mark all actions as done. How very satisfying. Turn computer off.
