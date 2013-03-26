---
date: 2009-06-02 22:02:08
categories:
    - uncategorised
title: how I lost my Linux virginity
layout: post
comments: true
---
This week I am attending an excellent training course on Linux System
Administration at Oracle's offices in Moorgate, near London. The course
is given by [Harald van
Breederode](http://prutser.wordpress.com/about/), an excellent trainer
who manages to combine deep technical, real-life expertise with a rare
ability to explain complex things in simple terms with a sense of
humour.

As is traditional, each attendee was asked to give a precis of his/her
job role, star sign, experience with Oracle, most embarrassing
professional moment, any exposure to Unix (Linux), favourite band and
expectations for the course.

Although I have used various flavours of Unix since embarking on a
degree in Computer Science at Warwick University in 1981 and then
working for a variety of software houses, my first experience of Linux
didn't come until December 1999.

At that time, I was working at Sequent and had ported a lot of GNU
software utilities and tools to Dynix/ptx so I had an interest in GNU
software. In the midst of the dot com boom, I had responded to a job
posting on Usenet and subsequently been interviewed for a Oracle
developer role at a small UK Internet company. The embryonic company had
less than 10 employees and provided marketing reports, segmentation and
campaign management based on click-stream analysis.

If successful, my first task would be to migrate 15 production Oracle
databases from Oracle 8.0.5 on Windows NT to Oracle 8.1.6 on Linux.
After the interview, I figured it might be prudent to actually
familiarise myself with Linux and how to install and configure Oracle on
this platform.

Back then, our house possessed a single desktop computer running Windows
95 so the first step was to obtain a copy of the Linux operating system.
I sent off the princely sum of &pound;3 (including postage and packing) to the
wonderfully named [Linux Emporium](http://www.linuxemporium.co.uk/)
(which I am pleased to see survives to this day) and waited patiently
for my CD to arrive in the post. Norma raised her eyebrows at a blank CD
anonymously packaged in a plain brown envelope but still.

This method of Linux distribution seems a little quaint and
old-fashioned when, nowadays, you can download and burn a Live CD in a
matter of minutes but back than I had a dial-up 56K modem and
downloading a full Linux distribution would probably have taken 3 weeks.

As I recall, I had sole use of the PC back then (Norma didn't use it for
anything) so I didn't have to bother with a dual-boot system or any
pesky backups so I simply inserted the CD, immediately made a pigs ear
of partitioning the hard disk, inadvertently formatting it in the
process and proceeded to install [RedHat](http://www.redhat.com/).

Given that I knew that my prospective employer had already selected as
SuSE the preferred platform (they offered a bundled support package for
Oracle and SuSE), the choice of RedHat seems a rather odd decision. I
can only assume it was because I had already seen more FAQ's, HOWTO's
and community support available for RedHat than SuSE. Although, knowing
me, the fact that the RedHat CD was 50p cheaper than SuSE can not be
ruled out.

Obviously the years, coupled with the drink and drugs, have taken their
toll, so my memory is slightly hazy after 9 years but I do remember a
tinge of excitement as white text on a black background announcing
system messages detecting (or more likely failing to detect) various
elements of hardware and peripherals rapidly scrolled past my eyes.

Eventually, I was surprised and delighted to see a desktop complete with
a login box rendered on my screen. However, I was equally nonplussed but
not wholly surprised when my mouse didn't work. Now although 'Tools are
for fools', the Oracle 8i installer is normally run as a GUI (Java)
application so, unfortunately, I had to resolve this issue.

Not for the first time, I was now completely stuck as I only had one
computer. My impetuousness meant I couldn't simply boot back into
Windows to research the problem so I did 'Altavista'ed at work, printing
out a wealth of similar looking issues and resolutions and started
troubleshooting.

Norma was a little suspicious of me being locked away for hours on end,
messing around on the computer with my new shiny, blank CD but
graciously ignored the alternating screams of anguish and ecstasy
emanating from the bedroom.

I soon got comfortable with booting to a command line with no Windows
('init 3') and actually managed to configure a device driver for my
mouse and I believe I may have even recompiled the kernel. Not because I
needed to but well, because I could.

When I eventually got movement out of the rodent and was able to log in,
it was incredibly satisfying.

After that, installing Oracle was fairly straightforward as I had
already used Oracle on Solaris. However, I recall running Oracle in my
environment was a rather different matter as I was perilously close to
the absolute minimum specification (64MB of of physical memory) required
for Oracle 8i.

All of this work paid dividends as I was summoned back for a second
interview and I was able to talk a little more knowledgeably about the
potential issues and pitfalls of a Windows to Linux Oracle migration.

Needless to say, this was rather a verbose answer for the course so I
just said 'I once blagged a job as an Oracle DBA managing Oracle 8i on a
handful of self-built servers running SuSE.'
