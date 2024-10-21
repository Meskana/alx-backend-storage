-- Task: Rank the country origins of bands based on the total number of fans, ordered by the number of (non-unique) fans in descending order.

-- Select the country origin and the total number of fans, grouped by origin and ordered by fans
SELECT origin, SUM(nb_fans) AS total_fans
FROM metal_bands  -- Assuming the table is named metal_bands after importing
GROUP BY origin
ORDER BY total_fans DESC;

-- End of file
