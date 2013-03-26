---
date: 2006-01-27 17:52:11
categories:
    - uncategorised
title: curious case of the missing spool file
layout: post
comments: true
---
Bit of a ghostly theme today.

One great aspect of my job is that I write SQL scripts that are reviewed
and executed by other people. This suits me just fine. The less work for
me, the better.

Obviously, I never add 'spool off' to the tail of a SQL\*Plus script.
This is a whole ten characters to type (including newline). Multiply
this by all the SQL scripts you might produce in a lifetime and just
think of how much time that would waste. In any case, everyone knows
that 'exit' implies a 'spool off' anyway.

A while ago, a friendly Oracle DBA ran my SQL script and called me to
tell me it had finished. I asked him to email the spooled output for
review. He said there was no spooled output generated. I asked him to
check the current directory (no), %ORACLE\_HOME%\\BIN directory (no),
the Recycle Bin (no), search all local hard drives for 'patch\_prod.lst'
(no).

I asked him if the SQL\*Plus session was still open and, if so, to
simply type 'spool off'. He replied that the SQL\*Plus session had
already been ended. I was puzzled until I asked 'Is this the GUI version
of SQL\*Plus on Windows ?' 'Yes', he replied. 'Did you end the session
by hitting the 'X' button ?' 'Yes'.

So, it turns out that the spool file is lost when Windows SQL\*Plus is
terminated using the 'X' button. I didn't know this fact because I
normally use 'exit' to close any SQL\*Plus session on Unix, Dos Command
Window or Cygwin.

I had a suspicion that this gentleman was privately quite enjoying this
moment and my discomfort so I said 'Hmm - that's a shame. I really
wanted to check the spool to ensure that I had deleted the correct 7.9
million invoices from production'.

Later on, I asked myself what type of ~~mindless idio~~ person uses 'X'
to terminate a Windows SQL\*Plus session.

Then the answer struck me. A
[lazy](http://www.nbrightside.com/blog/2006/01/27/unix-for-lazy-people/)
one. Like me.
