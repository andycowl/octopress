---
date: '2006-09-14 23:13:28'
categories:
    - uncategorised
title: sync, sync, sync
layout: post
comments: true
---
[With apologies to Cabaret
[Voltaire](http://www.amazon.co.uk/Nag-Cabaret-Voltaire/dp/B00006IK6Y)]

I want to synchronise my Thunderbird address book between work and home
and my Palm Vx. I also want to synchronise Google
[Calendar](http://calendar.google.com/) with
[Sunbird](http://www.mozilla.org/projects/calendar/sunbird/) and my
aging Palm. This is for two reasons; to synchronise and simultaneously
back the data up. I feel nervous and exposed, like an Oracle DBA relying
on nightly exports.

One option was to repeatedly export/import the data between applications
but that is far too time consuming and I am lazy.

I noted with interest, Matt's recent
[experiences](http://photomatt.net/2006/09/11/plaxo-revisited/) with
[Plaxo](http://www.plaxo.com/) but decided that the name sounded too
much like Sage & Onion
[stuffing](http://www.rhmfoodservice.co.uk/brands/paxo/stuffing). Also,
the Plaxo Thunderbird plug-in doesn't currently support multiple address
books.

Then I happened across EngTech's superb
[blog](http://engtech.wordpress.com/) and this excellent
[article](http://engtech.wordpress.com/2006/08/11/the-holy-grail-of-synchronization-how-to-synchronize-microsoft-outlook-multiple-locations-google-calendar-gmail-ipod-and-mobile-phone-with-funambol-scheduleworld/)
which describes how to use ScheduleWorld as a synchronisation hub (using
[SyncML](http://en.wikipedia.org/wiki/SyncML)) to synchronise anything
to anything in any direction and put an end to all human suffering (well
almost).

I signed up for a free [ScheduleWorld](http://www.scheduleworld.com/)
account (the login page looks strangely reminiscent of Google) and
successfully synchronised ScheduleWorld with Google Calendar.

Then I downloaded the Calendar Sync4j
[extension](http://sourceforge.net/project/showfiles.php?group_id=149326)
for Thunderbird 1.5 and synchronised an appointment ('MUFC v Celtic')
from the Thunderbird Calendar to ScheduleWorld onto Google (and all the
way back again).

The I remembered what I was actually supposed to be doing and configured
Thunderbird to access the ScheduleWorld LDAP server. This worked once I
read the
[documentation](http://www.scheduleworld.com/tg/globalAddressbookConfig.jsp)
properly and used the numeric ID (instead of the email account).

This is not truly synchronisation in the old sense of propreitary
conduits and commercial products. This is purely storing data on a
server with an open, standard (LDAP) interface manipulated using various
client applications to perform, err, synchronisation.

Now Thunderbird could retrieve contact details from ScheduleWorld.
Unfortunately, Thunderbird currently has no SyncML support embedded so
Thunderbird is unable to modify the address book. However, I was able to
export addreses to LDIF format, import to the ScheduleWorld server and
manage (clean) the data using the ScheduleWorld Web interface.

ScheduleWorld doesn't currently support ~~bisexual~~ bi-directional
synchronisation with Gmail contacts which would be the 'killer app' and
the icing on the cake but if/when the Google API allows it, even this
may be possible.

The only disadvantages in this blissful state of nirvana is the fact
that the Palm is now an legacy application, an islolated silo and I will
erase the entire contents of my Palm address book. Consequently, I will
forget to send Great Auntie Agatha a Christmas card including my
traditional round-up of the year together with a delightful family
photograph.

This is because Great Auntie Agatha doesn't have an email address and
her details solely resided on the Palm. Great Auntie Agatha will then
pass away peacefully in her sleep next May. All my relatives will be
rich beyond their wildest dreams while I will receive absolutely nothing
after this Christmas card debacle.

I will then be forced to pursue legal action against 'EngTech' and the
brilliant author of 'ScheduleWorld' so if someone could furnish me with
their real names and addresses, I would be eternally grateful.
