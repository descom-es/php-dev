<?php

namespace Descom\Skeleton\Test;

use Descom\Common\CsFixer;
use PHPUnit\Framework\TestCase;

class CsFixerTest extends TestCase
{
    public function testExample()
    {
        $this->assertIsArray(CsFixer::rules());
    }
}
