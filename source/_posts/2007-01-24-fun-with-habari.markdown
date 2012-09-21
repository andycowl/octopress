---
date: '2007-01-24 21:27:13'
categories:
    - habari
title: fun with Habari
layout: post
comments: true
---
There's been a lot of
[excitement](http://www.brokenkode.com/archives/habari/) and
[discussion](http://www.bloggingpro.com/archives/2007/01/08/habari-a-new-blogging-tool/)
recently about the
[emergence](http://www.skippy.net/blog/2007/01/09/spread-the-news/) of a
new blogging platform called [Habari](http://code.google.com/p/habari/).

A brand new blogging platform being created from scratch with more
developers than actual blogs.The prospect of my blog being completely
broken by the nightly alpha build was an attractive one. A chance to
leave the comfort of a stable Wordpress environment with all those
themes and plugins. A change to live on the bleeding edge. I desperately
tried to resist but the lure was too strong. In the end, I simply
couldn't help myself.

The first step was to install
[subversion](http://subversion.tigris.org/) (much better name than
boring old
[CVS](http://en.wikipedia.org/wiki/Concurrent_Versions_System)) on
Bluehost following these excellent, idiot-proof
[instructions](http://blog.matharvard.com/2006/11/16/installing-subversion).

Then you check out the habari code. Or rather you don't. You get this
error.

    svn: PROPFIND request failed on '/svn/trunk'
    svn: No transaction named '26572b6d78b0be18? in filesystem 'habari'

No need to give up and commit Hari-Kari just yet. Consult the Habari
self-help [group](http://groups.google.com/group/habari-users/topics) to
discover there is a known
[problem](http://groups.google.com/group/habari-users/browse_frm/thread/6a6e87237e9201a0/00532b95a7212ee1#00532b95a7212ee1)
with the SVN repository on the Google server. When this problem is
resolved, I finally get to download the code.
Habari requires PHP5 and PDO (for database access). On Bluehost, the
following lines must be added to 'php.ini' to activate the PDO drivers
for mySQL.

    extension_dir = /usr/lib/php/extensions/no-debug-non-zts-20050922
    extension=pdo.so
    extension=pdo_mysql.so

I am already hosted on a server running PHP5 but if you don't have PHP5
on your server, open a ticket and Bluehost Technical Support will
promptly move you.

Create a(nother) mySQL database and account, edit the database
credentials in 'config.php', create an '.htaccess' file to handle
redirects and you're away. A simple installation page creates the
initial user account, the blog, tagline and the first entry.

Congratulations ! You are now the proud owner of a Habari
[blog](http://flickr.com/photos/70276096@N00/368029092/).

Obviously, this is an embryonic product but the
[Administration](http://flickr.com/photos/70276096@N00/368029093/in/photostream/)
page looks great and is fast and responsive. Although I'm not sure I
believe the traffic statistics !

The article
[editor](http://flickr.com/photos/70276096@N00/368029099/in/photostream/)
is a little minimalistic (especially contrasted with the recently
released WordPress 2.1) but perfectly usable.

A special word of praise about the Habari
[import](http://flickr.com/photos/70276096@N00/368029095/in/photostream/)
facility.

This connected directly to my Wordpress database and was blindingly fast
(less than 30 seconds) to import my WordPress blog. In fact, it was so
fast, I had to check that over 500 articles and 400 comments were indeed
correctly imported although I noted that tags weren't preserved.

It is not clear how you might import a hosted Wordpress blog where you
don't have access to the database but I am sure other data formats will
be added in due course.

Of course, there isn't the rich variety of themes and plugins available
for Habari (yet) and, while I will not be jumping ship to Habari from
WordPress today, I will certainly continue to follow developments with
interest.

Auto-discovery detected the availability RSD and Atom (but not RSS)
feeds.

If you're interested, here is my Habari
[sandpit](http://www.nbrightside.com/habari/).
