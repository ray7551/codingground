<?php
$fp = fopen('words.txt', 'r');
$arr = [];
while($line = fgets($fp)){
    $line = strtolower($line);
    $line = preg_replace('#[,.\s\n]+#', ' ', $line);
    $words = explode(' ', trim($line));
    $arr = array_merge($arr, $words);
}
$count = array_count_values($arr);
arsort($count);
print_r($count);
fclose($fp);
