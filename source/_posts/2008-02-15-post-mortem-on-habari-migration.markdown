---
date: 2008-02-15 17:56:13
categories:
    - uncategorised
title: post mortem on the WordPress to Habari migration
layout: post
comments: true
---
> 'Those who forget the past are condemned to relive it.'

The migration of this blog from WordPress to Habari is mostly complete.

I had a few unexpected problems with a significant number of comments
and a handful of posts that contained mismatched HTML tags and didn't
display the corresponding page at all. So I had to painstakingly review
every single post with comments and correct the HTML by hand.

Inevitably, I forgot the lesson of my previous
[migration](../2006/09/30/from-wordpresscom-to-wordpressorg) and didn't
give any regular readers advance warning of the impending chaos or any
notice of the change in RSS feeds. That's not because I don't care, but
rather that I treat this blog as a chance to experiment with the
technology.

Worse, I didn't sever the link to Feedburner during the housekeeping so
peppered existing readers with duplicate, outdated articles.

So, whether you are a (non-Feedburner) subscriber who is wondering why I
have suddenly stopped blogging or an existing reader wondering I am
peppering your RSS feed with antiquated articles from yesteryear, I
apologise.

If I was embarking on the migration again, I would probably spend a
little more time checking the migrated content prior to trimumphantly
making the switch. However, when you have more then 750 posts and 1100
comments, that's easier said than done.

A useful tip to speed up the import process is to purge all comment spam
in WordPress prior to the import. Similarly, disabling the Habari
Pingback plugin also speeds up the import considerably.

Habari does not automatically ping Google of new content but Feedburner
has equivalent functionality.

Apart from fixing up a few posts containing locally hosted images, the
tedious administration tasks should now be complete so I can start to
enjoy the various features of Habari.

One example is the media silo with Flickr integration. On WordPress, I
often struggled with the seemingly simple task of inserting a photo into
a blog post. Initially, I thought I was just stupid but now I know why -
the interface was broken.

Owen Winkler created a
[screencast](http://asymptomatic.net/2008/01/15/2688/this-is-how-media-should-be-done-habari-style)
demonstrating the features of the Habari media silo with easy management
of locally stored images as well as seamless integration into media
services (Flickr, Viddler).
