<?php
	require_once "../config/config.php";

	/**
	* 
	*/
	class login
	{
		public function admin_login($username,$password)
		{
			global $conn;

			$sql = $conn->prepare('SELECT * FROM user WHERE BINARY username = ? AND BINARY password = ? AND status = ?');
			$sql->execute(array($username,$password,1));
			$fetch = $sql->fetch();
			$count = $sql->rowCount();
			if($count > 0){

				session_start();
				$_SESSION['admin_id'] = $fetch['id'];
				$_SESSION['admin_name'] = $fetch['name'];
				$_SESSION['admin_username'] = $fetch['username'];
				$_SESSION['admin_type'] = $fetch['type'];
				echo "1";
			}else{
				echo "0";
			}
		}
		public function member_login($username, $password){
			global $conn;
		
			$sql = $conn->prepare('SELECT * FROM member WHERE BINARY m_username = ? AND BINARY m_password = ? AND m_status = ?');
			$sql->execute(array($username, $password, 1));
			$count = $sql->rowCount();
			$fetch = $sql->fetch();
		
			if($count > 0){
				session_start();
				$_SESSION['member_id'] = $fetch['id'];
				$_SESSION['member_name'] = $fetch['m_fname'] . " " . $fetch['m_lname'];
				$_SESSION['member_type'] = $fetch['m_type'];
				echo "1";
			} else {
				echo "0";
			}
		}
		

	}

	$login =  new login();

	$key = trim($_POST['key']);

	switch ($key) {

		case 'admin_login';
		$username = trim($_POST['username']);
		$password = trim(md5($_POST['password']));
		$login->admin_login($username,$password);
		break;

		case 'member_login':
			$username = trim($_POST['username']);
			$password = trim(md5($_POST['password']));
			$login->member_login($username, $password);
			break;
		
		
	}

?>