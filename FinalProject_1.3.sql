SELECT
  year,
  ROUND(SUM(IF(voted = 'Y', 1, 0)) / COUNT(*), 6) AS turnout
FROM (
  SELECT '2000' AS year, General_2000 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2002' AS year, General_2002 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2004' AS year, General_2004 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2006' AS year, General_2006 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2008' AS year, General_2008 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2010' AS year, General_2010 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2012' AS year, General_2012 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2014' AS year, General_2014 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2016' AS year, General_2016 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK` UNION ALL
  SELECT '2018' AS year, General_2018 AS voted FROM `pstat-135-235-spring-2025.voterfile.AK`
)
GROUP BY year
ORDER BY year;
