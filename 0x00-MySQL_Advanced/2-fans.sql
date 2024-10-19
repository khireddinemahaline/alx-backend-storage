-- ranks country origins of bands
-- order by number of fans


SELECT origin,
       fans AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
