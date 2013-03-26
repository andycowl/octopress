---
date: 2010-11-26 12:38:00
categories:
    - uk
    - IT
title: train the trainer
layout: post
comments: true
---
In my job as a roving IT consultant, I have given a number of technical
presentations about Siebel. During that time, I have learned that I am
much more comfortable presenting material and content that I have
created myself. I have also presented slide-decks used by technical
pre-sales. This has occasionally led to detailed questions arising about
a very innocuous looking bullet point which I was unable to effectively
answer; not a comfortable situation.

Occasionally, I have delivered technical workshops about a very specific
area of the Siebel product set that was tailored to a customer
requirement for a module that is not covered by a formal course offered
by Oracle Education. I have thoroughly enjoyed this type of work as I
find it stimulating and very rewarding. I also felt the customer also
found these workshops useful and valuable.

Last week, I gave a 2 day workshop about EIM (Oracle's ETL tool to bulk
load data into a Siebel OLTP database) and I actually created some
practical lab exercises to give the attendees some hands-on experience
of failing to load data using EIM. I'm being serious here - I firmly
believe it is very important to be exposed to the different classes of
errors and idiotic mistakes when trying to achieve a seemingly
straightforward task of populating a single customer record.

I visited the client's offices the day before to check the logistics and
the Siebel environment provided for the workshop. I also took the
sensible precaution of completing the various exercises myself. To my
horror, I discovered at 3pm on the day prior to the workshop that EIM
wasn't actually functional in the customer test environment. Thankfully,
I discovered this was due to a missing Service Pack for the Microsoft
SQL Server database which resolved the problem and saved me from a very
embarrassing situation.

Whenever I've attended training courses, I've always felt slightly
uncomfortable whenever the instructor went walkabout and hovered over my
shoulder as I struggled with the syntax of ‘ALTER TABLE'. Consequently,
when I set the attendees loose on the first exercise, I tried to take a
back seat and only help if someone requested assistance.

I am not a teacher - in fact, I am a lousy teacher as I have precious
little patience - and I am not a trained instructor. However, I was
quite curious to see how different people attacked the problem. One chap
was feverishly reading the manuals, typing at speed, running the tests,
examining log files, iterating in an effort to win the race. One of his
colleagues had a rather more considered approach and I noticed he chose
to take time to assist his neghbour who wasn't as far forward. Another
attendee was very methodical and thorough; he essentially created a full
source-target mapping in Excel before he did anything else and was
completely unfazed by the progress of others around him. Another
gentleman reminded me of myself - he was bludgeoning forward at
breakneck speed, making misakes (syntax errors), immediately fixing them
and iterating rapidly.

I approached one gentleman quietly beavering away in the corner who had
actually completed the orignal exercise but hadn't shouted ‘Eureka' or
called me over to praise his efforts. Instead, he was now creating a
data set of 10,000 customer records to see what throughput he could get
compared with the performance of the existing custom COM based data
loading tool.

All in all, a very enlightening exercise. Psychologists would probably
classify each type of individual with a special name
(‘Starter-Finisher').
