---
date: '2008-04-10 10:02:59'
categories:
    - uncategorised
title: a lesson in software design
layout: post
comments: true
---
This blog used to run on [WordPress](http://wordpress.org/) but now runs
on [Habari](http://www.habariproject.org/en/) which is a blogging
platform currently being developed by a set of very talented people.

Undoubtedly, the number of developers and users running Habari is far
fewer than the massive community using WordPress. Similarly, the number
of available [themes](http://wiki.habariproject.org/en/Themes) and
[plugins](http://wiki.habariproject.org/en/Available_Plugins) available
for Habari is relatively small (albeit growing daily) and dwarfed by the
vast, almost bewildering wealth of add-ons and the extensive range of
themes available for Wordpress.

However, this isn't a bad thing because it forces anyone contemplating a
migration to Habari to think carefully about the core plugins that are
truly essential to adminster your blog and valuable for your readers.

One such plugin (for me) was an equivalent of the Wordpress sitemaps
[plugin](http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/).
Rick Cockrum published a excellent
[summary](http://sagrising.cockrumpublishing.com/sitemaps-for-google) of
why an automatically generated sitemap is useful.

When I first configured and activated the sitemap plugin for Habari,
nothing happened. No sitemap file was generated. Initially, I thought
that maybe the sitemap was only generated after a post was published. So
I published a new post. Still nothing happened..

I posted a enquiry on the Habari users mailing
[list](http://groups.google.com/group/habari-users/browse_thread/thread/863f82a5f4945ddd/99b4e76e3edd4d05?lnk=gst&q=sitemap#99b4e76e3edd4d05).
In an effort to 'help' the Habari community, I even opened a
[ticket](http://trac.habariproject.org/habari-extras/ticket/2) (bug
request).

Then, I made an amazing discovery when an anonymous author was forced to
waste some of his valuable time to close my 'bug report':
> The plugin is not intended to generate a file, rather to serve the
> sitemap xml document when requested.

So, it transpires that the Habari sitemaps plugin doesn't actually
generate a file. The sitemap is simply a
[URL](http://www.nbrightside.com/blog/sitemap.xml) which is dynamically
built, on request.

Now I believe this is a much neater solution. No need for the user to
specify where the file should be placed. Less work for the plugin to do.
Much cleaner. Much simpler. Credit to the author, [Andrew da
Silva](http://andrewdasilva.com/).

The lesson I learned was that just because something has always been
done that way doesn't necessarily mean it can only be done that way.

P.S. If you're worried about the performance impact of needlessly
rebuilding a sitemap, on the fly for 234,432 entries, don't worry - some
clever individual has already implemented a cache for the sitemap data.
