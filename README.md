installing
========

```sh
# with curl
curl -L https://dotfiles.matsub.tech | sh
# with wget
wget -qO - https://dotfiles.matsub.tech | sh
```

uninstalling
========

### unlink
```sh
python deploy.py unlink
```

### remove dotfiles
```sh
cd $DOTDIR
rm -rf dotfiles
```
