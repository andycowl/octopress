---
date: '2005-12-13 23:23:37'
categories:
    - rss
title: comparison of RSS readers
layout: post
comments: true
---
More recently, as I have started to scan more blogs and newsfeeds, I
wanted a quicker, more efficient way of scanning through my growing list
of RSS sources so I investigated a few alternative RSS readers or
aggregators.

It was quite interesting to see how your own blog looks displayed in a
variety of different formats. All that self inflicted torture over the
templates, the CSS stylesheets, the sidebars, the fonts, the bulleted
lists is potentially meaningless when your reader might be reading a
simple text feed with more control over the presentation than you, dear
author.

The main things I need from an RSS reader are:

-   Newspaper reading (for a group of blogs in chronological order)
-   Easy to manage related feeds into a collection of groups
-   Able to scan all (or a subset of) feeds for new articles
-   OPML import must preserve folder structure and merge feeds correctly
-   To be able to read comments in the reader
-   To be able to configure feeds on an individual and group basis
-   Mark feeds as updated when someone comments on an article
-   Personalised feed discovery/recommendation engine when you have read
    everything in the blogosphere
-   Clippings for interesting articles
-   Able to synchronise state of feeds (articles read/unread) from PC
    with Web based service
-   Integration with Web browser to quickly add new blogs and feeds
-   Support for newsgroups (and potentially email)
-   Free (or cheap)

Originally, I was using
[Thunderbird](http://www.mozilla.com/thunderbird/) which was fine for a
handful of blogs but is not able to read a group of blogs in newspaper
fashion. This is quite important as in the Oracle community, people are
often posting or reacting to earlier posts by others in the same closely
knit community.

I also tried [Sage](http://sage.mozdev.org/) but that had the same
problem (no newspaper support) although I really liked the
auto-discovery feature where you can tell Sage to scan for feeds on the
current Web page and subscribe with a single click.

I then tried [bloglines](http://www.bloglines.com/) as I already had an
account, it appears to have been around the longest and because lots of
people seem to use it and like it. However, for reading a group of
blogs, bloglines lists the articles blog by blog and not in
chronological order. Also, when importing OPML, bloglines creates
duplicate categories instead of intelligently merging them. I thought
the bloglines interface was generally confusing, new articles were not
immediately visible, reading was generally slow and organising feeds
into folders was tortuous in the extreme. Bloglines supports OPML import
but with this caveat - 'Imported sites may take up to two hours to
update'.

I then tried another Web based RSS aggregator,
[Newsgator](http://www.newsgator.co.uk/) which intelligently merged my
feeds and preserved the existing folder hierarchy. Some other RSS
readers just loaded the OPML into a long, flat list. Newsgator had a
clean, intuitive interface, supported groups of feeds and was quick.
Also, it was server based so the feeds and articles are portable across
any computer. I liked the clean, simple interface with the emphasis on
the text of the article. Newsgator also supports Clippings for articles
of interest.

[Omea](http://www.jetbrains.com/omea/reader/) from Jetbrains- a polished
professional .NET application. Excellent drag'n'drop interface for
quickly organising feeds into categories. Fast performance, easy to
understand, rich functionality. Probably my favourite desktop RSS
reader. Omea was the only reader to display comments in the reader. In
the Oracle blogging community, the comments are important. The Omea
Firefox plugin is not supported for Firefox 1.5 but will be by the end
of 2005 (prompt response to feedback). The only slight moan is the
startup and closedown time is long enough to merit a progress bar.

[Pluck](http://pluck.com/) is another Web based server which looks nice
(Desktop, Web) with synchronisation but crucially missing reading feeds
in a single group. Lots of advertising from their sponsors consuming
valuable screen estate.

[RSSOwl](http://www.rssowl.org/) - OpenSource. Clean interface. Import
of my OPML file ran so blindingly fast I missed it. Really fast
navigation and sensible interface design. Uses AmphetaRate for
personalised recommendations and feed discovery. Instant startup and
shutdown.

[Feedreader](http://www.feedreader.com/)- free, simple, lightweight RSS
reader but refuses to delete a folder unless you delete all 99 feeds
therein.

[Rojo](http://www.rojo.com/) is another server based aggregator with a
lot of emphasis on Web 2.0 (tags, contacts) and minimalist, modern
design but the article content seems almost secondary.

Google [Reader](http://www.google.com/reader/things/tour) - pleasant
enough with familiar Google style look and feel but the interface and
functionality seems a little too simplistic once you have used other
desktop RSS readers.

I also briefly looked at [RSSBandit](http://www.rssbandit.org/)(which
seemed to be unique in that it supported synchronistation using
FTP/WebDAV) and [SharpReader](http://www.sharpreader.net) but by this
time I was suffering from RSS fatigue although Wikipedia had a tempting
[list](http://en.wikipedia.org/wiki/List_of_news_aggregators)
of even more candidates.

For desktop readers, I really liked Omea (apart from the silly icon) and
RSSOwl (very nice icon) but after a few days, I realised that a unified
source of my feeds and the status of articles was more important than
the wealth of features available in a desktop RSS client so I decided to
stick with NewsGator which was the most impressive Web based service and
met most of my requirements.

PS. Oh no. I forgot the most obvious tool for all my mail/news/RSS needs
- [Gnus](http://gnus.org/).
