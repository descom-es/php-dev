<?php

namespace Descom\Dev\Test;

use Descom\Dev\CsFixer;
use PHPUnit\Framework\TestCase;

class CsFixerTest extends TestCase
{
    public function testExample()
    {
        $this->assertTrue(CsFixer::rules()['@PSR12']);
    }
}
