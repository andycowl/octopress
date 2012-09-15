SELECT n.nid,
n.title,
n.created,
n.status,
b.body_value,
a.alias
FROM node n,
field_data_body b,
url_alias a
WHERE n.type = 'blog'
AND b.entity_type = 'node' 
AND b.bundle='blog' 
AND b.entity_id = n.nid
AND a.source = concat('node/', n.nid)
