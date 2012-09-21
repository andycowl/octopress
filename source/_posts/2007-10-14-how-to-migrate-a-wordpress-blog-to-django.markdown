---
date: '2007-10-14 22:57:45'
categories:
    - uncategorised
title: how to migrate a WordPress blog to Django
layout: post
comments: true
---
There is currently no utility to migrate existing blog content to
[django](http://www.nbrightside.com/blog/2007/09/26/last-django-in-london/).

However, conversion of an existing WordPress blog is pretty
straightforward.

Firstly, simply export the following tables from the WordPress database
using phpMyAdmin

-   wp\_posts
-   wp\_comments
-   wp\_terms
-   wp\_term\_taxonomy
-   wp\_term\_relationships

Import the tables into the django database.
Then run the following SQL statements which migrate posts, comments and
categories and assume a WordPress 2.3 schema and a blank django blog. If
you have already created [content](http://blog.nbrightside.com/blog/) in
django, minor changes will be needed. My WordPress blog only uses
categories which simply get converted to django tags.

    insert into blog_post
    (id,
    slug,
    title,
    pubdate,
    moddate,
    body,
    draft,
    closed)
    select
    wp_posts.id,
    wp_posts.post_name,
    wp_posts.post_title,
    wp_posts.post_date_gmt,
    wp_posts.post_modified_gmt,
    wp_posts.post_content,
    0,
    0
    from wp_posts
    and post_type = 'post';

    insert into comments_freecomment
    (id,
    content_type_id,
    comment,
    object_id,
    person_name,
    submit_date,
    is_public,
    ip_address,
    approved,
    site_id)
    select
    wp_comments.comment_id,
    14,
    wp_comments.comment_content,
    wp_comments.comment_post_id,
    wp_comments.comment_author,
    wp_comments.comment_date_gmt,
    1,
    wp_comments.comment_author_ip,
    wp_comments.comment_approved,
    1
    from wp_comments
    where comment_approved = '1';

    insert into blog_tag
    (slug,
    title,
    description)
    select
    wp_terms.slug,
    wp_terms.name,
    wp_terms.name
    from wp_terms;

    insert into blog_post_tags
    (post_id,
    tag_id)
    select
    wp_term_relationships.object_id,
    wp_terms.name
    from wp_term_relationships, wp_term_taxonomy, wp_terms
    where wp_term_relationships.term_taxonomy_id = wp_term_taxonomy.term_taxonomy_id
    and wp_term_taxonomy.term_id = wp_terms.term_id;

Finally, delete the WP\_\* tables from the django (and not the
WordPress) database.
