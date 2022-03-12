---
sidebar_position: 4
---

# Dependency Injection

Reiko comes with an easy to use dependency injection container. Using dependency injection makes your application more maintainable and decoupled. Another benefit of using the dependency injection pattern is that it greatly increases the testability of the code, thus making it less prone to bugs.

### Composer Repositories

You can install your favorite package with `composer require package/packagename` automatically reiko was autoload your package, import with ``use namespace` in reiko application.

### Creating your own libraries

We don't limit you to input or make your own code library,
there are a few rules you have to follow to do that.

#### Writing Classes

You just need to register the `Reiko\Libraries` namespace at the top of your code!

```
<?php
namespace Reiko\Libraries

Class YourClassName{
    // your code
}
?>
```

#### Register Classes

Not all code libraries are included in the application, so you have to manually register them in the configuration file `app/config/config.php`

```
/** load libraries */
$config['load_libraries'] = [
    \Reiko\Libraries\DB::class,
    \Reiko\Libraries\Handler::class,
    \Reiko\Libraries\Request::class,
    \Reiko\Libraries\Response::class,
    \Reiko\Libraries\Security::class,
    \Reiko\Libraries\Str::class,
    \Reiko\Libraries\Curl::class,
    \Reiko\Libraries\Schema::class,
    \Reiko\Libraries\YourClassName::class \\ Register your code here
];
```

#### Using your own classes

If you've done all the steps above, it's time for you to use your own library!
There is example using your own library in `Handler`

```
<?php
use Reiko\Libraries\YourClassName;

Class IndexHandler extends Handler{

    public function index()
    {
        $YourClass = new YourClassName();

        // your code
    }
}
?>
```
