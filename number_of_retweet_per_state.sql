SELECT
    tweet_state,
    count(tweet_text) AS number_of_retweet_per_state
  FROM `Twitter_New_resolution_project.Resolution`
  GROUP BY 1
