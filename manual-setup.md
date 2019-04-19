Folder tree
-----------

Main folder for developments:
```bash
mkdir ~/Dev
cd !$
```

Vim
---

[vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```bash
mkdir ~/.dotfiles/vim/backups
mkdir ~/.dotfiles/vim/swaps
```


Sublime Text
------------

[ST3](http://www.sublimetext.com/3)

Symlink binary:
```bash
ln -s /Applications/Sublime Text.app/Contents/SharedSupport/bin/subl ~/.dotfiles/bin/subl
```

Symlink configuration:
```bash
ln -s ~/.dotfiles/sublime/User Library/Application\ Support/Sublime\ Text\ 3/Packages/
ln -s ~/.dotfiles/sublime/Theme\ -\ Primer/ Library/Application\ Support/Sublime\ Text\ 3/Packages/
```

### Packages
Manual installation of [Package Control](https://packagecontrol.io/installation)


nodeJS
------

[n](https://github.com/tj/n) via [n-install](https://github.com/mklement0/n-install)

`$N_PREFIX` is set to `~/.n` in `bash/exports`


ruby
------

[rbenv](https://github.com/rbenv/rbenv)
```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
~/.rbenv/bin/rbenv init
```

[ruby-build](https://github.com/rbenv/ruby-build) as a rbenv plugin
```bash
mkdir -p "$(rbenv root)"/plugins
cd ~/.rbenv && src/configure && make -C src
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```


Apache
------

Write the following lines in `/etc/apache2/users/acekat.conf`:
```xml
<Directory "/Users/acekat/Sites" >
  Options FollowSymLinks Indexes MultiViews
  AllowOverride All
  Order allow,deny
  Allow from all
</Directory>
```

Set the permissions right:
```bash
sudo chmod 644 /etc/apache2/users/acekat.conf
```

Link the user's web server folder to `~/Dev/PHP`:
```bash
mkdir -p ~/Dev/PHP
ln -s ~/Dev/PHP ~/Sites
```
Projects in this folder will be accessible at `localhost/~acekat/`.

Aliases from dotfiles to start: `sstart` and stop: `sstop` the local apache web server.
Restart the server for configuration to take effect.


PHP
---

Uncomment this line from `/etc/apache2/httpd.conf`:
```
LoadModule php5_module libexec/apache2/libphp5.so
```

### [Composer](http://getcomposer.org/)

Get a `php.ini` file:
```bash
sudo cp /etc/php.ini.default /etc/php.ini
```
and add the following lines at the end:
```
[detect_unicode]
detect_unicode = Off
```

Download and symlink:
```bash
cd ~/Dev/PHP
curl https://getcomposer.org/installer | php
ln -s ~/Dev/PHP/composer.phar ~/.dotfiles/bin/composer
```

