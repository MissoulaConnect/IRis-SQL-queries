SELECT
  agency_id AS id,
  aka AS alternate_name,
  '' AS date_incorporated,
  notes AS description,
  email,
  '' AS funding_sources,
  type AS legal_status,
  license_accreditation AS licenses,
  name,
  '' AS tax_id,
  '' AS tax_status,
  url AS website

FROM agency
WHERE deleted IS NULL
ORDER BY agency_id ASC
