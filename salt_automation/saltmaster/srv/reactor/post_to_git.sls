check_event:
    {% if 'info' in data['fun_args'][0] and data['fun_args'][0]['info'] == 'proxymapper' %}
      local.cmd.run:
        - tgt: '{{ data['fun_args'][0]['id'] }}'
        - arg:
          - (sed -i '/Last changed:/d' /srv/junos_configs/{{ data['fun_args'][0]['id'] }}/{{ data['fun_args'][0]['proxy'] }}.conf && cd /srv/junos_configs && rm -f .git/index.lock && git add * && git commit -a -m "commited by salstack minion" && git push http://saltstack:juniper123@gitlab/saltstack/junos-config-repository.git --all)



    {% endif %}


