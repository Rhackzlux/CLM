<?php
	require_once 'session.php';
	include '../class/config/config.php'; // Ensure PDO is used
?>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tables = [
        'borrow', 'equipment', 'equipment_inventory', 'history_logs', 
        'item', 'item_inventory', 'item_stock', 'item_transfer', 
        'reservation', 'reservation_status'
    ];

    try {
        // Begin transaction safely
        if (!$conn->inTransaction()) {
            $conn->beginTransaction();
        }

        // Disable foreign key checks
        $conn->exec("SET FOREIGN_KEY_CHECKS = 0");

        // Truncate each table and reset auto-increment
        foreach ($tables as $table) {
            $conn->exec("TRUNCATE TABLE `$table`");
            $conn->exec("ALTER TABLE `$table` AUTO_INCREMENT = 1");
        }

        // Enable foreign key checks again
        $conn->exec("SET FOREIGN_KEY_CHECKS = 1");

        // Insert log entry
        $admin_id = $_SESSION['admin_id'] ?? 1; // Use real admin ID if available
        $stmt = $conn->prepare("INSERT INTO history_logs (description, table_name, status_name, user_id, user_type) 
                                VALUES ('Database reset successfully', 'ALL_TABLES', 'Reset Action', ?, '1')");
        $stmt->execute([$admin_id]);

        $conn->commit();
        echo "<script>alert('Database reset successfully!'); window.location.href='index.php';</script>";

    } catch (Exception $e) {
        // Only rollback if transaction is active
        if ($conn->inTransaction()) {
            $conn->rollBack();
        }
        echo "<script>alert('Error resetting database: " . addslashes($e->getMessage()) . "');</script>";
    }
}
?>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<!-- <title>Admin</title> -->

	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="../assets/custom/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/custom/css/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="../assets/custom/css/datepicker.css">
	<link rel="stylesheet" type="text/css" href="../assets/custom/css/datepicker3.css">
	<link rel="stylesheet" type="text/css" href="../assets/custom/css/styles.css">
	<!-- datatables -->
	<link rel="stylesheet" type="text/css" href="../assets/datatables/css/jquery.dataTables.min.css">

	<!-- fontawesome -->
	<link rel="stylesheet" type="text/css" href="../assets/fontawesome/css/font-awesome.min.css">

	<!-- custom -->
	<link rel="stylesheet" type="text/css" href="../assets/mycustom/css/styles.css">

	<!-- toastr -->
	<link rel="stylesheet" type="text/css" href="../assets/toastr/css/toastr.css">

	<!-- select2 -->
	<link rel="stylesheet" type="text/css" href="../assets/select/dist/css/select2.min.css">

	<!-- amcharts -->
	<link rel="stylesheet" href="../assets/amcharts/css/export.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../assets/fullcalendar/fullcalendar.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/datetimepicker/datetimepicker.css">

</head>
<body class="">


	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		
	<div style="background-color:#450f4c;"lass="container-fluid">
	
	<div style = "background-color:#450f4c;"class="navbar-header">
	
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"> 
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>   
				<a class="navbar-brand" href="#"><img src="../bg-images/cocs.png" alt="Logo" style="width: 30px; height: 30px; vertical-align: middle; margin-right: 8px;">COMPUTER LABORATORY MANAGEMENT SYSTEM</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> <b><?php echo $_SESSION['admin_name']; ?></b><span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="user_profile"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
							<li><a href="../class/logout/logout"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li> <br>
							<center> 
							<li> 
				<form method="post">
				<button style = "text-align:Center; color:black;  "  class="reset-db " type="submit" onclick="return confirm('Are you sure you want to reset the all table database?');">
    Reset Database
</button>

    </form> 
</li>
</center>
						</ul>
					</li>
					<li class="dropdown pull-right notification">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-bell-o"></i>
							<span id="reserveBadge" class="badge badge-primary"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="reservation">
									<span id="reserveBadge2" class="today_reservation badge"></span> - Today's Reservation
								</a>
							</li>
						</ul>
					</li>
					<li class="dropdown pull-right notification">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-clock-o"></i>
							<span id="dueBadge" class="badge badge-primary"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="borrow">
									<span id="dueBorrow" class="badge"></span> - Borrow Due
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>	
