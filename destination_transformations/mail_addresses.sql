SELECT
  'TODO' AS id,
  site.site_id AS location_id,
--   site.mail_name AS ,
  site.mail_preadd AS attention,
  site.mail_add1 AS address_1,
  site.mail_add2 AS address_2,
  site.mail_city AS city,
  site.mail_state AS state_province,
  site.mail_zip AS postal_code,
  site.mail_country AS country
FROM site
WHERE site.deleted IS NULL
