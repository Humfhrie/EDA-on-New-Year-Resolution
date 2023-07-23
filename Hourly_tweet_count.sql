with
  Base AS (
  SELECT
    DATE(tweet_created) AS tweetdate,
    TIME(tweet_created) AS tweettime,
    --TIME_TRUNC(tweet_created), HOUR) AS tweethour
    --EXRACT(HOUR FROM tweet_created)
    CASE
      WHEN EXTRACT(MINUTE FROM tweet_created) > 30 THEN EXTRACT(HOUR FROM tweet_created) +1
      ELSE EXTRACT(HOUR FROM tweet_created)
    END AS hour,
    tweet_text
  FROM
    `Twitter_New_resolution_project.Resolution`
)

SELECT
  hour,
  count(tweet_text) AS Hourly_tweet_count
  FROM Base
  GROUP BY 1
  ORDER BY 2 DESC
