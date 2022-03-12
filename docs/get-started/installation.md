---
sidebar_position: 2
---

# Installation

We want it to be as easy as possible to get started with Reiko. There are a variety of options for developing and running a Reiko project on your own computer.

## Install Using Composer

If your computer already has PHP and Composer installed, you may create a new Reiko project by using Composer directly. After the application has been created, you may start Reiko's local development server using the Reiko CLI's <code>app:run</code> command:

```
$ composer create-project justalinko/reikoframework:dev-master project-name
$ cd project-name
$ php reiko app:run
```

## Install in Linux

If you using Linux OS or WSL ( Windows Subsystem for Linux ) you can use this option for installing reiko framework
Make sure you have installed curl in your linux system.

```
curl -s "https://reikophp.justalinko/linux-install.sh" | bash
```

## Install in Windows

We not recommend you are using Windows for using reiko framework, because maybe some commands from `reiko cli` don't work, we suggest you to install WSL first on your windows system. then run how to install with linux.

Sorry about that, we need to develop this again to support all operating systems and we will continue to develop it!
