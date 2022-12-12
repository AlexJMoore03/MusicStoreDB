--Alex Moore
--CS 325 - Fall 2022
--8 December 2022
spool 325report1-results.txt

--This report nicely formats the Average Instrument Prices query
ttitle left 'Average Price for Each Instrument Type'
col instrument_type heading 'Instrument Type'
col AVG(purchase_price) heading 'Average Price' format $999.99

SELECT instrument_type, AVG(purchase_price)
FROM instrument
GROUP BY instrument_type;

clear columns
ttitle off
spool off