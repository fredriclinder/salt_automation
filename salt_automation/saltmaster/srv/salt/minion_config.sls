copy minion files:
  file.managed:
    - name: /etc/salt/minion
    - source: salt://minionfiles/minion
