retrobot-verification
=====================

[retrobot](https://github.com/mirakui/retrobot) verification box

+ [@hansode_retro](https://twitter.com/hansode_retro) - What did [@hansode](https://twitter.com/hansode) do 1 year ago today?
+ [@hansode_retro2](https://twitter.com/hansode_retro2) - What did [@hansode](https://twitter.com/hansode) do 2 years ago today?
+ [@hansode_retro3](https://twitter.com/hansode_retro3) - What did [@hansode](https://twitter.com/hansode) do 3 years ago today?

Requirements
------------

+ Vagrant (>= 1.6.5)(http://www.vagrantup.com/downloads.html)
+ Platforms
  + Virtualbox (>= 4.3.20)(https://www.virtualbox.org/wiki/Downloads)
  + VMware Workstaion (>= 10)(https://www.vmware.com/go/downloadworkstation)
+ Vagrant VMware plugin if you're using vmware (http://www.vagrantup.com/vmware)

Getting Started
---------------

Clone a repository.

```
$ git clone https://github.com/hansode/retrobot-verification.git
$ cd retrobot-verification
```

Download [tweets.zip](https://blog.twitter.com/2012/your-twitter-archive) and deploy to `retrobot-verification`.

```
$ ls -l tweets.zip
```

Create a VM.

```
$ make up
```

Connect to the VM.

```
$ vagrant ssh
```

Change into retrobot project directory. `/home/vagrant/retrobot`

```
$ cd retrobot
```

Get token/secret pair of Twitter OAuth.

```
$ rbenv exec bundle exec get-twitter-oauth-token
```

Unzip tweets.zip.

```
$ unzip /vagrant/tweets.zip -d tweets
```

Configure retrobot.

```
$ cp retrobot.example.yml retrobot.yml
$ cp retrobot.example.yml retrobot2.yml
$ cp retrobot.example.yml retrobot3.yml
```

```
$ vi retrobot.yml
$ vi retrobot2.yml
$ vi retrobot3.yml
```

Run retrobot.

```
$ ./bin/retrobot -c ./retrobot.yml
$ ./bin/retrobot -c ./retrobot2.yml
$ ./bin/retrobot -c ./retrobot3.yml
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
