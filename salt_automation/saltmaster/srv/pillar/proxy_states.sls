salt-proxy-configure:
  salt_proxy.configure_proxy:
    - proxyname: vqfx
    - start: True # start the process if it isn't running
