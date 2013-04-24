---
layout: post
title: Amazon customer service
date: 2012-10-08 10:21:00
comments: true
categories:
    - amazon
---
I am currently hosting this site on Amazon Simple Storage Service
([S3][1]). For the first 12 months I am eligible for the
[Free Usage Tier][2] pricing.

[1]: http://aws.amazon.com/s3/
[2]: http://aws.amazon.com/free/

The Free Tier isn't completely free but includes '*5 GB of Amazon S3
standard storage, 20,000 Get Requests, and 2,000 Put Requests*'.

Initially, I had to test, review and deploy the entire site a few
times before I got things right and Google's crawler was busy
re-indexing the site so I wasn't wholly surprised when September's
bill was  a measly 15 cents.

The breakdown was as follows:

- S3 storage   $0.01
- GET requests $0.03
- PUT requests $0.08
- Tax          $0.03

The only element that puzzled me was the S3 storage which is free for
up to 5GB. I checked the size of the site which is just 21MB (all
images are outsourced to Picasa).

    $ du -sh public
    21M    public

I sent an email to Amazon customer service asking for clarification -
not because I can't afford a penny - but because I would like to
understand the pricing structure ready for when the 12 month Free Tier
period expires.

In the interim period, I found the answer on the AWS FAQ - the Free
Tier assumes Standard S3 Storage will be used and I was using the
following 's3cmd' to deploy my site.

    s3cmd sync --acl-public --reduced-redundancy public/* s3://#{s3_bucket}/

The choice of the Reduced Redunancy Storage option makes sense as this
normally costs less ($0.093 per GB) than standard storage ($0.125 per
GB) and this is a low traffic website (and I have multiple backups).

However, this caveat is actually covered in the last section of the
[FAQ][3]

[3]: http://aws.amazon.com/free/faqs/

**Does the AWS free tier include Amazon S3 Reduced Redundancy Storage
  (RRS)?**

*No, the AWS free tier does not include Amazon S3 RRS storage. The AWS
 free tier includes 5 GB of Amazon S3 standard storage, which offers
 the highest Amazon S3 durability.*

A couple of days later I received a response from a Amazon Customer
Service rep who confirmed that Reduced Redundancy Storage wasn't
covered by the free tier, apologised for the misunderstanding and
applied a $5 credit to my AWS account for the 'inconvenience
caused'. For me, this will probably equate to 3 years 'free' hosting.

Once again, fantastic customer service from [Amazon][4]. I was
originally thinking of investigating altenative hosting options when
the 12 month period expires but, on reflection, I don't think I will
bother.

[4]: http://www.nbrightside.com/blog/2005/09/29/crm/
