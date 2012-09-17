---
date: '2009-10-10 14:58:42'
categories:
    - music
    - software
title: how I ditched iTunes and started living with Foobar 2000
layout: post
comments: true
---
[Obligatory hat tip to '[How to stop defragmenting and start
living](http://www.oracle.com/technology/deploy/availability/pdf/defrag.pdf)'.
As an aside, if you're an Oracle DBA and haven't read this whitepaper,
please do so. Now.]

I have used various devices and software over my 76 years on this planet
to listen to music:

-   Record player
-   Cassette player
-   Transistor radio
-   Ears
-   WinAmp
-   [SonicStage](http://www.nbrightside.com/blog/2006/05/02/sonicstage-34-released)
-   Windows Media Player

18 months ago, I finally caved in and bought an iTouch which I use a
lot; mainly for listening to music and 
[podcasts](http://www.nbrightside.com/blog/2008/09/21/top-of-the-podcasts)
at airports.

I duly downloaded iTunes in order to get my music library onto the
iTouch. I seem to remember that iTunes couldn't play Windows Media
Player files which was slightly irritating. In any case, with a sense of
a new beginning and a fresh, clean start, I re-ripped all my music CD's
into Apple's AAC format, added the missing album artwork and
synchronised my music, photos and applications to the iTouch.

Over the last 18 months, Apple proceeded to add more and more 'features'
to iTunes which I don't want or need:

-   Tighter integration with the iTunes store
-   Genius - some sort of recommendation engine closely linked to the
    above
-   Jukebox
-   A default assumption that I also wanted to install additional
    software packages: QuickTime, Safari and Mobile Me.

When Apple recently released iTunes 9, I suddenly realised I was
downloading 98.4MB - just to play music.

It slowly dawned on me that, whenever I started iTunes, my (admittedly
aging PC) was unusable for 40 seconds while iTunes initialised and CPU
usage hit the roof.

I also realised that iTunes consumed a staggering 82MB of physical
memory while playing a tune and this excessive memory consumption could
increase to 134MB after connecting to the iTunes store.

I realised this was madness. Complete madness. Finally, I came to my
senses and sought out alternative programs to replace the oversized,
obese, bloated, multi-function and very slow iTunes.

I soon discovered [Foobar 2000](http://www.foobar2000.org/) which is a
small, compact, lighweight audio player for Windows. I downloaded the
program and was immediately struck by the size of the Foobar2000
distribution - 2,985KB, 2.81MB or 3,056,036 bytes to be precise.

This was already promising so I installed the program. I was pleasantly
surprised that Foobar quickly imported my existing iTunes music library
in its entirety and I was immediately able to play AAC encoded music. No
need for additional plugins or codecs.

[![image](http://lh5.ggpht.com/_l2uGy1RGCiE/StCL0v3-FlI/AAAAAAAABds/UmLwc6xn4aE/s400/Foobar01-DefaultPlayer.PNG)](http://picasaweb.google.co.uk/lh/photo/j72CrvPfYSct0Vvix_8YvQ?feat=embedwebsite)

I was also pleasantly surprised to see Foobar 2000 start up
instantaneously (no delay or hourglass here) and consume a slightly more
reeasonable 25,888KB of memory.

However, all of this was redundant unless I could actually synchronise
music to the iTouch as using two completely separate programs to mange
my music was self-defeating. So I downloaded a Foobar extension
promisingly named 
'[Ipod Manager](http://www.foobar2000.org/components/view/foo_dop)' 
and configured it.

For a complete fresh start, I took the rather brave (or stupid) move of
completely resetting the iTouch to the factory settings which deleted
all data and promptly hit 'Sync' in Foobar.

[![image](http://lh5.ggpht.com/_l2uGy1RGCiE/StCL01_lS1I/AAAAAAAABdw/4OL34SwFBtI/s400/Foobar02-iPodSync.PNG)](http://picasaweb.google.co.uk/lh/photo/Nsg7rXG60ipEpz_LO4KK5Q?feat=embedwebsite)

Although it took a while, synchronisation was 100% successful and I even
got a 'Preview' of what songs were going to added/removed from the
iTouch. This feature was incredibly useful as it gives you a chance to
abort if your entire music library is going to be (unexpectedly)
deleted.

[![image](http://lh6.ggpht.com/_l2uGy1RGCiE/StCL0xy2G5I/AAAAAAAABd0/hyx_dKTSFYU/s400/Foobar03-SyncPreview.PNG)](http://picasaweb.google.co.uk/lh/photo/zutHo7-S2NN2Sj52E3RFEQ?feat=embedwebsite)

There were some minor issues - not all album covers were displayed on
the iTouch. I discovered that iTunes embeds album artwork in the AAC
file. I preferred Foobar's method of adding the album art to the folder
as 'Cover.jpg' so you have complete control over the images used. Later
on, I actually removed the embedded artwork completely.

What else was missing ? I previously used iTunes to manage podcasts
although this was never really satisfactory as iTunes had a weird
concept of when the status of a podcast should be modified to
'Listened'. I rather thought listening from start to finish would
qualify but Apple obviously disagreed and repeatedly kept sync'ing old
content onto the iTouch.

Foobar had another useful extension called
'[PodCatcher](http://pelit.koillismaa.fi/plugins/show.php?id=270)' which
worked brilliantly. It would automatically download new podcasts (in the
background) and I was able to easily sync to the iTouch simply by
including the new 'Podcasts' category to the synchronisation list.

I wasn't completely happy with the default UI of Foobar so I used the
[Columns UI](http://www.foobar2000.org/components/view/foo_ui_columns)
extension to make it look slightly more usable with the album artwork
displayed.

[![image](http://lh6.ggpht.com/_l2uGy1RGCiE/StCL08HOoNI/AAAAAAAABd4/YRGEden4K4g/s400/Foobar04-ColumnsUI.PNG)](http://picasaweb.google.co.uk/lh/photo/81HGcOdc-2A2KrJcSubnaw?feat=embedwebsite)

Foobar 2000 really is the complete music player - once you add the
appropriate encoders, it can play virtually music in any format (FLAC,
WMA, AAC, WavPack, Ogg Vorbis et al).

One great feature is that Foobar can perform conversion between the
various formats. If I can summon up the energy to re-rip all my CD's yet
again, I plan to rip all my music to a lossless format (FLAC) and Foobar
would dynamically convert to the required lossy, compressed format
during the sync to the iTouch.

Another couple of useful extensions for Foobar:

-   [Audioscrobbler](http://www.foobar2000.org/components/view/foo_audioscrobbler)
    - to upload my played songs (including those on iTouch) to
    [last.fm](http://www.last.fm/user/andycowl)
-   [Playback
    statistics](http://www.foobar2000.org/components/view/foo_playcount)
    - generates 'Recently Played' playlist.

Although I am now blissfully almost iTunes free, I still need to use
iTunes to update the software on the iTouch but I am delighted to say
that is the sole extent of my iTunes usage. If I need to install any
applications on the iTouch, I can do that directly from the iTouch.

It was particularly satisfying to copy my Foobar configuration and music
library to my work laptop and completely remove iTunes from that
computer.
