/etc/hosts:
  file.append:
    - name: /etc/hosts
    - text:
      - 192.168.1.10 salt salt
      - 192.168.1.11 minioncontroller1 minioncontroller1
      - 192.168.1.100 gitlab gitlab
