---
layout: post
title: speeding up Octopress generation
date: 2012-09-20 14:43:00
comments: true
categories: 
published: false
---
My site has 966 posts and 70 categories.

By default, Octopress re-generates the entire site - 
every single post, all the category pages, the archive pages 

On my Acer Aspire One (Intel Atom 1.66GHz) netbook, the
regeneration takes around 10 minutes.

There are a couple of options that can significantly reduce this time
and make the write/preview/edit iterative process more tolerable.

Firstly, you can use 'rake isolate' to move all other posts into a 
'stash' directory and simply process the newly created post.

    $ rake isolate['speeding']
    $ ls source/_posts/
    2012-09-20-speeding-up-octopress-generation.markdown

This reduces the generation time significantly to 18 seconds.

    $ time rake generate
    ## Generating Site with Jekyll
    unchanged sass/screen.scss
    Configuration from /home/andy/blog/octopress/_config.yml
    Building site: source -> public
    Successfully generated site: source -> public
    
    real	0m18.192s
    user	0m14.369s
    sys		0m1.368s

This is helpful for previewing the post as it will work on the site and
fixing typos but still the time consuming site generation needs be to done
prior to deployment.

    $ rake integrate
    $ rake generate

The second method is to use 'jekyll --limit-posts <N>'. I added a new Rake
task as follows:

    desc "Generate jekyll site (last 5 posts)"
    task :fastgen do
      raise "### You haven't set anything up yet. First run `rake install` to set up an Octopress theme." unless File.directory?(source_dir)
      puts "## Generating Site with Jekyll (last 5 posts)"
      system "compass compile --css-dir #{source_dir}/stylesheets"
      system "jekyll --limit_posts 5"
    end

This also significantly reduced the site generation time

    $ time rake fastgen
    ## Generating Site with Jekyll (last 5 posts)
    unchanged sass/screen.scss
    Configuration from /home/andy/blog/octopress/_config.yml
    Building site: source -> public
    Successfully generated site: source -> public
    
    real	0m59.061s
    user	0m40.995s
    sys		0m6.956s

Out of interest, I converted my content into Hyde (a static site 
generator written in Python).

Hyde generated the entire site in 9 mins 17 seconds. However, Hyde 
also supports incremental builds (which took just 34 seconds for a singke
new post).

I also tried raw Jekyll using Tom Preston-Werner 
[theme](http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html).
This took 2 minutes to generate the site in its entirety.
