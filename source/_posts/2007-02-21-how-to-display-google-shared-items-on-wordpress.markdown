---
date: '2007-02-21 02:35:47'
categories:
    - uncategorised
title: how to display Google shared items on WordPress
layout: post
comments: true
---
This [post](http://ocaoimh.ie/2007/02/20/writing-perl-the-vista-way/)
put me in a quandry. I found the video very amusing so I was torn
between leaving a grateful comment on [Donncha](http://ocaoimh.ie/)'s
blog and awarding the article a (Gold) 'Star' in Google Reader.

But if I only did that, my friend and a couple of (ex-) colleagues who
might appreciate the joke may miss it. That would be very selfish.
Forgive me Father, but briefly, I toyed with reverting to Web 0.1 (beta)
and sending an mass email to 'Friends/Ex Colleagues'.

I compromised by posting an article on my blog referring to Donncha's
article so he sees the pingback and gets the credit for spotting the
video. So Donncha's happy, I'm happy, everyone's happy.

Well - not exactly because I had to write some additional words on my
article to justify its existence. This is
[exactly](http://www.nbrightside.com/blog/2007/02/18/resisting-the-lure-of-google-reader/)
the situation that Google Shared Items is for.
> These items might be interesting or useful snippets of information
> quickly noted in passing which I wouldn't necessarily blog about.

I just want to display a RSS feed on my blog for articles like this that
I find interesting, amusing or thought provoking.
This is trivial to implement in WordPress so I simply grab the feed URL
for 'Shared Items' from Google Reader and create an RSS widget to
display 'What I am currently reading' on the sidebar in this blog.

Unfortunately, that didn't work. The feed and article names were
displayed but the formatting of the links was broken on WordPress 2.1.
Curiously, I tried the same configuration on a test
[blog](http://nbrightside.wordpress.com/) on hosted Wordpress and it
worked fine.

A little research revealed that the WordPress RSS widget does not appear
to
[support](http://en.forums.wordpress.com/topic.php?id=1249&replies=11#post-6531)
Atom 1.0 format (which is precisely the format used by Google Shared
Items).

No problem. Just create a [Feedburner](http://www.feedburner.com) feed
and see if that works. This should automatically, dynamically and
intelligently convert the feed format into a format the recipient can
digest. Unfortunately, it doesn't. Sigh. Give up in disgust and make a
note to ask in the WordPress/Reader forums.

Only you can't give up. You want this to work and this is now a
challenge.

Read the Feedburner
[FAQ](http://forums.feedburner.com/viewforum.php?f=7&sid=6a8a899de22627714719f9a4565fe228)
which implies that SmartBurner is what you need. This automatically,
converts the original feed format for the consumer on the fly. However,
SmartBurner is enabled by default so I wonder why it isn't working.

Examine the configuration of SmartBurner. By default, the output feed
preserves the format of the original feed (Atom 1.0 in this case).
However, it is easy to force conversion to different format (RSS 2.0) by
setting the 'Content-Type'.

Revisit the WordPress RSS widget. Success !

So, after all that time and effort, I sincerely hope you both enjoy my
'Gooogle Shared Items' feed.
