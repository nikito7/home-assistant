
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


```yaml
{% set x = states('sensor.t44_ds18b20_aquarium_temp')|float(0)|round(1) %}

🐟 
{% if x > 20 %}
🟠
{% endif %}

<br>
{{ x }} °C     
```


____
EOF

sensor.t44_ds18b20_aquarium_temp
