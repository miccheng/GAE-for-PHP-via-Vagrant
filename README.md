# Google App Engine for PHP Sample Code

## Intro

This will startup a VirtualBox Virtual Machine (VM) (running Ubuntu Server 64-bit 12.10) and install Google App Engine (GAE) for PHP.

This is experimental and will help you [get started](https://developers.google.com/appengine/docs/php/gettingstarted/) with GAE for PHP.

## Installing

1. Install VirtualBox

	Download from [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads). Remember to download the VirtualBox Extension Pack.

2. Install Vagrant
	
	Download from [http://downloads.vagrantup.com](http://downloads.vagrantup.com/).

3. Clone this repo into a local folder

	```bash
$ git clone git://github.com/miccheng/GAE-for-PHP-via-Vagrant.git gaephp
$ git submodule init
$ git submodule update
```

4. Start Vagrant

	`cd` into the checked out folder (`./gaephp/`) to start the VM:

	```bash
$ vagrant up
```

5. Login to the virtual machine via SSH

	```bash
$ vagrant ssh
```

## Writing Code

* Just update the codes inside the `./project` folder.
* You can follow the tutorials at [https://developers.google.com/appengine/docs/php/gettingstarted/](https://developers.google.com/appengine/docs/php/gettingstarted/).
* You can also try [installing WordPress](https://developers.google.com/appengine/articles/wordpress).

## Run the Code

1. Start the development server.

	```bash
$ cd /usr/local/src/
$ ./google_appengine/dev_appserver.py --host=0.0.0.0 --admin_host=0.0.0.0 \
   --php_executable_path=/usr/bin/php-cgi /project/
```

	*__Note__: It is important to use `--host=0.0.0.0` and `--admin_host=0.0.0.0` so that the GAE development server will be accessible from outside the VM.*

2. View the Admin Console

	Open this URL: `http://localhost:8000`

3. View the code

	Open this URL: `http://localhost:8080`



