- Find ID:

SELECT * FROM "statistics_meta" WHERE statistic_id = 'sensor.pulse_hc_debug'

- Check for values:

SELECT * FROM "statistics" WHERE metadata_id=139 AND max > 50

- Delete:

DELETE FROM "statistics" WHERE metadata_id=139 AND max > 50
