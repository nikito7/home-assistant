
```yaml
{% set x = states('sensor.water_level_4_20ma')|float(0)|round(2) %}
{% set hw = states('sensor.hot_water')|float(0) %}

{{ x }} m 
{% if x < 0.5 %}
⚠️
{% endif %}

<br>
{{ hw }} °C     
```
