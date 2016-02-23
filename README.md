installing
========

```sh
# with curl
curl https://raw.githubusercontent.com/matsub/dotfiles/master/install.sh | sh
# with wget
wget -qO - https://raw.githubusercontent.com/matsub/dotfiles/master/install.sh | sh
```

uninstalling
========

### unlink
```sh
python deploy.py unlink
```

### remove dotfiles
```sh
cd ..
rm -rf dotfiles
```
