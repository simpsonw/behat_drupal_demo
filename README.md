This repository provides a basic setup for using Behat with Drupal.

Requirements
=============
* PHP 5.3.2+
* MySQL
* Apache
* Drush (https://github.com/drush-ops/drush)
* Composer (https://getcomposer.org/)
* Selenium Standalone Server (http://www.seleniumhq.org/download/)

This tutorial has been tested on Linux Mint 17.1 and should probably work on Mac OS X as well.  It will probably work on Windows with some modification, but there may be some snags.

Installation
============
0. Clone this repository into a directory Apache will serve.  For the purposes of this README, we will assume `/var/www/behat_drupal_demo`.
1. Create an empty database in MySQL.  For the purposes of this README, we will refer to this database as `behat_drupal_demo`.
2. Go to the root directory of the repo in a terminal: `cd /var/www/behat_drupal_demo`
3. Install the Drupal site using `drush make drupal.make drupal --prepare-install`
4. Visit your Drupal site in the browser and follow the installation instructions.
5. Visit the tests directory `cd tests`
6. Install the needed components with Composer: `composer install`.
7. Copy `behat.local.yml.default` to `behat.local.yml`.
8. Open `behat.local.yml` in a text editor and set `base_url` to the base URL of your Drupal installation (we will assume `http://localhost/behat_drupal_demo/drupal`) and set  `drupal_root` to the base file path of your Drupal installation (we will assume `/var/www/behat_drupal_demo/drupal`).


Testing Behat
=======================
The Behat binary will be installed in `/tests/bin`.  You can view a list of the available defined steps by doing:

`cd tests`
`bin/behat -dl`

You must be in the `tests` directory to run the Behat executable, otherwise you will get an exception.

To view detailed information about where a step is defined, run `behat -di`
