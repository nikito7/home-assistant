# Statistics

- Find ID:

SELECT * FROM "statistics_meta" WHERE statistic_id = 'sensor.pulse_hc_debug'

- Check for values:

SELECT * FROM "statistics" WHERE metadata_id=1396 AND max > 50

- Delete:

DELETE FROM "statistics" WHERE metadata_id=1396 AND max > 50

# States 

SELECT * FROM "states_meta" WHERE entity_id = 'sensor.pulse_hc_debug'

SELECT * FROM "states" WHERE metadata_id=8636

DELETE FROM "states" WHERE state_id=167679556

