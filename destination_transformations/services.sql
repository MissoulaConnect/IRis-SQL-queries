SELECT
  'TODO' AS id,
  site.site_id AS location_id,
--   AS program_id,
--   AS accepted_payments,
--   AS alternate_name,
  site.notes AS description,
--   AS eligibility,
--   AS email,
--   AS fees,
--   AS funding_sources,
--   AS application_process,
--   AS interpretation_services,
--   AS keywords,
--   AS languages,
  site.name AS name,
--   AS required_documents,
--   AS service_areas,
  'active' AS status, -- TODO
--   AS wait_time,
--   AS website,
--   AS taxonomy_ids,
FROM agency
LEFT JOIN site ON agency.agency_id = site.agency_id
WHERE agency.deleted IS NULL
WHERE site.deleted IS NULL
