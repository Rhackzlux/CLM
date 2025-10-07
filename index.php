<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>Admin Login</title>

	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="assets/custom/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/datepicker.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/datepicker3.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/styles.css">

	<!-- toastr -->
	<link rel="stylesheet" type="text/css" href="assets/toastr/css/toastr.css">

	<!-- custom -->
	<link rel="stylesheet" type="text/css" href="assets/mycustom/css/styles.css">

	
    
</head>
<body class="index-body">

<div style="display: flex; flex-wrap: wrap; gap: 15px;">
    <?php
    $images = [
        'dashboard.png',
        'login.png',
        'reports.png'
    ];
    foreach ($images as $img) {
        echo '
        <div class="thumb-wrap">
            <a href="images/'.$img.'" target="_blank">
                <img src="images/'.$img.'" class="thumbnail" alt="'.$img.'">
            </a>
            <p>'.ucfirst(str_replace('.png','',$img)).'</p>
        </div>';
    }
    ?>
</div>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div style="background-color:#222;"lass="container-fluid">
			<div style = "background-color:#222;"class="navbar-header">
                
				    <a class="navbar-brand" href="#"><img src="bg-images/cocs.png" alt="" style="width: 30px; height: 30px; vertical-align: middle; margin-right: 8px;">COMPUTER LABORATORY MANAGEMENT SYSTEM</a>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					
				</button>
				<!-- <a class="navbar-brand" href="#"><img src="bg-images/sg.png" alt="Logo" style="width: 30px; height: 30px; vertical-align: middle; margin-right: 8px;">FLVCI EQUIPMENT BORROWING SYSTEM</a> -->
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>	  <br>
<!-- Updated Login Form UI -->
<div class="container vh-100 d-flex justify-content-end align-items-center">
    <div class="col-md-4">
        <!-- Login Form Section -->
		<div class="login-panel panel shadow-sm rounded" style="margin-top: 30px;">

		<div class="panel-heading text-center py-3" style="background-color:rgb(162, 31, 140); color: white; font-weight: bold; border-radius: 5px 5px 0 0;">
            <!-- <img src="bg-images/sg.png" alt="Logo" style="width: 30px; height: 30px; vertical-align: middle; margin-right: 8px;"> -->
            Admin/Staff Login
        </div>
            <div class="panel-body p-4" style="background-color: white; border-radius: 0 0 5px 5px;">
                <form class="frm_index">
				<span>
                        <i class="fas fa-exclamation-triangle" style="color: red; margin-right: 5px;"></i>
                        <i> Admin/Staff Access Only</i>
                    </span> <br><br> 

					<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
                    <fieldset>
                        <div class="form-group mb-3">
                            <input class="form-control" placeholder="Username" name="username" type="text" autofocus="" autocomplete="off" style="padding: 12px; border-radius: 4px; border: 1px solid #ddd;">
                        </div>
						


						<div class="form-group mb-4 position-relative">
                        <input class="form-control" id="password" placeholder="Password" name="password" type="password" style="padding: 12px 40px 12px 12px; border-radius: 4px; border: 1px solid #ddd;">
                        <span id="togglePassword" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); cursor: pointer;">
                            <i class="fas fa-eye" id="eyeIcon"></i>
                        </span>
                    </div>



					<style>
    .form-group {
        position: relative; /* Ensures the icon is positioned relative to this container */
    }
</style>

                        <button class="btn btn-primary btn-block" style="background-color:rgb(62, 59, 56); border: none; padding: 12px; font-weight: bold; border-radius: 4px;">Log in</button>
                        <br>
                        <div class="text-center mt-3">
                            <a href="./member/login" style="color:rgb(243, 14, 14);">Go to Member's Page</a>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div><!-- /.col-->
</div><!-- /.container -->

<!-- Additional Styling -->
<style>
    .container {
        /* height: 100vh; */
        display: flex;
        align-items: center;
        justify-content: center; /* This aligns the login form to the right */
    }

    .panel {
        background-color: rgba(255, 255, 255, 0.9);
    }

    .form-control:focus {
        border-color: #f57200;
        box-shadow: 0 0 5px rgba(245, 114, 0, 0.5);
    }

    .btn-primary:hover {
        background-color: #d96100;
    }

    a:hover {
        text-decoration: underline;
    }
</style>




	<!-- javascript -->
	<script type="text/javascript" src="assets/custom/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="assets/custom/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/toastr/js/toastr.min.js"></script>
	<script type="text/javascript" src="assets/mycustom/js/login.js"></script>
<!-- Include Font Awesome CDN for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- JavaScript to toggle password visibility -->
<script>
    const togglePassword = document.querySelector('#togglePassword');
    const passwordInput = document.querySelector('#password');
    const eyeIcon = document.querySelector('#eyeIcon');

    togglePassword.addEventListener('click', () => {
        // Toggle the type attribute
        const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);
        
        // Toggle the eye icon
        eyeIcon.classList.toggle('fa-eye');
        eyeIcon.classList.toggle('fa-eye-slash');
    });
</script>
</body>
</html>