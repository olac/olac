<?php

function get_mime_types($accept_string) {
    $types = split(",", $accept_string);
    $result = array();
    foreach ($types as $v) {
        $x = split(";", trim($v));
        $result[] = trim($x[0]);
    }
    return $result;
}

function get_vocabulary_name() {
    $a = split("/", $_SERVER["PATH_INFO"]);
    if (count($a) != 2) {
        return null;
    } else {
        return $a[1];
    }
}

function is_valid_vocabulary($name) {
    $filename = "REC/$name.rdf";
    return file_exists($filename);
}

function respond($name) {
    $headers = getallheaders();
    $types = get_mime_types($headers["Accept"]);
    if (in_array("application/rdf+xml", $types)) {
        $handle = fopen("REC/$name.rdf", "r");
        header("Content-Type: application/rdf+xml");
    } else {
        $handle = fopen("REC/$name.html", "r");
        header("Content-Type: text/html");
    }
    fpassthru($handle);
}

$vocab = get_vocabulary_name();
if (is_valid_vocabulary($vocab)) {
    respond($vocab);
} else {
    header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
    echo "404 Not Found\n";
}

?>
