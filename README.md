# Nic's HomeLab Homepage

A Homepage dashboard and Nginx entry point for web UIs hosted across Proxmox VMs. Runs as a Docker Compose stack.

- `admin` — Proxmox
- `apps` — application services
- `docs` — Paperless
- `dev` — Hermes Dashboard (Discord VM)

Nginx serves Homepage by default and routes service hostnames to their VMs.

**Status:** Service routes are placeholders until the VMs and internal DNS are configured.
