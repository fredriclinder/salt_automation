check_event:
    {% if data['fun_args'].0 == 'get_config' %}
      {% set list1 = data['fun_args'].3.split('=') %}
        local.event.fire:
          - tgt: '{{ data['id'] }}'
          - arg:
            - { info: "proxymapper", id: "{{ list1[1] }}", proxy: "{{ data['id']  }}" }
            - junos.conf created on proxy {{ data['id'] }}

    {% endif %}
