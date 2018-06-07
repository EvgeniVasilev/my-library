<?php
header('Access-Control-Allow-Headers: Access-Control-Allow-Origin');
header('Access-Control-Allow-Headers: Content-Type');
header('Access-Control-Allow-Origin: http://localhost:3000');

$host = '';
$db = 'books';
$user = '';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];
$pdo = new PDO($dsn, $user, $pass, $opt);


$method = $_SERVER['REQUEST_METHOD'];


switch ($method) {
    case "GET":
        echo getAllRecords();
        break;
    case "POST":
        deleteRecord();
        // get newly updated db
        echo getAllRecords();
        break;
    default:
        echo "Api is good!";
        break;
}

function getAllRecords()
{
    global $pdo;
    $stmt = $pdo->prepare('SELECT * FROM library');
    $stmt->execute();
    $books = $stmt->fetchAll();
    return json_encode($books);
}

function deleteRecord()
{
    global $pdo;
    $id = $_GET['id'];
    $stmt = $pdo->prepare('DELETE  FROM library WHERE id = ' . $id);
    $stmt->execute();
}
