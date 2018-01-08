<?php
// reads the external example passed via argv:
$test = fread(fopen($argv[1],"r"),filesize($argv[1]));

$lines = explode(PHP_EOL,$test);


foreach () {
    if ($line != ""){
        $bin = decbin($line);
        echo $bin , PHP_EOL;
    }
};

