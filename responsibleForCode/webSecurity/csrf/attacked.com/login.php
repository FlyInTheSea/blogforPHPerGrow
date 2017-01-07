<?php
session_start();
if(checkLogin())
echo "already login";
else{



	if(isset($_REQUEST['name'])){
	
		if($_REQUEST['name'] == "admin"&& $_REQUEST['pwd'] == "123456"){
			// do login
			
			$_SESSION['userId'] = uniqid();
			echo "login successfully";
		}else{
			echo "wrong name or pwd";
		}

		header("login.php");

	}else{



	echo <<<cc
	<form>
		<input type="text" name="name" value="admin" >
		<input type="password" name="pwd"  value="123456" >
		<input type="submit">
	</form>
cc;
	}
}







function checkLogin(){
	// if userid is not defined  the user didn't login
	return isset($_SESSION['userId']);
}