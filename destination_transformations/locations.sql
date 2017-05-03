SELECT
  site.site_id AS id,
  agency_id AS organization_id,
  accessibility,
  site.email AS admin_emails,
  aka AS alternate_name,
  site.notes AS description,
  site.email,
  site_service.languages AS languages,
--   '' AS latitude,
--   '' AS longitude,
  name,
--   '' AS transportation,
--   '' AS virtual,
  site.url AS website

FROM site
LEFT JOIN site_service ON site.site_id = site_service.site_id
WHERE site.deleted IS NULL
