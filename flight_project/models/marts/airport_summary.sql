SELECT
    country,
    COUNT(*) AS total_airports,
    COUNT(DISTINCT city) AS total_cities
FROM {{ ref('stg_airports') }}
GROUP BY country
ORDER BY total_airports DESC