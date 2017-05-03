SELECT
  'TODO' AS id,
  -- AS contact_id,
  site.site_id AS location_id,
  site.agency_id AS organization_id,
  -- AS service_id,
  agency.fax AS number,
  -- AS extension,
  -- AS department,
  'fax' AS number_type,
  -- AS vanity_number,
  -- AS country_prefix,
FROM agency
LEFT JOIN site ON agency.agency_id = site.agency_id
WHERE agency.deleted IS NULL
WHERE site.deleted IS NULL
