SELECT
    airport_id,
    airport_name,
    city,
    country,
    iata,
    icao
FROM {{ ref('stg_airports') }}