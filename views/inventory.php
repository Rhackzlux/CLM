<?php 
	include 'header.php';
	
?>



</html>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 col-md-2 sidebar">
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
			<li>
				<a href="members">
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
			<li class="active">
				<a href="#">
					<svg class="glyph stroked clipboard with paper">
						<use xlink:href="#stroked-clipboard-with-paper"/>
					</svg>
					Inventory
				</a>
			</li>
			<!-- <li>
				<a href="report">
					<svg class="glyph stroked line-graph">
						<use xlink:href="#stroked-line-graph"/>
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
				<li class="active">Inventory</li>
			</ol>
			<div class="breadcrumb">
				<div class="row">
					<div class="col-md-12">
						<ul class="nav nav-pills"> 
							<li class="active"><a href="#new" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;INVENTORY</a></li>
							<li><a href="#pulledout" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Borrowed </a></li>
							<li><a href="#lost" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Returned </a></li>
							<!-- <li><a href="#damaged" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Damaged</a></li> -->
							<!-- +
					
							<li><a href="#pulledout" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Total Items</a></li>
							 <li><a href="#transferred" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Transferred</a></li>
							<li><a href="#report2" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Borrowed</a></li> -->
							<!-- <li><a href="#pulledout" data-toggle="tab"><i class=""></i>&nbsp;&nbsp;Total Items</a></li> -->
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
							<table class="table table_dashboard">
						<thead>
							<tr>
								<td><strong>Model</strong></td>
								<td><strong>Category</strong></td>
								<td><strong>Name</strong></td>
								<td><strong>Description</strong></td>
								<td><strong>Quantity</strong></td>
								<td><strong>Status</strong></td>
								
								
							</tr>
						</thead>
					</table>
							</div>
							<div class="tab-pane fade" id="pulledout">
							
							<table style="width:500px;" class="table table-bordered tbl_borrower">
							<thead>
								<tr>
									<th>Borrower Name</th>
									<th>Borrowed Date</th>
									<th>Items Borrowed</th>
									<th>Room</th>
								</tr>
							</thead>
						</table>
							</div>
							<style>
							
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
						
							<div class="tab-pane fade" id="lost">
								<table class="table table-bordered tbl_return">
							<thead>
								<tr>
									<th>Borrower Name</th>
									<th>Returned Items</th>
									<th>Borrowed Date</th>
									<th>Returned Date</th>
									
								</tr>
							</thead>
						</table>
							</div>
							
							
							<div class="tab-pane fade" id="transferred">
								<div class="row">
									<div class="col-sm-1 pull-right">
										<div class="form-group text-right">
											<button type="button" class="btn btn-primary" id="btnReloadTransferredList">Reload List</button>
										</div>
									</div>
									<div class="col-sm-3 pull-right">
										<div class="form-group">
											<select id="selectYearTransferred" class="form-control">
												<option value="">Show All</option>
												<?php
												$currentYear = date('Y');
												for($i = $currentYear; $i >= ($currentYear - 15); $i--): 
												?>
													<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
												<?php endfor; ?>
											</select>
										</div>
									</div>
									<div class="col-sm-3 pull-right">
										<div class="form-group">
											<select id="selectMonthTransferred" class="form-control">
												<option value="">Show All</option>
												<?php 
												$monthArr = array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
												for($i = 0; $i < 12; $i++): 
													$month = ($i + 1);
												?>
													<option value="<?php echo $month; ?>"><?php echo $monthArr[$i]; ?></option>
												<?php endfor; ?>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<table class="table table_inventory_transfer">
											<thead>
												<tr>
													<th>Model</th>
													<th>Category</th>
													<th>Name</th>
													<th>No. of items</th>
													<th>Room</th>
													<th>Person-in-charge</th>
													<th>User</th>
													<th>Date Transferred</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="report2">
								<div class="row">
									<div class="col-sm-1 pull-right">
										<div class="form-group text-right">
											<button type="button" class="btn btn-primary" id="btnReloadList">Reload List</button>
										</div>
									</div>
									<div class="col-sm-3 pull-right">
										<div class="form-group">
											<select id="selectYear" class="form-control">
												<option value="">Show All</option>
												<?php
												$currentYear = date('Y');
												for($i = $currentYear; $i >= ($currentYear - 15); $i--): 
												?>
													<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
												<?php endfor; ?>
											</select>
										</div>
									</div>
									<div class="col-sm-3 pull-right">
										<div class="form-group">
											<select id="selectMonth" class="form-control">
												<option value="">Show All</option>
												<?php 
												$monthArr = array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
												for($i = 0; $i < 12; $i++): 
													$month = ($i + 1);
												?>
													<option value="<?php echo $month; ?>"><?php echo $monthArr[$i]; ?></option>
												<?php endfor; ?>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<table class="table tbl_return">
											<thead>										
												<tr>										 
													<th>Borrower</th>
													<th>Items</th>
													<th>Borrowed Date</th>
													<th>Returned Date</th>
													
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- panel -->
			</div><!-- panel -->
		</div><!-- row


	</div> -->



<?php include 'footer.php'; ?>