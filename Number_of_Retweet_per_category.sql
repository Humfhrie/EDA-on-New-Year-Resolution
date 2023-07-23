SELECT 
  tweet_category,
sum(retweet_count) AS Number_of_Retweet_per_category
FROM `Twitter_New_resolution_project.Resolution`
GROUP BY
1
