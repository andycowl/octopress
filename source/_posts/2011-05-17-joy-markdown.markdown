---
title: the joy of Markdown
date: 2011-05-17 22:27:58
categories: blogging
layout: post
comments: true
---
For many years, I have flitted between a plethora of different
blogging platforms mainly out of curiosity, boredom, frustration or
occasionally sheer bloody mindedness.

I have lost draft posts in WordPress, Tumblr, Posterous and Habari due
to network glitches, browser crashes, my own stupidity and a broken
AutoSave plugin.

One night in a lonely hotel room, the realisation suddenly dawned on
me that my frustration with all of these blogging platforms was that I
spent a lot of time in the post editor and none of the post editors
did what I wanted.

Whether you use Tumblr, Posterous, WordPress, Habari, Drupal, Movable
Type, Django-Mingus or another esoteric blog platform, you normally
find yourself composing content in a Web browser within a blank text
box writing raw HTML.

Alternatively, you might be using some WYSIWYG editor that helps you
insert the appropriate HTML tags.

There are a few things wrong with this scenario as far as I'm
concerned:

- I don't particularly want or need to learn and remember HTML
tags. People ask why there's a HTML reference card in the lavatory.

- WYSIWYG editors can produce monstrous, bloated, ugly and sometimes,
as a bonus, invalid HTML.

- I don't really want to use a WYSIWYG editor. I have invested time
learning to scratch the surface of the functionality provided by the
one true editor - Emacs.

After reading, but steadfastly ignoring multiple articles about
[Markdown](http://daringfireball.net/projects/markdown/syntax) for
many months and making a mental note to investigate further, I finally
set aside 10 minutes to do so.

Without being over dramatic, Markdown has changed my life. For the
better.

Markdown is a markup language ('geddit ?') that uses a easy to read
notation as shorthand for HTML.

The beauty of the Markdown syntax is that text written in the Markdown
format is perfectly readable. This makes reading, scanning, reviewing
and editing text much easier and quicker.

I'm a simple man with simple tastes so my blog posts primarily use
paragraphs, lists, hyperlinks and the very occasional image.

A hyperlink in Markdown looks like

    [Markdown](http://daringfireball.net/projects/markdown/syntax)

A blank line indicates the end of a paragraph. Again, this is how we
compose text in emails and is so much more natural than

    </p>
    <p>

The HTML tags above are a preformatted block. In Markdown, this is
simply denoted by a 4 character indent.

To *emphasise* a word, you simply enclose the word in asterisk
characters which is what a lot of luddite, bearded Unix geeks tend to
do anyway. Using two asterisk characters will result in **bold** text.

Similarly, if you want to force a line break you simply append two
blank spaces to the end of a line.

Code blocks are introduced by a single quote.

`    printf("Hello World\n");`

Bulleted lists are introduced by a hypen or asterisk character so a
list of my favourite fruits would be written as:

    * Apples
    * Oranges
    * Pears
    * Bananas

Ordered lists use numbers and look like, well, ordered lists.

    1. Giggs
    2. Scholes
    3. Cantona

Quotes are also easy and intuitive introduced by the '>' character.

> Are you still doing what you did 5 years ago ?  
> Yeah ? Well don't make a career out of it.  
> Mark E. Smith (The Fall)  

Most blogging platforms either provides native Markdown support or has
plugins available to provide such functionality.

However, the real beauty of Markdown for me is that Emacs inevitably
has a powerful Markdown mode that provides font colouring, additional
menu shortcuts for the common constructs and a feature to examine the
generated HTML in an Emacs buffer or preview the results in a Web
browser.

<a
href="https://picasaweb.google.com/lh/photo/sykhGbfuwfI5NUo4vc_yTg?feat=embedwebsite"><img
src="https://lh6.googleusercontent.com/_l2uGy1RGCiE/TdLzq1bo1dI/AAAAAAAABuk/ibt1UdW_VpY/s640/Markdown-Emacs.png"
height="640" width="614" /></a>

This is incredibly useful for me as I can quickly check the generated
HTML and even validate my blog posts. Validating my posts wasn't easy
before as the addition of the Disqus Javascript code generates a
number of warnings from the W3C validator.

<a href="https://picasaweb.google.com/lh/photo/grEBQVK_F7elXpEFtyQNEQ?feat=embedwebsite"><img src="https://lh3.googleusercontent.com/_l2uGy1RGCiE/TdLz1_fNSxI/AAAAAAAABus/LksKcNKG7_Q/s640/Markdown-Preview.png" height="388" width="640" /></a>
