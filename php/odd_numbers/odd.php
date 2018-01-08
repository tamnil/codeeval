<?php
// reads the external example passed via argv:
// $test = fread(fopen($argv[1],"r"),filesize($argv[1]));
for (  $i =1 ; $i < 100 ; $i++ ){
    if ($i % 2 != 0){
        echo $i . PHP_EOL ;
    }
}

