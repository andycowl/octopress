---
date: '2009-10-14 13:16:55'
categories:
    - uncategorised
title: how I ditched Windows and embraced Gloria
layout: post
comments: true
---

After the Yak was
[shaved](http://nbrightside.com/blog/2009/10/14/yak-shaving), we
suddenly realised we had missed 'Football Focus' and proceeded directly
to the casting couch.

I fully appreciate that evaluating a Linux distribution is just 18
minutes and 32 seconds isn't probably sufficient to probably gain a full
picture of the capabilities (or otherwise) of any software let alone a
full blown operating system.

However, this superficial, high level, cursory review of all the distros
below is useful as it solely focusses on the installation process, ease
of use - both of which are key for prospective Linux users; particularly
those people who might be looking to migrate, as in my case, from
Windows.

## Ubuntu (Hardy Heron)

As I have installed Ubuntu before, this was fairly straightforward. As I
now had the full 80GB disk to play with, I allocated four 20GB
partitions (root, home, apps and data).

The installation prompted for my timezone, keyboard type and was pretty
quick. Once I rebooted, I was able to configure my Linksys wireless
adapter and access the network. As I was using a Ubuntu version that was
12 months old, the system update utility soon notified me that I had
over 800MB of available updates which I downloaded.

I was mortified to see the file transfer speeds was variable. Very
variable - it ranged between 35-50 KB/sec and I also noticed the
strength of the wireless signal was incredibly sporadic. On Windows, I
would consistently get a signal strength between 75 and 95%. This
computer was in the same room as the router with clear line of sight. I
tried browsing the Web - the experience was painful, It was like the bad
old days of 56KB dialup modems. I killed the system update which only
improved the state of affairs slightly.

I then discovered that there was a Ubuntu mirror hosted by my ISP
(Virgin Media) so reconfigured system update appropriately but still -
no improvement. A ping to ubuntu.virginmedia.com took 4-5 seconds - yes
seconds - not milliseconds. A ping from another Windows PC in the house
took 20 ms. This was a major concern and might kill this experiment dead
in its tracks with yet another Windows install beckoning.

Another of my concerns about adopting Linux full-time was printer
support so I was delighted to see that drivers for my Canon IP4000
inkjet printer were included in a comprehensive list and printed a test
page to prove it.

I imported photos, music and documents from my external USB Windows
(NTFS) drive (which just needed to be mounted as 'root'). OpenOffice was
able to read all my Word 2003 (and 2007) documents, Excel spreadsheets
(and PDF's were also accessible using Document Viewer. I could view
photos fine and I intended to use F-Spot to manage my photo library.

I was puzzled to see Evolution installed as the default email client so
I installed Thunderbird and configured it to access Virgin Media email
servers to send and receive email which worked fine.

## Mint 5

Next, I installed another year old distribution - Mint 5 with the XFCE
desktop interface (as opposed to the more common Gnome desktop which
comes with Ubuntu).

Again, I simply reformatted the root partition and left the user data
well alone. Mint looked impressive and has a slightly better utility to
manage the wireless network. I was offered the chance to install
'Restricted' packages for proprietary software (e.g. the nVidia drivers,
Flash). Open source purists may object but I accepted the invitation. I
was rewarded by being able to play YouTube videos straight away with no
fuss. I recall hunting around on Ubuntu for ages until I discovered the
'Restricted-Extras' package.

My main concern, the performance of the networking seemed unchanged (not
wholly surprising as I believe Mint 5 is also based on Hardy Heron).

## OpenSUSE

Next up was OpenSUSE which offered a slightly different administration
interface and a green theme. This was another old CD and I was gratified
and hugely relieved to see that OpenSUSE started loading system updates
at a decent speed (500-705KB/sec). If all else failed, I could also
revert to this distro although I wasn't entirely comfortable with the
Nautilus File Manager after becoming accustomed to Gnome.

## CrunchBang

CrunchBang was an interesting distro with a very different interface -
Black background, very minimalist with a handy system dashboard (CPU,
memory, disk utilisation) with all applications were available from a
right-click menu.

I really liked CrunchBang as it appeared to have a small set of
carefully selected and useful packages without being overly cluttered
with megabytes of additional software. I prefer distros with a compact
base where I can then install additional software as required.

If I was the sole user of the computer, I probably would have gone for
CrunchBang as the monochrome, minimalist beauty of the desktop was
appealing. However I doubted that Norma would be as comfortable with the
cut-down interface and funereal colour scheme.

## Fedora

I embarked on the now familiar installation process but once Fedora
booted, I got a couple of disconcerting kernel diagnostic error messages
when using Firefox and the automatic system update failed. There was
also a worrying amount of blue - both during the installation process
and on the default theme.

## Debian

I dearly wanted to love Debian as I get the impression it is the
distribution of choice for Linux officiandos and the technically minded
crowd. Also, it had lots of red during the installation process which
was very promising.

By now, I was getting bored of these time consuming full blown
installations onto hard disk so thought I would evaluate the remaining
distros simply using the Live CD approach and make allowances for any
sluggish performance.

Unfortunately, Debian assume that Debian is the one and only and the
best Linux distribution for you so you will obviously be installing the
software on to the hard disk. For some reason, (as far as I could see)
Debian don't see fit to provide a Live CD so people can choose to
evaluate their software so, once again, I found myself performing a full
blown installation.

Thus far, every single Linux distro had correctly auto-detected,
configured my Linksys wireless adapter and managed to connect to my
Linksys Router (running Tomato firmware) which was a pleasant surprise.

But not Debian. Oh no - although the WiFi card was recognised and I
could enable wireless networking, see the available networks, enter my
WPA credentials, Debian stubbornly refused to connect. There seemed to
be a worrying assumption that all wireless networks used WEP and I felt
I would have to do some serious digging to fix this and that somehow
because I wasn't prepared to do so, I was unworthy to have the privilege
of running Debian. Maybe it's some sort of Debian initiation ceremony.
In any case, life's too short.

## Arch

Arch is an interesting distro - it uses a character based installer. It
reminded me of installing SUSE Linux way back in November 1999 when I
had to recompile the kernel in order to get the mouse to work. Having
been spoiled by all the GUI installers, I was tempted to give up on Arch
there and then but proceeded until the partitioning utility decided that
I had overlapping partitions (which was odd as every other distribution
disagreed) and refused to go any further.

## PCLinuxOS

Another short lived experiment - some obtuse failure meant I wasn't able
to evaluate this distro.

## Mandriva

Finally, I looked at Mandriva which was a great looking distro and very
user friendly. I particularly liked the WiFi management utility. It also
performed well (even booting off the Live CD).

## Ubuntu 9.04

After all this effort, I still had a nagging doubt, that I was using
dated versions of Ubuntu and Mint that were more than 12 months old. As
there will have been a lot of updates and two full releases during this
period, I decided to burned two more CD's for Ubuntu 9.04 (Jaunty) and
Mint 7 (Gloria). My main reason was to see if the problems with my
wireless Linksys card was resolved in the current stable version of
Ubuntu and I also wanted to try the Gnome version of Mint.

Sure enough, support for the wireless USB adapter in Jaunty seemed much,
much better and I was able to use the network normally and large
downloads were now as quick as with Windows and Open SUSE.

## Mint 7 (Gloria)

The Linux Mint distribution is based on Ubuntu which means you can also
access the Ubuntu repositories which have a wealth of software packages.

I liked the look and feel of Mint 5 (using the smaller, lightweight XFCE
desktop) and was similarly impressed by Mint 7 (using Gnome).

The software update process is slightly more refined on Mint than Ubuntu
- updates are classified based on priority.

The clinching factor in Mint's favour was the new Mint Menu introduced
in Mint 7 which offered a (I hesitate to say it), a start menu that
would be reassuringly familiar to Windows users.

The desktop interface was simple, stylish and uncluttered and I liked
the Mint management tools. Also, support for an Ubuntu based distro
would be easily available.

So that was it - after a day of evaluating various Linux distributions,
I decided to go for Mint 7. Now the boring bit was over with, it was
time to sit back and enjoy my new computer.
