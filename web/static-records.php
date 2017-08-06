<?php

require_once('olac.php');

function get_content($item) {
    $cmd = "unzip -p " . olacvar("static_records/dir") . "/xml.zip '$item'";
    $content = shell_exec($cmd);
    if ($content === NULL) {
        return FALSE;
    } else {
        return $content;
    }
}

function respond($item) {
    $content = get_content($item);
    $header = "Content-Type: text/xml";
    if ($content === FALSE) {
        header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
        echo "404 Not Found\n";
    } else {
        header($header);
        print($content);
    }
}

function get_item_id() {
    $s = substr($_SERVER["PATH_INFO"], 1);
    $s2 = preg_replace('/\\.xml$/', "", $s);
    if ($s2 === NULL) return $s;
    else return $s2;
}

$item = get_item_id();
respond($item);

?>
