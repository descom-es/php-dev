# PHP Dev to Descom.es

## Install

Via Composer

```bash
composer require --dev descom/dev
```

## Usage

### PHP CS Fixer

Create file `.php-cs-fixer.dist.php` in root project with content:

```php
<?php

$finder = Symfony\Component\Finder\Finder::create()
    ->in([
        __DIR__.'/src',
        __DIR__.'/tests',
    ])
    ->name('*.php')
    ->notName('*.blade.php')
    ->ignoreDotFiles(true)
    ->ignoreVCS(true);

return (new PhpCsFixer\Config())
    ->setRules(Descom\Dev\CsFixer::rules())
    ->setFinder($finder);
```

#### Configure PHP CS Fixer in VS Code

Install extension [PHP CS Fixer](https://marketplace.visualstudio.com/items?itemName=junstyle.php-cs-fixer)

With this settings:

```json
{
    "php-cs-fixer.onsave": true,
    "php-cs-fixer.executablePath": "${workspaceFolder}/vendor/bin/php-cs-fixer"
}
```
