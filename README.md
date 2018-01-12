docker image for CentOS
====

## Perpose

Make minimum old centos docker image.

Almost same https://raw.githubusercontent.com/moby/moby/master/contrib/mkimage-yum.sh

## Difference against original

- use vault.centos.org in `/etc/yum.repos.d/CentOS-Base.repo`
- No latest images. Latests don't exist in vault.centos.org
	- cf) 6.9 and 7.4.1708 are latest, then no binaries in vault repo in 2018/01
- Actually not minimum. `curl` and `yum-utils` are added.

## How to use

```
bash ./prepare.sh
# edit run.sh and yum.conf.d
# no edit, run.sh make centos 4.4 - 7.3 images.
sudo bash ./run.sh
```

## License

MIT
