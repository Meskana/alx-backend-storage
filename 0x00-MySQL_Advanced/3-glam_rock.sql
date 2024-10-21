-- SQL script to list all Glam rock bands ranked by their longevity

-- 1. Calculate lifespan based on 'formed' and 'split' columns.
-- 2. Use 2022 as the current year for bands that have not split yet.

SELECT 
    band_name, 
    CASE 
        WHEN split IS NOT NULL THEN split - formed -- Calculate lifespan for bands that have split
        ELSE 2022 - formed                        -- Use 2022 for bands that are still active
    END AS lifespan
FROM 
    metal_bands
WHERE 
    main_style = 'Glam rock'  -- Filter for Glam rock bands
ORDER BY 
    lifespan DESC;  -- Rank bands by lifespan (longest to shortest)
