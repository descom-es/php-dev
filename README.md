# php-skeleton

## Install

Via Composer

```bash
composer require descom/common
```

## Usage

```php
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
    ->setRules(Descom\Common\CsFixer::rules())
    ->setFinder($finder);
```

## Testing

``` bash
composer test
```
