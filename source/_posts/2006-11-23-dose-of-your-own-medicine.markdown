---
date: 2006-11-23 22:21:40
categories:
    - uncategorised
title: dose of your own medicine
layout: post
comments: true
---
I had the misfortune to visit a very angry customer today. He was having
problems loading customer data into Siebel. I sat him down with a nice
cup of tea and invited him to tell me all about his woes.

'Well Norman - it's like this you see. We used to be able to load
400,000 contacts per hour. Now performance is absolutely abysmal and it
takes 12 minutes to load just 1,000.'

'Hold on. What exactly have you changed since you last loaded 400,000
per hour.'

'Nothing. Nothing at all.'

'Hang on. When were you last able to load 400,000 per hour - exactly ?'

'Err well. It was back in February, you see.'

'And you expect me to believe that you have changed nothing since then
?'

'Yes.'

'OK. I want hard copies of all change controls raised against this
system since February and access to Visual Source Safe. I also want the
DBA and Siebel administrator here. Now.'

'We haven't got any change controls. We don't use configuration
management and I am the DBA, Siebel Admin, systems admin, Web server
guru and I also make the tea. We are a small company, you see.'

'I see. That's fine.' (sigh and roll eyes upwards). This could be a long
day.

And so the detailed analysis commenced. The control file (IFB) used to
load the data. The key Oracle parameters. The hardware of the various
servers. All identical to the configuration used back in February.

And he did load 400,000 records per hour. He had the logs to prove it.
And now he could type the data in quicker. I know because I saw it with
my own eyes. A real mystery.

Siebel's data loading utility is called EIM and uses CBO so time to
check the statistics. This client uses Oracle 10g so statistics are
automatically gathered by default (essentially gather stale) so all
tables have current statistics.

Hold on a minute. All tables apart from EIM\_CONTACT and a load of
others.

'Why have you dropped statistics on EIM\_CONTACT ?'

'We haven't.'

'Oh yes you have.'

'Oh yeah. I remember now. I was playing with a custom script to drop
stats on all empty tables. Siebel told me to do this because it affects
performance (Alert 1162).'

'Oh I see. How very interesting.'

It transpires that because the interface table is (correctly) truncated
post-load, the statistics subsequently got deleted by this script. Kudos
to this customer though for humourously naming the script 'dropem.sql'.

Quickly compute statistics on EIM\_CONTACT and indexes and performance
is miraculously restored.

Well almost. The client forgot to tell me that he had dropped unused
indexes on the base tables to accelerate the data load still further.
The 'ddlsync' utility that synchronises the Siebel Repository with the
physical Oracle schema had subsequently been run which reinstated all
the indexes slowing performance down slightly. The indexes are dropped
and the original throughput is restored.

Well almost. The client forgot to tell me he had enabled mobile web
clients as an experiment for Olof Ericcsson (VP Sales - Scandinavia). So
we disable remote transaction logging to eliminate that minor overhead.
Throughput is now restored.

So I said my goodbyes and left for the long drive home.

Only, on this occasion, the journey home was very short.

On this occasion, the client happened to be sitting at my kitchen table.

On this occasion, the rack of expensive application/Web/database servers
were actually all co-hosted on my very own laptop.

On this occasion, the client who made all the mistakes was me.
