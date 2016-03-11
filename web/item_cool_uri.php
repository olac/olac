<?php

require_once('olac.php');

function get_mime_types($accept_string) {
    $types = split(",", $accept_string);
    $result = array();
    foreach ($types as $v) {
        $x = split(";", trim($v));
        $result[] = trim($x[0]);
    }
    return $result;
}

function get_rdf($item) {
    $cmd = "unzip -p " . olacvar("static_records/dir") . "/rdf.zip '$item.xml'";
    $content = shell_exec($cmd);
    if ($content === NULL) {
        return FALSE;
    } else {
        return $content;
    }
}

function get_html($item) {
    $filename = "static/item/$item.html";
    if (file_exists($filename)) {
        return file_get_contents($filename);
    } else {
        return FALSE;
    }
}

function respond($item) {
    $headers = getallheaders();
    $types = get_mime_types($headers["Accept"]);
    if (in_array("application/rdf+xml", $types)) {
        $content = get_rdf($item);
        $header = "Content-Type: application/rdf+xml";
    } else {
        $content = get_html($item);
        $header = "Content-Type: text/html";
    }
    if ($content === FALSE) {
        header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
        echo "404 Not Found\n";
    } else {
        header($header);
        print($content);
    }
}

function get_item_id() {
    $a = split("/", $_SERVER["PATH_INFO"]);
    if (count($a) != 2) {
        return null;
    } else {
        return $a[1];
    }
}

$item = get_item_id();
respond($item);

?>
