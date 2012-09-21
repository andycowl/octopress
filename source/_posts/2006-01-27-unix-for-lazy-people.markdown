---
date: '2006-01-27 17:02:39'
categories:
    - uncategorised
title: Unix for lazy people
layout: post
comments: true
---
I am a very efficient lazy person. I don't like to type seven characters
when two will suffice. I think Unix is a fantastic development
environment. However, the overly long, verbose commands irritate me
slightly. So I use the following aliases and shell functions

> a = tail -f ${ORACLE\_HOME}/rdbms/log/alert\_PRD.log\
>  l = ls\
>  ll = ls -l\
>  up = cd ..\
>  x = rm -fr \*\
>  z = wall 'Anyone fancy a quickie after work ?' [disciplinary action
> pending]

One of the happiest days of my life was when I discovered the tab
completion feature in the GNU bash shell and the environment variable
$OLDPWD.

When I used to work for Sequent (with an operating system called
Dynix/ptx devoid of applications), I used to carry the GNU tools and
utilities around on a cartridge tape. Unix and GNU tools were brilliant
but the best development tool is Emacs.

The second happiest day of my life was when I discovered Emacs' dynamic
abbreviation feature. If you had had to suffer the pain of typing
'supercalifragilisticexpialidoceous' once, then subsequently, you could
just type 'sup' following by ESC-/ and Emacs automatically, magically
completed the word. This was without doubt the best feature in Emacs.
Well apart from Gnus, VM, font-lock, C-mode, dired, support for shell,
grep and cc. Oh and apart from being able to edit text files.
