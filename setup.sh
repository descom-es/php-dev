#!/bin/bash

CS_FIXER_CONFIG=$(cat <<EOF
<?php

\$finder = Symfony\Component\Finder\Finder::create()
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
    ->setFinder(\$finder);
EOF
)

composer require -n --dev descom/dev friendsofphp/php-cs-fixer &&
echo CS_FIXER_CONFIG > .php-cs-fixer.dist.php