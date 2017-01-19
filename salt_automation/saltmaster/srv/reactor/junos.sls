miniondirectory:
  local.file.mkdir:
    - tgt: '{{ data['id'] }}'
    - arg:
      - /srv/junos_configs/{{ data['id'] }}

write_config:
  local.junos.rpc:
    - tgt: {{ data['data']['hostname'] }}
    - arg:
      - "get_config"
      - /srv/junos_configs/{{ data['id'] }}/{{ data['data']['hostname'] }}.conf
      - format='text'
      - minion={{ data['id'] }}
    - require:
      - salt: miniondirectory

