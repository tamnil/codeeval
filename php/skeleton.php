<?php
// reads the external example passed via argv:
$test = fread(fopen($argv[1],"r"),filesize($argv[1]));

echo $test;

