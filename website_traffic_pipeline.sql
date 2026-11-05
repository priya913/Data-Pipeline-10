CREATE OR REPLACE TABLE
  `website-traffic-pipeline.website_analytics.pageviews_summary`
AS
SELECT
  page_url,
  COUNT(*) AS total_pageviews,
  COUNT(DISTINCT user_id) AS unique_users
FROM
  `website-traffic-pipeline.website_analytics.pageviews_raw`
GROUP BY
  page_url
ORDER BY
  total_pageviews DESC;