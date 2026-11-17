Salicru SPS One fix


```yaml
devices:
  - name: Salicru
    driver: nutdrv_qx
    port: auto
    config:
      - subdriver = cypress
      - vendorid = "0665"
      - productid = "5161"
      - protocol = voltronic-qs
      - debug_min = 3
      - pollinterval = 11
```
