<?php
// reads the external example passed via argv:
$test = fread(fopen($argv[1],"r"),filesize($argv[1]));

$lines = explode(PHP_EOL,$test);


foreach ($lines as $line) {
    if ($line != ""){
        $d = explode(",",$line);
        $mod = $d[0] - floor($d[0]/$d[1])*$d[1] ;
        echo $mod , PHP_EOL;
    }
};

