---
sidbar_position: 3
---

# Run Application

There are several ways to run Reiko, below are some ways to run Reiko according to the stage you are doing.

## Run Development mode

Reiko includes a simple development server which can be started with the following command:

```
php reiko app:run
```

Open `http://localhost:8888` in your browser of choice and you're ready to start coding!

## Run Production mode

Reiko includes a simple building tool, you can build your application instantly with `reiko cli`

```
php reiko app:build <appname>
```

And ready to upload in your hosting or server!
Don't worry about configure URLs! we already did it for you,
reiko has index.php in root path serves to create a .htaccess file that will rewrite your url address. **so make sure your hosting or server supports mod_rewrite**

## Updating

Reiko and all your other dependencies can easily be updated when a new patch release is made available using the following command:

```
composer update
```

If you want to bump the Reiko version (e.g. from 6.0._ to 6.1._) then you'll have to update your composer.json file before running the update command.
