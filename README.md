retrobot-verification
=====================

[retrobot](https://github.com/mirakui/retrobot) verification box

Requirements
------------

+ Vagrant (>= 1.6.5)(http://www.vagrantup.com/downloads.html)
+ Platforms
  + Virtualbox (>= 4.3.20)(https://www.virtualbox.org/wiki/Downloads)
  + VMware Workstaion (>= 10)(https://www.vmware.com/go/downloadworkstation)
+ Vagrant VMware plugin if you're using vmware (http://www.vagrantup.com/vmware)

Getting Started
---------------

```
$ make up
```

```
$ vagrant ssh
$ cd retrobot
```

```
$ rbenv exec bundle exec get-twitter-oauth-token

$ unzip /vagrant/tweets.zip -d tweets
$ cp retrobot.example.yml retrobot.yml
$ vi retrobot.yml

$ ./bin/retrobot -c ./retrobot.yml
```

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
