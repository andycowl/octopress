---
date: 2008-04-11 13:59:33
title: the thorny issue of blog comment ownership
layout: post
comments: true
categories: blogging
---
A couple of Oracle bloggers
([Laurent](http://laurentschneider.com/wordpress/2008/04/disqus-comments.html)
and [Yas](http://oracletoday.blogspot.com)) are experimenting with
Disqus on their blogs but Tim Hall has expressed some
[reservations](http://twitter.com/oraclebase/statuses/787098263) about
committing his blog comments to a hosted service outside of his control.

Jake Mckee is also taken by Disqus but eloquently expresses similar
[concerns](http://disqus.disqus.com/major_concerns_with_data_ownership_presentation/)
about 'data ownership and presentation'.

I understand (and used to vehemently share) both Tim and Jake's
reservations. It does seem perfectly natural to want all your blog
content stored in your MySql database on your server. What if Disqus
servers are slow and unresponsive or worse, even down ? Your blog would
be accessible but your comments wouldn't. What is Disqus isn't around
next year ?

How do you unlock your comments from the Disqus repository and migrate
them back into your blog ? How do you backup your comments ? There is an
export utility but, as Jake points out, currently no easy way to import
the data back into the blog.

Having comments hosted on your own blog is entirely logical. Obviously,
blog comments belong with the blog content. Without the associated
comments, the blog is like a half-written book.

You manage the blog comments. You back them up. You moderate them. The
blog comments obviously belong to you. All of them. Yes - even those
1,729 spam comments, you have to scan for the odd 'false positive'.

However, if I leave a comment on a Harry's disqus enabled blog, my
comment is displayed on the original blog. The comment text that I typed
in is no longer stored in Harry's database table for 'comments'. Worse,
my comment is now simultaneously displayed on a Disqus community forum
without my prior knowledge or approval.

But who actually owns that comment on Harry's blog. I thought of the
words and typed them into the comment box. Do I own the comment ? Or
does Harry ? Does it even matter ?

As an aside, having used the service for a week, I no longer view Disqus
purely as a comment tracking service. I view Disqus as a 'content
output' tracking service.

For example, I am now starting to ask idiotic questions and log issues
on the Disqus forums. These posts are not clearly not comments (but
original content) but I still want to track them (and, more importantly,
responses to them) in my Disqus dashboard alongside my blog comments.
