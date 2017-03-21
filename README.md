installing
========

```sh
# with curl
curl -L https://dotfiles.matsub.net | sh
# with wget
wget -qO - https://dotfiles.matsub.net | sh
```

uninstalling
========

### unlink
```sh
python deploy.py unlink
```

### remove dotfiles
```sh
cd $DOTDIR/..
rm -rf dotfiles
```
