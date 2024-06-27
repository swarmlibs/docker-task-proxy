# About

A simple Docker Swarm's Task proxy service that forwards requests to the appropriate a single service that binds to a specific address and port.

Why? It useful when you have a service that required high availability setup with pesky advertise address interface and port binding.

See example here https://github.com/swarmlibs/logstack/blob/main/grafana-loki/docker-stack.yml