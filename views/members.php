<?php 
include 'header.php';
?>
		<style>
/* Add this CSS to fix the table_faculty layout */
.table_faculty {
    width: 100%;               /* Full width of the container */
    table-layout: auto;         /* Allows columns to expand based on content */
    white-space: nowrap;        /* Prevents text from wrapping */
    border-collapse: collapse;  /* Ensures borders are properly collapsed */
}

.table_faculty th, .table_faculty td {
    padding: 12px;              /* Adds spacing within cells */
    text-align: left;           /* Aligns text to the left */
    border: 1px solid #ddd;     /* Consistent border styling */
}

/* Ensure the table container is responsive */
.panel-body {
    overflow-x: auto;           /* Adds horizontal scroll on small screens */
}

.tbl_borrower {
    width: 100%;               /* Full width of the container */
    table-layout: auto;         /* Allows columns to expand based on content */
    white-space: nowrap;        /* Prevents text from wrapping */
}

.tbl_borrower th, .tbl_borrower td {
    padding: 12px;              /* Adds spacing within cells */
    text-align: left;           /* Aligns text to the left */
}
</style>
<div id="sidebar-collapse" class="col-sm-2 col-md-2 col-lg-2 sidebar">
	<form role="search">
		<div class="form-group">
			<!-- <input type="text" class="form-control" placeholder="Search"> -->
		</div>
	</form>
	<ul class="nav menu">
		<li class="">
			<a href="dashboard">
				<svg class="glyph stroked dashboard-dial">
					<use xlink:href="#stroked-dashboard-dial"></use>
				</svg>
				Dashboard
			</a>
		</li>
		<li class="parent ">
			<a href="#sub-item-1" data-toggle="collapse">
					<span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Transaction 
				</a>
			<ul class="children collapse" id="sub-item-1">
				<li>
					<a class="" href="reservation">
						<svg class="glyph stroked eye">
							<use xlink:href="#stroked-eye"/>
						</svg>
						Reservations
					</a>
				</li>
				<li>
					<a class="" href="new">
						<svg class="glyph stroked plus sign">
							<use xlink:href="#stroked-plus-sign"/>
						</svg>
						New
					</a>
				</li>
				<li>
					<a class="" href="borrow">
						<svg class="glyph stroked download">
							<use xlink:href="#stroked-download"/>
						</svg>
						Borrowed Items
					</a>
				</li>
				<li>
					<a class="" href="return">
						<svg class="glyph stroked checkmark">
							<use xlink:href="#stroked-checkmark"/>
						</svg>
						Returned Items
					</a>
				</li>
			</ul>
		</li>
		<?php if($_SESSION['admin_type'] == 1){ ?>
		<li>
			<a href="items">
				<svg class="glyph stroked desktop">
					<use xlink:href="#stroked-desktop"/>
				</svg>
				Computer Laboratory
			</a>
		</li>
		<li class="active">
			<a href="#">
				<svg class="glyph stroked male user ">
					<use xlink:href="#stroked-male-user"/>
				</svg>
				User/Borrower
			</a>
		</li>
		<li>
			<a href="room">
				<svg class="glyph stroked app-window">
					<use xlink:href="#stroked-app-window"></use>
				</svg>
				Room
			</a>
		</li>
		<li>
			<a href="inventory">
				<svg class="glyph stroked clipboard with paper">
					<use xlink:href="#stroked-clipboard-with-paper"/>
				</svg>
				Inventory
			</a>
		</li>
		<!-- <li>
			<a href="report">
				<svg class="glyph stroked line-graph">
					<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#stroked-line-graph"/>
				</svg>
				Graph
			</a>
		</li> -->
		<li>
			<a href="user">
				<svg class="glyph stroked female user">
					<use xlink:href="#stroked-female-user"/>
				</svg>
				User
			</a>
		</li>
			<?php 
				}
				($_SESSION['admin_type'] == 1) ? include('include_history.php') : false;
			 ?>
	</ul>
</div><!--/.sidebar-->

<div class="col-sm-9 col-lg-10 col-md-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-3 main">
		
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="dashboard"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Borrower</li>
			</ol>
			
			<div class="breadcrumb">
			<button class="btn btn-primary add_student">
				<svg class="glyph stroked plus sign">
					<use xlink:href="#stroked-plus-sign"/>
				</svg>
				Add Student
			</button>
			<button class="btn btn-primary add_faculty">
				<svg class="glyph stroked plus sign">
					<use xlink:href="#stroked-plus-sign"/>
				</svg>
				Add Faculty
			</button>
				<div class="row">
					<div class="col-md-12">
						<ul class="nav nav-pills">
							<li class="active"><a href="#new" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Student</a></li>
							<li><a href="#lost" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Faculty</a></li>
							
						</ul>
					</div>
				
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="tab-content">
							<div class="tab-pane fade in active" id="new">
						<table class="table table_member">
							<thead>
<tr>
	<th>Username</th>
	
	<th>Name</th>
	<th>Gender</th>
	<th>Contact</th>
	<th>Department</th>
	<th>Type</th>
	<th>Year/Section</th>
	<th>Action</th>
</tr>
</thead>

					</table>
							</div>
								<div class="tab-pane fade" id="lost">
								<table class="table table-bordered table_faculty">
							<thead>
							<tr>
								<th>Employee ID Number</th>
								<th>Name</th>
								<th>Gender</th>
								<th>Contact</th>
								<th>Department</th>
								<th>Type</th>
								<!-- <th>Year/Section</th> -->
						        <th>Action</th>
							</tr>
							</thead>
						</table>
							</div>
			
						
							
<div class="right-sidebar member-side">
	<div class="sidebar-form">
		<div class="container-fluid">
			<h4 class="alert bg-success">Add Member</h4>
			<div class="form-group">
				<a class="btn btn-primary btn-block" target="_blank" download="member_format.csv" href="../assets/downloadables/member_format.csv">
					<i class="fa fa-download"></i>
					Download Format
				</a>
			</div>
			<form class="frm_addmember" enctype="multipart/form-data">
				<div class="form-group">
					<label>Upload File</label>
					<input type="file" name="file" class="form-control" required>
					<input type="hidden" name="key" value="add_member">
				</div>
				<div class="form-group">
					<button class="btn btn-danger cancel_member" type="button">Cancel</button>
					<button class="btn btn-success" type="submit">Upload</button>
				</div>
			</form>	
		</div>
	</div>
</div>

<div class="right-sidebar divedit-member">
	<div class="container-fluid">
		<br>
		<br>
		<div class="member-form"></div>
	</div>
</div>



<?php include 'footer.php'; ?>