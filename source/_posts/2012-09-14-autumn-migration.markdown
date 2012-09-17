---
layout: post
title: "Autumn migration"
date: 2012-09-14 14:45
comments: true
categories: [blogging]
---
My Web hosting package (provided by Bluehost) expires in October. As
this blog is essentially dead (the last post was a one-liner 8 months
ago), the sensible and logical thing to do would be to kill the blog
and save £5 a month.

Originally I
[purchased](http://www.nbrightside.com/blog/2006/10/24/new-dawn-fades/) the
domain name 'nbrightside.com' and the Web hosting for a couple of
reasons:

- I wanted to use self hosted WordPress without some of the restrictions imposed by WordPress.com
- I wanted to play with some of the packaged applications offered by Bluehost.
- I wanted access to a Linux environment, mainly to build, install, experiment with various open source software tools and packages which needed a LAMP stack.

It's really questionable whether I need to maintain this Web presence
but, on balance, I'd like to keep the site alive for a little longer.

WordPress, Drupal, Habari et al are all fantastic blogging platforms
but rather overkill for this simple, single user blog. For a while, I
have been fascinated and trying to resist the temptation of the
simplicity and power of static Web site generators like
[Jekyll](https://github.com/mojombo/jekyll) and
[Hyde](http://hyde.github.com/).

Last year, I even ported the complete contents of this Drupal 7 blog
to a locally installed version of Hyde and labouriously fixed up lots
of hyperlinks just so the Markdown looked neater.

The completely logical and sensible decision would be to simply
resurrect this Hyde environment, re-sync the last couple of one liner
blog posts, configure a automatic redirect and use rsync to upload
this site to some alternative, cheaper (or free) Web hosting.

So, I have decided to use [Octopress](http://octopress.org/) and
[Amazon
S3](http://aws.typepad.com/aws/2011/02/host-your-static-website-on-amazon-s3.html)
to host this humble, annually updated blog in the future. I may be
able to reuse some of the Hyde content with judicious use of sed to
convert the meta data in the header sections or I may just start
afresh.

No - I am no mad.
