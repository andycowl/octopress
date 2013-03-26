---
date: 2008-09-26 10:47:42
categories:
    - blogging
    - habari
title: review of Habari 0.5
layout: post
comments: true
---
# Introduction

[Habari](http://www.habariproject.org/en/) is a blogging platform,
created back in January 2007 and in the subsequent 18 months, the
software has matured and version 0.5.1 was recently
[released](http://www.habariproject.org/en/0-5-1-released).

Originally, I downloaded and experimented with Habari late in 2007 but
it wasn't until February 2008 that I finally took the plunge and
[migrated](http://www.nbrightside.com/blog/2008/02/13/now-on-habari/) my blog
from WordPress.

# Installation

Habari requires PHP 5.2 (or higher) and PHP Data Objects (PDO). If your
hosting company can't meet these requirements, think about switching to
one that can. Habari also supports multiple database types:

-   [MySQL](http://www.mysql.com/)
-   [SQLite](http://www.sqlite.org/)
-   [PostgreSQL](http://www.postgresql.org/)

Installation is very simple. You simply create the appropriate database,
enter the details of the database configuration together with the user
credentials for the administration account.

  [![image](http://lh5.ggpht.com/nbrightside/SNudADE5w7I/AAAAAAAAAvU/pu2msrsNHaI/s400/Habari-Install-mySql.PNG)](http://picasaweb.google.com/lh/photo/CKrel8WFknsg5BkIXVH5Ow)

Hit 'Submit' and you're finished.

[![image](http://lh6.ggpht.com/nbrightside/SNudf2_3GKI/AAAAAAAAAwU/4ag4nyGpyk8/s400/Habari-Success.PNG)](http://picasaweb.google.com/lh/photo/3pz7dbNRrMQoZLGX9rSdVQ)

# The Habari interface

Habari has a single menu structure and the main dashboard is fully
configurable. For example, if you don't want to see 'Latest Log
Activity' simply remove that tab. You can also drag and drop elements to
position the various elements of the dashboard to suit yourself.

[![image](http://lh3.ggpht.com/nbrightside/SNuc_kAhJ4I/AAAAAAAAAvE/RF8ImW-HFKw/s400/Habari-dashboard.PNG)](http://picasaweb.google.com/lh/photo/1psP1BfWBg_wLS9LRy69Fw)

Obviously, bloggers spend most of their time composing posts and the
Habari article editor is beautifully simple, clean and uncluttered.
[![image](http://lh4.ggpht.com/nbrightside/SNuc_4w9GAI/AAAAAAAAAvM/njYEV5rCk9g/s400/Habari-Editor.PNG)](http://picasaweb.google.com/lh/photo/rRwx67oluzaANNownn69FQ)

There are two separate tabs which expand to reveal the basic
configuration options (timestamp, slug, comments) and another to define
and add tags to the newly created post.

Searching for content in Habari is also refreshingly different. There is
a timeline which can be dragged and resized, for example to focus on all
posts made during 2007, supplemented by conventional searching.

[![image](http://lh3.ggpht.com/nbrightside/SNyoWrRYNvI/AAAAAAAAAyM/OTqwauv5zMM/s400/Timeline.PNG)](http://picasaweb.google.com/lh/photo/Uip6f-befSyePgUsODagLQ)
# Migration

Importers exist to import WordPress and Serendipity data into Habari.
There is no native support for the (non standard) WXR format favoured by
WordPress.com but staging the content into a local WordPress
installation and then into Habari is possible.

[![image](http://lh4.ggpht.com/nbrightside/SNudgN6ocwI/AAAAAAAAAws/uDSaCZhHu7k/s400/Habari-WP-Import.PNG)](http://picasaweb.google.com/lh/photo/EUqZYHwOy13P8Ws3hSBsnA)

The WordPress importer is fast and robust. I imported over 700 posts and
1,000 comments without errors in less than 2 minutes. In fact, it was so
fast, I had to double-check that the import had actually worked ! All my
existing WordPress categories were correctly converted to tags.

# Themes

Habari is still a relatively young project (albeit growing rapidly) so
the number of themes available for Habari isn't as wide ranging as, say
Wordpress. Nor is there a browsable theme directory. However, there is
an increasing number of attractive, well designed themes
[available](http://wiki.habariproject.org/en/Available_Themes).

[![image](http://lh5.ggpht.com/nbrightside/SNudgKxFahI/AAAAAAAAAwc/8XNi5qBhea8/s400/Habari-Themes.PNG)](http://picasaweb.google.com/lh/photo/KR_A5-NqpFkUHa0h9TFRrw)

# Plugins

Plugins are installed by uploading the to server and unpacking in the
'/user/plugins' directory. Then the plugin is then activated and
configured from the Administration-Plugins screen.

[![image](http://lh3.ggpht.com/nbrightside/SNudOsaZroI/AAAAAAAAAwE/XF2f1-EoSYk/s400/Habari-Plugins.PNG)](http://picasaweb.google.com/lh/photo/fvpCWCoiOrwKvceZXBRZew)

Like themes, the number of
[plugins](http://trac.habariproject.org/habari-extras/browser/plugins)
available for Habari is nowhere near as vast (or overwhelming) as other
longer established blogging platforms. You can review the list of
plugins in the Habari-extras
[repository](http://trac.habariproject.org/habari-extras/browser/plugins).

However, the key functionality that most bloggers want and need are all
supported. Hardly surprisingly, as all the Habari developers eat their
own dog food and maintain Habari powered blogs.

-   metaWeblog - enable blogging clients like ScribeFire
-   Contact form
-   Google Analytics
-   Adsense
-   Feedburner
-   Scheduled posts
-   LiveHelp - easy access to IRC embedded in Habari
-   Defensio - superior anti-spam solution
-   Media silos for Flickr, Viddler and YouTube
-   Sitemaps
-   Podcast
-   Related Posts
-   Plugins to integrate Diigo, Jaiku, Twitter into your blog

There are also a couple of WYSIWYG editors to choose from (NicEdit,
jwysiwyg) although I now use the excellent MarkUp plugin which adds
shortcuts for common tags to the article editor but leaves you in full
control of the HTML.

# Documentation

The Habari documentation is available in Wiki format. The release
documentation is also distilled into TiddlyWiki and is included with the
Habari distribution. This is useful if you are working in a disconnected
environment.

![image](http://lh5.ggpht.com/nbrightside/SNudOFmharI/AAAAAAAAAv0/nE0hTNo-Kf4/s400/Habari-Manual.PNG)

# Why is Habari different ?

People often ask 'What makes Habari better than XYZ ?' And, of course,
that's hard to answer and also very subjective. I always reply; 'Habari
isn't better - it's just different'.

Having used the software for six months now, these are a few of the
reasons I like Habari:
-   Ease of use.
-   Admin interface.
-   Media silos.
-   Actively developed.
-   The 'community'.
-   The article editor.
-   Ease of use
-   Small, active and responsive developer community.
-   The automatic schema upgrade process works seamlessly.
-   The LiveHelp plugin.
-   Proper timezone support built into core.
-   Minor edits - ability to fix typos without updating the Atom feed.
-   Ease of use.

And finally, and perhaps most importantly - Habari is fun - the project
is developing rapidly. It's fun to run the latest SVN code. It's fun to
review the latest set of changes in trac. It's exciting to type 'svn
update'. It's fun to lurk in the IRC channel and eavesdrop on developer
discussions.

Of course, there are some areas of functionality (access control lists)
that are incomplete or 'planned' but I can honestly say that the absence
of the following features doesn't really affect my normal, daily use of
Habari.

-   No Fantastico or SimpleScripts installations available.
-   No centralised theme or plugin repository.
-   No widget support - you currently have to modify PHP templates to
    modify your sidebar.
-   No automatic upgrade of core software, themes or plugins.
-   Tags are supported but not categories.
-   The plugin configuration forms are pretty basic.
-   Documentation for plugins is sparse.

# Community

The word 'community' is used a lot in the Habari community. I think it's
because those guys like recursion. Before I got involved, I was fairly
sceptical to be honest. However, having lurked, watched from the
sidelines and occasionally contributed, I can say that there is a
genuine sense of community on the Habari project. Contributions from
anyone and everyone are positively welcomed and encouraged. There's a
couple of mailing lists, an IRC channel, a Wiki and subversion
repository.

As just one example, I was staggered when I was initially playing with
Habari and mentioned in passing that the lack of a WYSIWYG editor was an
issue. Within 12 hours, Michael Harris had provided me with a TinyMCE
plugin !

Although I'm not a expert Web developer - I can't spell PHP or OO - I
must say, that everyone has been very helpful. There is no elitist
developer clique - Habari is very transparent and open and everyone's
contribution (no matter how seemingly small) is welcomed.

Once awake, Habari developers can also move fast. For example,
yesterday, the Cisco Web site was hacked and every single occurrence of
the letter 't' was lost. By the end of the day, Habari had a hilarious
plugin that also filtered every single 't' from a Habari blog.

# Summary

Don't take my word for it. Why not download Habari and try it for
yourself ? You might be surprised.
