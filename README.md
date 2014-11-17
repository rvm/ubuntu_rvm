RVM package for Ubuntu
===

[RVM](http://rvm.io/) is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.

This package installs a multi-user rvm and provides automatic updates through a Ubuntu PPA.

# Install

## 1. Add the PPA and install the package

Open a terminal (`Ctrl+Alt+T`) and run:

```term
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
```

## 2. Change your terminal

Now, in order to always load rvm, change the Ubuntu default terminal to always perform a login.

At terminal window, click `Edit` > `Profile Preferences` > `Title and Command` > check `Run command as login shell`.

## 3. Logout and login

A lot of changes were made and in order to properly get all them working, you need to login and logout. This requires not only close terminal, but really logout and login again.

## 4. Make local gemsets

It's a good convention install the gemsets separated by each user.

To enable local gemsets for your user, open a terminal (`Ctrl+Alt+T`) and run:

```term
rvm user gemsets
```

## 5. Install a ruby

Now you're ready to install rubies. Open a terminal (`Ctrl+Alt+T`) and run:

```term
rvm install ruby
```
