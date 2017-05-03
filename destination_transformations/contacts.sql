SELECT
  'TODO' AS id
  site.site_id AS location_id,
  agency.agency_id AS organization_id,
--   AS service_id
  agency.in_charge AS name,
  agency.ic_title AS title
--   AS email,
--   AS department

FROM site
LEFT JOIN site_service ON site.site_id = site_service.site_id
LEFT JOIN agency ON site.agency_id = agency.agency_id
WHERE site.deleted IS NULL
WHERE agency.deleted IS NULL
