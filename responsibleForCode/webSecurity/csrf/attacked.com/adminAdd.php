<?php
session_start();

if($_SESSION["userId"]) 
	addUser();
else
	echo "please login";

function addUser(){

	$userInfo = "name:".$_REQUEST["name"]."pwd:".$_REQUEST["pwd"]."\r\n";
	file_put_contents("useradded",$userInfo,FILE_APPEND);
}
