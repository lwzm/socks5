# lwzm/socks5

Simple socks5 via ssh

```
docker run -p 1080:1080 lwzm/socks5 [USER@]HOST [OTHER-OPTIONS]
```

and then add the auto-generated `public key` to your `remote-host:~/.ssh/authorized_keys`.


Or use your custom ssh key, e.g.:

```
docker run -v ~/.ssh/id_rsa:/id_rsa -p 1080:1080 lwzm/socks5 [USER@]HOST [OTHER-OPTIONS]
```

EOF
