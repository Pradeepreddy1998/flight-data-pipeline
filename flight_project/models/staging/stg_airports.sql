SELECT
    id AS airport_id,
    name AS airport_name,
    city,
    country,
    iata,
    icao,
    latitude,
    longitude,
    altitude,
    timezone,
    type
FROM {{ source('raw', 'AIRPORTS') }}
WHERE id IS NOT NULL