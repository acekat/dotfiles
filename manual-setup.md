Folder tree
-----------

Main folder for developments:
```bash
mkdir ~/Dev
cd !$
```


Sublime Text
------------

[ST3](http://www.sublimetext.com/3) *beta*

Symlink binary:
```bash
ln -s /Applications/Sublime Text.app/Contents/SharedSupport/bin/subl ~/.dotfiles/bin/subl
```

### Packages
Manual installation of [Package Control](https://sublime.wbond.net/installation) from [@wbond](https://github.com/wbond) (Will Bond).

Useful packages:
* Theme - Minimal


nodejs
------

[n](https://github.com/visionmedia/n) from [@visionmedia](https://github.com/visionmedia) (TJ Holowaychuk)
```bash
mkdir -p ~/Dev/nodejs
cd !$
git clone https://github.com/visionmedia/n.git
cd n && sudo make install
sudo n stable
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

