--Alex Moore
--CS 325 - Fall 2022
--8 December 2022
spool 325report3-results.txt

--This report nicely formats the Daily Lessons query
ttitle left 'Daily Lessons'
col lesson_id heading 'Lesson ID'
col lesson_day heading 'Lesson Day'
break on lesson_day
compute COUNT LABEL 'Total' OF lesson_id on lesson_day

SELECT *
FROM lesson_day
ORDER BY lesson_day;

clear columns
ttitle off
clear breaks
clear computes
spool off