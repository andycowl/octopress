---
layout: post
title: migration complete
date: 2012-09-17 20:35:00
comments: true
categories:
    - blogging
    - octopress
---
The last ever migration of this blog is now complete. This blog is now 
powered by Octopress and is a statically generated site hosted on Amazon S3.

All posts have been migrated from HTML to Markdown and every single
permalink (all 954 of them) have been painstakingly checked,
rationalised and consolidated.

To achieve this, I simply generated a sitemap of the Drupal site and
compared this with a sitemap for a test site using Octopress after the
data migration.

This unveiled a few issues that needed to be fixed:

- Posts with the identical slug had a numeric suffix which was often
  incorrect or inconsistent after being mangled by various blogging
  platforms.
- Some posts had the incorrect publication date (due to timezone shift) so
  were typically a day out.
- Some posts were just missing after the 'exitwp' script was used to
  migrate from WordPress to Hyde a year ago.
- Hyde uses a slighty different header format from Jekyll but 'sed' was able
  to fix this.
- Jekyll uses a trailing slash for each post URL whereas Drupal doesn't.
- Amazon S3 requires the canonical URL to be www.site.com with a
  automatic redirect to point site.com to the correct URL with the www
  prefix. Previously, I favoured the naked URL 'site.com'.

The permalink structure is now 'site.com/yyyy/mm/dd/hello-world/'
(with a trailing slash) and will never change. Ever. Again.

I also resurrected some orphan Disqus comments by using the URL mapping
tool which works brilliantly and helped identify comments associated with a 
non-existent URL.

I am generally delighted with Octopress as it bundles so many features I 
need for a blog (Disqus, Google Analytics etc) and is much easier than using
raw Jekyll.

The only vague disppointment is the fact that the entire site is re-published
even after a single post has been added. On my Aspire One netbook, a 
'rake generate' takes 8 minutes. I might try the same process on my work 
laptop (faster, newer Lenovo Thinkpad) for comparison purposes.

Inevitably, there is a Jekyll fork that supports incremental deployment
but the Octopress author is (understandably) reluctant to base Octopress
on a fork that could quickly become stale.

Publishing the site to Amazon S3 is slightly better but, as Atom feeds 
get regenerated for categories, this still takes around 4 minutes.

Still, maybe this lengthy publishing process will encourage me to
properly preview and get my posts perfect before publishing.

I am not sure about having all 954 posts stored in a single directory;
I would rather have a sub-directory for each year but then again,
being able to quickly search all posts for a keyword using 'grep' is
useful.

I decided to keep the Feedburner integration for now (to avoid losing my
two readers).

The use of a statically generated site also killed one of my favourite 
features - my legendary and award winning rotating tagline. Oh well.

Blogging like a hacker but publishing like a snail with a heavy weight
strapped to his back.
