<?php
	header("Content-Type: application/json; charset=UTF-8");
	header('Access-Control-Allow-Origin: *');
	$data = json_decode($_GET["varAll"]); //REQUEST GERAL
	$host="127.0.0.1"; //data->host
	$port=3306; //data->port
	$socket=""; //data->socket
	$user="root"; //data->user
	$password=""; //data->password
	$dbname=""; //data->database

	//object varAll padrão de teste ::varAll={"host": "127.0.0.1", "port": "3306", "socket": "", "user": "root", "password": "", "database": "", "query": ""}
	if(empty($data->query)) die("Error: Empty varAll->query");
	$con = new mysqli($data->host, $data->user, $data->password, $data->database, $data->port, $data->socket)
		or die ('Could not connect to the database server' . mysqli_connect_error());

	$returnData=array();
	$result = mysqli_query($con, $data->query) or die("Error: ".mysqli_error($con));
	while($row = mysqli_fetch_assoc($result)) {
		array_push($returnData, $row);
	}
	echo json_encode($returnData);
	$con->close();
?>
