[![OpenCollective](https://opencollective.com/rvm/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/rvm/sponsors/badge.svg)](#sponsors)

RVM package for Ubuntu
===

[RVM](http://rvm.io/) is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.

This package installs rvm with some defaults:
- stable rvm is used;
- rvm is installed using `mixed-mode` install: usable by all users on the system, with isolated rubies/gemsets in user's $HOME (see more [here](http://rvm.io/rvm/install#installation-explained));
- rvm is installed into `/usr/share/rvm` (as Debian/Ubuntu convention);
- automatic updates provided by a Ubuntu PPA; 

Additionally some old packages required to build old ruby binaries (like `libssl1.0-dev`) are automatically available in the PPA too.

# Install

## Pre-requisites

You need `software-properties-common` installed in order to add `PPA` repositories.

If **not** installed, open a terminal (`Ctrl+Alt+T`) and run:

```term
sudo apt-get install software-properties-common
```

## 1. Add the PPA and install the package

Open a terminal (`Ctrl+Alt+T`) and run:

```term
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
```

Add your user to `rvm` group (`$USER` will automatically insert your username):

```term
sudo usermod -a -G rvm $USER
```    

## 2. Change your terminal window

Now, in order to always load rvm, change the Gnome Terminal to always perform a login.

At terminal window, click `Edit` > `Profile Preferences`, click on `Title and Command` tab and check `Run command as login shell`.

![Terminal Screenshot](terminal.png)

Or instead, if you cannot force terminal to perform a login, or you're facing `Command 'rvm' not found`, you can run the following command to append it to your `.bashrc`:

```term
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
```

## 3. Reboot

A lot of changes were made (scripts that needs to be reloaded, you're now member of `rvm` group) and in order to properly get all them working, you need to reboot (in most cases a logout/login is enough, but in some Ubuntu derivatives or some terminal emulators, a shell login is not performed, so we advise to reboot).

## 4. Install a ruby

Now you're ready to install rubies. Open a terminal (`Ctrl+Alt+T`) and run:

```term
rvm install ruby
```

# RVM Usage

RVM complete instructions are available at RVM repository: https://github.com/rvm/rvm

Additionally you can check manual pages too: open a Terminal (`Ctrl+Alt+T`) and run:

```term
man rvm
```

# Troubleshooting

## 0. Reboot

After install RVM, your user was added to a new group, new environment files were created, etc. Usually a logout, login is enough. But in case you're still facing some issues (usually due terminals not running login shells, etc), just try a system reboot.

## 1. Cannot add PPA

If you're facing the following error:

```terminal
Cannot add PPA: 'ppa:~rael-gc/ubuntu/rvm'.
ERROR: '~rael-gc' user or team does not exist
```
Sounds like you're under a proxy. Please, follow instructions to [add-apt-repository to work through a proxy](https://askubuntu.com/questions/53146/how-do-i-get-add-apt-repository-to-work-through-a-proxy).

## 2. Command 'rvm' not found

Check if your terminal is performing a bash login like describe on [Step 2 "Change your terminal window"](#2-change-your-terminal-window). Or instead, you can run the following command to append it to your `.bashrc`:

```term
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
```

## 3. I need to upgrade to master without wait for new package release

Fine. First install the `rvm-installer` keys:

```terminal
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

Then run:

```terminal
rvmsudo rvm get master
```

## 4. Files permission issues

If you already rebooted, and you're facing any file permission issues during any RVM usage, like:
- `Following files may be not writable`
- `sudo is needed` or 
- `Cannot utime: Operation not permitted`

You can fix it with:

    rvmsudo rvm cleanup all
    rvm fix-permissions

# Contributing

## Backers

[Become a backer](https://opencollective.com/rvm#backer) and support us with a small monthly donation to help us continue our activities.

[![Backer](https://opencollective.com/rvm/backer/0/avatar.svg)](https://opencollective.com/rvm/backer/0/website)
[![Backer](https://opencollective.com/rvm/backer/1/avatar.svg)](https://opencollective.com/rvm/backer/1/website)
[![Backer](https://opencollective.com/rvm/backer/2/avatar.svg)](https://opencollective.com/rvm/backer/2/website)
[![Backer](https://opencollective.com/rvm/backer/3/avatar.svg)](https://opencollective.com/rvm/backer/3/website)
[![Backer](https://opencollective.com/rvm/backer/4/avatar.svg)](https://opencollective.com/rvm/backer/4/website)
[![Backer](https://opencollective.com/rvm/backer/5/avatar.svg)](https://opencollective.com/rvm/backer/5/website)
[![Backer](https://opencollective.com/rvm/backer/6/avatar.svg)](https://opencollective.com/rvm/backer/6/website)
[![Backer](https://opencollective.com/rvm/backer/7/avatar.svg)](https://opencollective.com/rvm/backer/7/website)
[![Backer](https://opencollective.com/rvm/backer/8/avatar.svg)](https://opencollective.com/rvm/backer/8/website)
[![Backer](https://opencollective.com/rvm/backer/9/avatar.svg)](https://opencollective.com/rvm/backer/9/website)
[![Backer](https://opencollective.com/rvm/backer/10/avatar.svg)](https://opencollective.com/rvm/backer/10/website)
[![Backer](https://opencollective.com/rvm/backer/11/avatar.svg)](https://opencollective.com/rvm/backer/11/website)
[![Backer](https://opencollective.com/rvm/backer/12/avatar.svg)](https://opencollective.com/rvm/backer/12/website)
[![Backer](https://opencollective.com/rvm/backer/13/avatar.svg)](https://opencollective.com/rvm/backer/13/website)
[![Backer](https://opencollective.com/rvm/backer/14/avatar.svg)](https://opencollective.com/rvm/backer/14/website)
[![Backer](https://opencollective.com/rvm/backer/15/avatar.svg)](https://opencollective.com/rvm/backer/15/website)
[![Backer](https://opencollective.com/rvm/backer/16/avatar.svg)](https://opencollective.com/rvm/backer/16/website)
[![Backer](https://opencollective.com/rvm/backer/17/avatar.svg)](https://opencollective.com/rvm/backer/17/website)
[![Backer](https://opencollective.com/rvm/backer/18/avatar.svg)](https://opencollective.com/rvm/backer/18/website)
[![Backer](https://opencollective.com/rvm/backer/19/avatar.svg)](https://opencollective.com/rvm/backer/19/website)

## Sponsors

[Become a sponsor](https://opencollective.com/rvm#sponsor) and get your logo on our README on Github with a link to your site.

[![Sponsor](https://opencollective.com/rvm/sponsor/0/avatar.svg)](https://opencollective.com/rvm/sponsor/0/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/1/avatar.svg)](https://opencollective.com/rvm/sponsor/1/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/2/avatar.svg)](https://opencollective.com/rvm/sponsor/2/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/3/avatar.svg)](https://opencollective.com/rvm/sponsor/3/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/4/avatar.svg)](https://opencollective.com/rvm/sponsor/4/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/5/avatar.svg)](https://opencollective.com/rvm/sponsor/5/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/6/avatar.svg)](https://opencollective.com/rvm/sponsor/6/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/7/avatar.svg)](https://opencollective.com/rvm/sponsor/7/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/8/avatar.svg)](https://opencollective.com/rvm/sponsor/8/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/9/avatar.svg)](https://opencollective.com/rvm/sponsor/9/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/10/avatar.svg)](https://opencollective.com/rvm/sponsor/10/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/11/avatar.svg)](https://opencollective.com/rvm/sponsor/11/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/12/avatar.svg)](https://opencollective.com/rvm/sponsor/12/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/13/avatar.svg)](https://opencollective.com/rvm/sponsor/13/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/14/avatar.svg)](https://opencollective.com/rvm/sponsor/14/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/15/avatar.svg)](https://opencollective.com/rvm/sponsor/15/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/16/avatar.svg)](https://opencollective.com/rvm/sponsor/16/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/17/avatar.svg)](https://opencollective.com/rvm/sponsor/17/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/18/avatar.svg)](https://opencollective.com/rvm/sponsor/18/website)
[![Sponsor](https://opencollective.com/rvm/sponsor/19/avatar.svg)](https://opencollective.com/rvm/sponsor/19/website)
