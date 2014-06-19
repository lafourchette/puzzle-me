<?php
/*
Write a program that return the name of the first client in test.db:clients
 */
$db = new \SQLite3(__DIR__.'/../test.db');
$result = $db->query("SELECT * FROM clients");
$row = $result->fetchArray();
echo $row['name'];
