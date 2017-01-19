base:
  '*controller*':
    - junos_enable
    - minion_config
    - proxy_config
    - junos_syslog_engine
    - hosts
  'git*':
    - gitprerequsite
