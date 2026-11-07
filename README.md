# Nic's HomeLab Homepage

A Homepage dashboard served by Nginx at `http://homepage.vm.nic.lan/`, running as a Docker Compose stack.

- `admin` — Proxmox (`https://proxmox.nic.lan:8006/`)
- `apps` — The News (`http://the-news.vm.nic.lan:80/`)
- `docs` — Paperless
- `dev` — Hermes Dashboard (Discord VM)

Nginx proxies only Homepage. Cards open each service directly in the browser; each service DNS name must resolve to its own host, not the dashboard VM.

`HTTP_PORT` controls only the dashboard's published port (default `80`, all IPv4 interfaces). `.env.example` contains a masked template; replace the placeholder before use. Configuration is copied into custom images, so edits require rebuilding.

Paperless and Hermes cards remain without links until their direct URLs are confirmed. LAN/VPN DNS, access policy, and real service availability are managed separately; this stack does not configure them or provide authentication.
