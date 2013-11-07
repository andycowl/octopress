---
date: 2009-12-16 09:26:56
categories:
    - linux
title: why Linux will never succeed in the mainstream
layout: post
comments: true
---
I have been
[running](http://www.nbrightside.com/blog/2009/10/14/how-i-ditched-windows-and-embraced-gloria/)
Linux Mint for 8 weeks now and I've been delighted with it. My desktop
PC is fast and responsive and I am hugely impressed by the sheer
amount and quality of software available for Linux. Printing,
scanning, wireless networking, audio, DVD writing and all my USB
devices just work.

I don't have a
[virus scanner](http://www.nbrightside.com/blog/2006/07/22/so-farewell-then-nis/)
consuming memory and chewing clock cycles. I am no longer considering
a memory upgrade as Linux works fine with my paltry 512MB.

I have all my favourite applications available (Picasa, Chrome,
FileZilla, Emacs).  Linux is brilliant as a development platform and
installing software is easy. The Mint desktop looks great and with the
addition of Microsoft TrueType fonts, my display is razor sharp and
crystal clear.

Finally, and perhaps, most importantly, my wife has also embraced the
change. She now uses Thunderbird instead of Outlook Express, Firefox
instead of Internet Explorer, OpenOffice instead of Microsoft Word and
Excel and Nautilus instead of Windows Explorer. All of this was fairly
transparent and painless.

This fulsome praise all sounds like an advert for the wonders of
freedom loving, a precursor for some open source software evangelism
and a concerted attempt to convert the great unwashed to
Linux. However, there is an elephant sitting in the room. Right there
- in the corner.

The Ubuntu and Linux Mint (which is based on Ubuntu) distributions
have a 6 month development cycle. This means that a new release will
appear twice a year which is great because users know when the next
major release is due. In addition, minor fixes, security patches and
improvements are continually being pushed out via automatic
updates. What is not so good is the actual process of upgrading to a
major release which, in my opinion, is relatively complicated and
risky for an inexperienced, new user.

To be fair, Linux Mint are upfront and honest and
[describe](http://www.linuxmint.com/blog/?p=1144) the upgrade process
fully, the options available and the pros and cons of each approach.

> 'There is no guarantee that it will work for you. In fact, this
> [dist upgrade] is quite a risky process. If you're experienced and
> if you know how to troubleshoot and solve common Linux problems then
> you're probably OK. If you're a novice user we recommend you perform
> a fresh installation of Linux Mint 8 instead.'

David Marsden is an experienced Linux user and
[comments](http://www.nbrightside.com/blog/2009/12/09/inside-the-open-source-confessional#comment-25305185)
that he is comfortable performing Ubuntu upgrades, quickly and reliably
without losing his data. He claims that Ubuntu upgrades are quicker and
easier than applying a Windows Service Pack.

Of course, David's absolutely right. Even I managed to upgrade to
Linux Mint 8 at the first attempt without losing any of my user data
and even managed to preserve the configuration settings for all my
favourite applications. In fact, apart from the modified login screen
and wallpaper, the four people who use the Linux computer would have
struggled to notice the change, it was that transparent.

In fact, all I needed to do was: 

- When originally installing Linux, create dedicated, separate partitions
  for user home directories and data. I use '/home' (user directories)
  and '/data' (music, photos, documents).  

- Try to stick to the default Mint (and Ubuntu) software repositories.  

- Note down the additional applications and software packages you have
  installed.  

- Jot down user and group id's (copy '/etc/passwd' and '/etc/group').  

- Backup the home and data file systems (twice). Check the numbers of files.
  Check the size of the directories. Check the checksums. Check the backups
  are readable. Check the hidden directories. Check the backup disk isn't
  full. Check everything.  

- Burn the Install CD and install the 'upgrade'.  

- Preserve the '/home' and '/data' file systems, leaving all existing data
  intact. You did remember to jot down that '/home' is
'/dev/sda6' and '/data' is '/dev/sda8', didn't you ?  

- Move '/home/user' to '/home/user.backup'. Repeat for each user
  account. This ensures that Gnome and desktop related settings are
  re-created.  

- Re-create the necessary user accounts and ensure the
  user and group identifiers are the same as before.

- Selectively, copy the various, 'hidden' dot directories for
  applications (Rythmbox, Picasa, Pidgin) back into the user directory
  to preserve the application settings.

- Reconfigure wireless networking.  

- Reconfigure the printer.

- Remove the irritating fortune cookie from 'Terminal' (Mint only).

Now I am fairly technical and understand most of this. I have no problem
whatsoever doing all of this. David is correct - all of this is common
sense, quick to do and the whole process takes less than 2 hours. I
don't even mind repeating this process every six months because, as
David points out, I have a new, shiny operating system with new
features, additional applications, bug fixes and improvements.

What I have a problem with is trying to explain this whole, convoluted
process to my father. Or rather, rescuing his system after he has
failed to follow this process. Remotely.

Of course, my father has a few options available. If it ain't broke,
don't fix it - if Mint Gloria works fine than stick rather than
twist. Alternatively, he could use a distribution that automatically
performs rolling upgrades so his software is always the latest and
greatest.
