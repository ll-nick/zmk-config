# zmk-config

ZMK firmware config for a **Lily58** split keyboard.

## Building locally

Requires Docker.

```sh
# First run — initializes the west workspace and fetches dependencies (~1GB, takes a while):
docker compose run --rm lily58-left

# Subsequent builds are fast:
docker compose run --rm lily58-left
docker compose run --rm lily58-right
```

Output `.uf2` files are written to `firmware/`.

After changing `config/west.yml` (e.g. adding a module), re-run:

```sh
docker compose run --rm west-update
```

The west workspace is cached in `.docker-west/` and persists between runs. Delete it to start fresh.

## Building via GitHub Actions

Push to `main` to trigger a build. Firmware artifacts are available in the Actions tab.
