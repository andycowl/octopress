---
date: '2007-06-29 09:22:12'
categories:
    - uncategorised
title: go faster stripes
layout: post
comments: true
---
This Bluehost powered blog is now
[FastCGI](http://helpdesk.bluehost.com/kb/index.php?x=&mod_id=2&root=50&id=461)
enabled. You may find the site faster but, then again, hyperlinks may
return completely random articles. You will probably struggle to tell
the difference.

Which reminds me of a funny story...

I am currently working in the North East on an 'escalation'. An
'escalation' is characterised by frequent, lengthy conference calls with
bi-hourly status updates, the phrases 'high-profile', 'alternative
technical solutions', 'severe degradation', 'impacting the bottom line',
'CIO visibility', 'options for the weekend' and the perennial favourite:
'any progress yet ?'

Thus far I have managed to resist the temptation to reply: 'No. Sorry.
No progress yet because I have been in meetings and conference calls
since I arrived onsite and I haven't even been offered a coffee yet, let
alone actually touched a keyboard.'

Anyway, I digress. All of these factors combine for a relatively
stressful working environment.

This lunchtime, during a scheduled outage of 15 minutes to stop and
restart Oracle to change a static 9i parameter
(optimizer\_index\_cost\_adj from 1 to 10 for the technically minded),
three highly skilled, overpaid technical people and a project manager
were overseeing this vital, complicated and potentially life saving
modification.

The application servers were shutdown so those pesky users could no
longer use the system. We looked wistfully at a AIX 'topas' screen
showing 'CPU: 0%, User: 0%, System: 0%, Disk 0%, Wait: 0%' and took a
screenshot for posterity.

We paused to savour the moment. There was a brief moment of quiet
contemplation and tranquility. Then the DBA piped up: 'Shall we wait for
1 minute ?'

The DBA then fired up Enterprise Manager. We all doubled checked the
password credentials and the target database. We held an impromptu video
conference call to get approval to press the 'Login' button.

We doubled checked that password for SYS was secure, non-intuitive and,
err, different for the DEV, TEST, UAT, STAGE, QA, TRAIN and PRODUCTION
environments. Of course, it was. What sort of organisation responsible
for Oracle outsourcing would do anything different ?

The moment had finally arrived. Hours of detailed analysis. Hours of
pouring over Statspack Level 7 reports and query plans. Hours of talking
to the mysterious 'SAN Man'. Hours of scouring SupportWeb and Metalink.

Hours of investigating helpful (but ultimately unhelpful) suggestions
from people who should not have been involved. Hours of going deep down
into dark rat holes. Hours of early starts, late finishes, no coffee and
plenty of red herrings.

The time had finally come to change the parameter. We stand, poised, on
the verge of greatness.

I broke the tense silence: 'OK. The Oracle parameter we need to change
governs the behaviour of the Oracle optimizer. We are seeing an
expensive 'INDEX FULL SCAN' on the customer table which generates
million of logical I/O's, physical disk reads and brings the database
server to its knees. We are trying to encourage Oracle to use 'INDEX
RANGE SCAN' on the driving, intersection table instead which is 300
times more efficient.'

'We are unable to add hints. We are unable to modify the SQL generated
by the black box so we are going to change a key Oracle setting for CBO.
I have the Change Control in my hands. We are actually going to change
an Oracle parameter.'

A hush descends. The DBA observes another minute silence and expectantly
clicks 'Instance - Configuration'. With a little prompting, he clicks
'SPFile' instead of 'Running'.

I continue: 'The parameter we are about to change is called 'Go'
'Underscore' 'Faster'.

The DBA then scrolls down to the 'G' section.

There is a period of a superlative 3 second silence followed by 'Sorry -
what did you say: 'Go' 'Underscore' 'Fas...' followed by three people
(poor project manager) laughing uncontrollably.

The door opens: 'Any progress yet ?'
