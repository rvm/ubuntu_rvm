RVM package for Ubuntu
===

[RVM](http://rvm.io/) is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.

This package installs rvm with some defaults:
- stable rvm is used;
- rvm is installed using `mixed-mode` install: usable by all users on the system, with isolated rubies/gemsets in user's $HOME (see more [here](http://rvm.io/rvm/install#installation-explained));
- rvm is installed into `/usr/share/rvm` (as Debian/Ubuntu convention);
- all sudoers are automatic added to `rvm` group at install;
- all sudoers get local gemsets enabled;

Additionally automatic updates are provided by a Ubuntu PPA.

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

## 2. Change your terminal window

Now, in order to always load rvm, change the Gnome Terminal to always perform a login.

At terminal window, click `Edit` > `Profile Preferences`, click on `Title and Command` tab and check `Run command as login shell`.

![Terminal Screenshot](terminal.png)

## 3. Restart

A lot of changes were made (scripts that needs to be reloaded, you're now member of `rvm` group) and in order to properly get all them working, you need to login and logout. This requires not only close terminal, but restart your system.

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

## 1. Cannot add PPA

If you're facing the following error:

```terminal
Cannot add PPA: 'ppa:~rael-gc/ubuntu/rvm'.
ERROR: '~rael-gc' user or team does not exist
```

Sounds like you're under a proxy. Please, follow instructions to [add-apt-repository to work through a proxy](https://askubuntu.com/questions/53146/how-do-i-get-add-apt-repository-to-work-through-a-proxy).

## 2. Cannot upgrade to rvm master due `Operation not permitted`

If you're trying to upgrade to `rvm master` and are facing error messages like this:

```terminal
chmod: changing permissions of '/usr/share/rvm/src/rvm': Operation not permitted
```

Fix it with: `rvm cleanup all`.
