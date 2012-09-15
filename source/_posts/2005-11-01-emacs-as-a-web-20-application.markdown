---
date: '2005-11-01 17:07:01'
categories:
    - uncategorised
title: Emacs as a Web 2.0 application
layout: post
comments: true
---

When I started this blog, I simply composed the posts in the Blogger
editor which was adequate. Until one day, when I lost the complete text
of a draft posting due to finger trouble. As I laboriously re-typed my
masterpiece, I wished I had a blog editor with the infinite undo,
auto-save and all the other features of Emacs.

However, composing the drafts in the Blogger editor was useful as I
could edit drafts from anywhere and then publish the blog very easily.

I then looked at [Writely](http://www.writely.com/) and
[Writeboard](http://www.writeboard.com/) which fit the bill but are
really intended for collaborative writing on the Web and don't have any
integration with Blogger.

The [Qumana](http://www.qumana.com/) Blog Editor also looked very
interesting as it includes integration with Blogger and built-in support
for Technorati tags but still was essentially a cut-down Word lookalike
interface.

Then I realised I had the perfect blogging editor sitting right under my
nose all the time - Emacs. I can use all of Emacs powerful text editting
features and simply save the draft text on my Web server using ange-ftp.

Adding Technorati tags is easy using Marshall Kirkpatrick's
[BlogTags](http://marshallk.com/technorati-tag-troubleshooting)
bookmarklet.

The only thing Emacs is missing is the ability to seamlessly publish to
Blogger and another minor irritation is the fact that some whitespace
gets jumbled when pasting the text into Blogger.

However, Emacs being Emacs, some kind person has created a Lisp package
([weblogger.el](http://elisp.info/)) that provides integration with
Blogger although I haven't actually tried it yet.

And please don't ask why I don't use the Blogger for Word
[extension](http://buzz.blogger.com/bloggerforword.html). I can simply
think of nothing worse. I wouldn't wish it on my worst enemies.
