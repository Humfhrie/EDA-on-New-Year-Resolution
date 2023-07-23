SELECT
  tweet_category,
  count(*) AS number_of_resolution_per_category
FROM
  `dataverse-392709.Twitter_New_resolution_project.Resolution`
GROUP BY
  1
