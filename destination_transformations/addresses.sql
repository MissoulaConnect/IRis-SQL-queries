SELECT
  'TODO' AS id,
  site.site_id AS location_id,
  site.agency_id AS organization_id,
  site.add1 AS address_1,
  site.add2 AS address_2,
  site.city AS city,
  site.state AS state_province,
  site.zip AS postal_code,
  site.country AS country
FROM site
WHERE site.deleted IS NULL
