# Nic's HomeLab Homepage

A Homepage dashboard served by Nginx at `http://homepage.vm.nic.lan/`, running as a Docker Compose stack.

- `admin` — Proxmox (`https://proxmox.nic.lan:8006/`)
- `apps` → `The News` — WordPress (`http://the-news.vm.nic.lan`) and Hermes Dashboard (`http://the-news.vm.nic.lan:9119`)
- `docs` — Paperless
- `dev` — Hermes Dashboard (Discord VM)

Nginx proxies only Homepage. Cards open each service directly in the browser; each service DNS name must resolve to its own host, not the dashboard VM.

The dashboard uses native responsive groups, service icons, and a title/clock header. `custom.css` applies Catppuccin Frappé and wraps only The News's native subgroup as one card containing two link controls; no custom JavaScript. Sample bookmarks are disabled. Icons use Homepage's external CDN sources.

`HTTP_PORT` controls only the dashboard's published port (default `80`, all IPv4 interfaces). `.env.example` contains a masked template; replace the placeholder before use. Configuration is copied into custom images, so edits require rebuilding.

Paperless and the separate `dev` Hermes card remain without links until their direct URLs are confirmed. LAN/VPN DNS, access policy, and real service availability are managed separately; this stack does not configure them or provide authentication.
