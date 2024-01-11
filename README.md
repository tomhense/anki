# Anki

Automatically build a docker image when [Anki](https://github.com/ankitects/anki) gets updated.

### Docker-compose

```yaml
version: "3"

services:
  anki:
	image: ghcr.io/tomhense/anki-docker-build
    container_name: anki
    restart: unless-stopped
    ports:
      - 127.0.0.1:27701:8080
    volumes:
      - data:/data
    labels:
      - com.centurylinklabs.watchtower.enable=false
    environment:
      - SYNC_USER1=user:pw
      - MAX_SYNC_PAYLOAD_MEGS=100
volumes:
  data:
```

Don't forget to chage the sync user credentials in the env section.
