SELECT
  agency.agency_id AS id,
  agency.aka AS alternate_name,
  -- '' AS date_incorporated,
  agency.notes AS description,
  agency.email,
  -- '' AS funding_sources,
  agency.type AS legal_status,
  agency.license_accreditation AS licenses,
  agency.name,
  -- '' AS tax_id,
  -- '' AS tax_status,
  agency.url AS website

FROM agency
WHERE deleted IS NULL
ORDER BY agency_id ASC
