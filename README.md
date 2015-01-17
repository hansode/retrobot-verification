retrobot-verification
=====================

[retrobot](https://github.com/mirakui/retrobot) verification box

+ [@hansode_retro](https://twitter.com/hansode_retro)
+ [@hansode_retro2](https://twitter.com/hansode_retro2)
+ [@hansode_retro3](https://twitter.com/hansode_retro3)

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

References
----------

+ [mirakui/retrobot](https://github.com/mirakui/retrobot)
+ [1年前の自分と暮らす - 昼メシ物語](http://blog.mirakui.com/entry/2014/01/25/174428)
+ [自分の1年前のツイートを見るretrobotをいれてみる - pixyzehn blog](http://rikei-webmemo.hateblo.jp/entry/2014/03/15/103512)

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
