#!/bin/sh

ID_RSA=${ID_RSA:-/id_rsa}
OPTS=" -o StrictHostKeyChecking=no -o PreferredAuthentications=publickey -o ServerAliveInterval=60 -o ServerAliveCountMax=2"


if [ ! -f "$ID_RSA" ]; then
    ssh-keygen -q -P '' -f "$ID_RSA"
fi

while true; do
    ssh -T $OPTS -i "$ID_RSA" "$@" </dev/null
    if [ $? -le 1 ]; then
        # sh exit 0, nologin exit 1, false exit 1
        break
    fi
    date
    echo "=== todo: public key ==="
    ssh-keygen -y -f "$ID_RSA"
    sleep 10
done

echo "it's ok!"

exec ssh $OPTS \
    -i "$ID_RSA" -N -D :1080 "$@"
