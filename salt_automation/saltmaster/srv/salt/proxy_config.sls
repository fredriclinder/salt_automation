copy minion proxy files:
  file.managed:    
    - name: /etc/salt/proxy
    - source: salt://minionfiles/proxy
