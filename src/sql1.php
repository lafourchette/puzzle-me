<?php
$db = new \SQLite3(__DIR__.'/../test.db');
$result = $db->query("SELECT * FROM clients");
$row = $result->fetchArray();
echo $row['name'];
