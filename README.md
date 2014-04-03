# LAMP Stacks ready for Drupal 7.2 with Vagrant & Puppet

Allows those with an interest in exploring Drupal an easy way to create a virtual development environment.

## This would not exist without the following repositories:
Forked from:
* [michaelck/puppet-lamp-stack-for-omeka](https://github.com/michaelck/puppet-lamp-stack-for-omeka)
* Which was based on:
* [jrodriguezjr/puppet-lamp-stack](https://github.com/jrodriguezjr/puppet-lamp-stack).
* [PerishableDave/puppet-lamp-stack](https://github.com/PerishableDave/puppet-lamp-stack).
* [jas0nkim/my-vagrant-puppet-lamp](https://github.com/jas0nkim/my-vagrant-puppet-lamp).

## Prerequisites
* [Vagrant](http://www.vagrantup.com/)
* [Virtual Box](https://www.virtualbox.org/)

## Instructions
0. Ensure Vagrant (http://www.vagrantup.com/) and Virutal Box (https://www.virtualbox.org/) are installed.
1. Open Terminal and install precise32 Vagrant box with the following command (if not installed already):

        $ vagrant box add precise32 http://files.vagrantup.com/precise32.box

2. Clone this repository.
3. Create directory (new folder) "webroot" in the root directory of the clone. This will act as your root web folder.
4. In terminal, change directory to the Git repo root, and start the vagrant box with the following command (may take 1-2 minutes):

        $ vagrant up

5. You're virtual server has been created! Open a browser and visit http://localhost:8888 and follow the prompts to finish the Drupal installation. Note that your local DB Name, Username, and Password are: drupal

WARNING: DO NOT USE THESE CREDENTIALS OUTSIDE OF YOUR DEV ENVIRONMENT AS THEY ARE OBVIOUSLY VERY WEAK!!! 
If you'd like to alter the default local DB User you can do so on line 15 of modules/drupal/manifests/init.pp


Optional: If you'd like to access your new Drupal server via the terminal, issue the following command while in the Git repo root:

        $ vagrant ssh
        


## System Package include

* apache2 - rewrite mode enabled, having virtual host with config - refer manifest/vagrant_webroot.sample
* php5
* php5-cli
* php5-mysql
* php-pear - installed packages: phpunit and its dependencies
* php5-dev
* php5-gd
* php5-mcrypt
* libapache2-mod-php5
* mysql-server
* curl
* vim
* htop
* unzip
* imagemagick
* drupal
