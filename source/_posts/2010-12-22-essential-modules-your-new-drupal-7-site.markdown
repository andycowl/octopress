---
title: essential modules for your new Drupal 7 site
layout: post
comments: true
categories:
    - drupal
date: '2010-12-22 12:53:00'
---
People never ask me 'Hey Norman - what modules have you installed thus
far on this wonderful Drupal 7 powered blog ?'

- [Archive](http://drupal.org/project/archive) - monthly archives.

- [Disqus](http://drupal.org/project/disqus) - although I had some
    problems with this module so I am currently using a simple Disqus
    block.

- [Global Redirect](http://drupal.org/project/globalredirect) -
    ensures that 'node/1234' is redirected to '2010/21/22/blog-post'.

- [Google Analytics](http://drupal.org/project/google_analytics) -
    mandatory to torment myself over visitors statistics using GA.

- [Markdown Filter](http://drupal.org/project/markdown) - although I
    haven't fully embraced this yet. Old (raw HTML) habits die hard.

- [Mollom](http://drupal.org/project/mollom) - Disqus provides
    built-in spam protection but I use [Mollom](http://mollom.com) to
    guard the user registration and contact forms which is very
    effective.

- [Pathauto](http://drupal.org/project/pathauto) - to map Drupal nodes
    to my date based permalink structure.

- [Token](http://drupal.org/project/token) - required by Pathauto

- [Tagadelic](http://drupal.org/project/tagadelic) - marvellous,
    configurable, graphic 'Tags' page to aid
    [Bill](http://www.nbrightside.com/blog/2010/12/18/crm-bloggers/)'s
    navigation of this site.

- [Wysiwyg](http://drupal.org/project/wysiwyg) - evaluating various
    options but not found
    [nirvana](http://www.nbrightside.com/blog/2010/12/22/marketing-plan-drupal-7-launch/)
    as yet.

- [XML sitemap](http://drupal.org/project/xmlsitemap) - produces
search engine friendly sitemap.

I also modified the 'page.tpl.php' template to reinstate my wonderful,
award winning
[rotating](http://www.nbrightside.com/blog/2007/01/29/how-to-rotate-taglines-on-your-wordpress-blog/)
tagline (or slogan in Drupal terminology).

Curiously, I haven't enabled the D7 core 'blog' module as I don't need
multi-user blogs. Each post is simply an 'Article'.
