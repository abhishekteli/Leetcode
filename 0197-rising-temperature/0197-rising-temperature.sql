# Write your MySQL query statement below
# select distinct Id
# from (
# select b.id 
# from Weather a join Weather b on a.recordDate = b.recordDate
# where a.temperature < b.temperature and a.recordDate < b.recordDate and b.recordDate - a.recordDate = 1
# union all
# select a.id 
# from Weather a join Weather b on a.recordDate = b.recordDate
# where b.temperature < a.temperature and b.recordDate < a.recordDate and a.recordDate - b.recordDate = 1
# ) as temp_table


SELECT
    weather.id AS 'Id'
FROM
    weather
        JOIN
    weather w ON DATEDIFF(weather.recordDate, w.recordDate) = 1
        AND weather.Temperature > w.Temperature
;