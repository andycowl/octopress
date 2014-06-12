---
date: 2006-10-06 16:59:21
categories: oracle
title: is it really worth it ?
layout: post
comments: true
---
I have never heard customers complaining about the abysmal performance
of the Oracle pseudo-table DUAL. Nor have I ever encountered a real-life
performance issue that was attributed to slow access to DUAL. Rarely
have I been asked to tune an SQL statement that was sub-second and took
a massive 3 consistent gets.

Another reason I won't be using this
[tip](http://searchoracle.techtarget.com/tip/0,289483,sid41_gci1213636,00.html)
is that, a few years ago, I did encounter some unexpected, weird, obtuse
behaviour in an Oracle system that completely baffled everyone. This was
eventually tracked to the presence of not one, but two rows in the DUAL
table.

Better to let sleeping dogs lie.
