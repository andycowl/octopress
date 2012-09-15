---
date: '2007-02-08 00:50:25'
categories:
    - uncategorised
title: the art of lazy consultancy
layout: post
comments: true
---

Many years ago, a customer thanked me which was a pleasant surprise and
quite unusual. Most simply ask 'When will your report be ready ?'

This particular customer remarked on my 'logical and methodical
approach' to understanding this long standing complex problem, proposing
a plan of action and, on this rare occasion, resolving it.

I was interested by his choice of the words 'logical and methodical'. As
an aside, I was convinced I heard a surly DBA murmur 'slow, laboured and
hopeless more like' which hurt terribly.

Anyway, I don't believe that I have a 'logical and methodical' approach
to problem solving. My approach is born from laziness.

For example, if you have 27 users synchronising 176 objects of 5
different types between two IT systems, there is a lot of data to
analyse. When you increase the logging on both systems at all tiers, you
get even more data to analyse. So much data that your head explodes.

Reducing the number of synchronising users to 1, the number of objects
to be synchronised to 1 and limiting the direction of synchronisation to
one-way isn't necessarily logical. It is laziness and merely reduces the
amount of log files to a manageable volume so you are merely left with a
splitting headache.

Sometimes, it may appear like wasted time and effort to stop staring at
a monitor and painstakingly review yet again all the previous history,
ask the same questions again and possibly repeat test scenarios that
have already been executed many times by miscellaneous disgruntled
parties. There is simply no substitute for seeing the evidence with your
own eyes.

Similarly, many years ago, I used to quite literally get a detailed
trace of a working system and a broken system ('let's look at the good
versus the bad') and look for divergence. Occasionally, I still resort
to this technique which can still prove to be effective.

This approach can be viewed as a little undergraduate-esque by
non-technical people who expect expensive consultants just to waltz in
and say 'Oh yeah. I saw this very problem last week in Kazbakistan. You
just need to set the undocumented, unsupported and mythical parameter:
\_firewall\_auth=trusted. Right, anyone for lunch ?'

Making use of other resources could also be viewed as lazy but never
underestimate the knowledge and experience of the available technical
resources who may have different backgrounds and areas of expertise and
hence a contrary and valuable view on the underlying problem.

People (myself included) often limit their analysis to the areas they
know most about.

Right - anyone fancy a walk to that Copenhagen [sports
bar](http://www.nbrightside.com/blog/2006/04/25/sports-bars-of-europe-2/)
for England versus Spain ?
