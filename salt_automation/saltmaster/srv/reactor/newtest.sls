check_event:
    {% if data['fun_args'].0 == 'get_config' %}
      local.event.fire:
        - tgt: 'minioncontroller1'
        - arg:
          - { id: "junos_config_extraction" }
          - junos.conf created on proxy {{ data['id'] }}
    {% endif %}

