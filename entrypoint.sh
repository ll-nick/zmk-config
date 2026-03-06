#!/bin/bash
set -e

if [ ! -d /workspace/.west ]; then
    echo "Initializing west workspace..."
    mkdir -p /workspace/.west
    cat > /workspace/.west/config << 'EOF'
[manifest]
path = config
file = west.yml
EOF
    ln -s /zmk-config/config /workspace/config
    west update --fetch-opt=--filter=tree:0
    west zephyr-export
fi

exec "$@"
