FreeDS mqtt to others mqtt

```yaml
alias: Watts Relay
description: ""
triggers:
  - trigger: state
    entity_id:
      - sensor.eb3_freeds_power
conditions: []
actions:
  - action: mqtt.publish
    metadata: {}
    data:
      qos: 0
      retain: false
      topic: omeutopico
      payload: "{{ states('sensor.eb3_freeds_power')|float(0) }}"
mode: single
```
