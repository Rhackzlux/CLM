<?php 
date_default_timezone_set('Asia/Manila');
	include 'header.php';
?>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 col-md-2 sidebar">
		<form role="search">
			<div class="form-group">
				<!-- <input type="text" class="form-control" placeholder="Search"> -->
			</div>
		</form>
		<ul class="nav menu">
			<li class="active">
				<a href="#">
					<svg class="glyph stroked dashboard-dial">
						<use xlink:href="#stroked-dashboard-dial"></use>
					</svg>
					Dashboard
				</a>
			</li>
			<li>
				<a href="reserve_logs">
					<svg class="glyph stroked female user">
						<use xlink:href="#stroked-female-user"/>
					</svg>
					<b>Reservation Status </b>
				</a>
			</li>
			
		</ul>
	</div><!--/.sidebar-->

	<div class="row-fluid">
		<div class="col-md-12 main">
			<div class="col-sm-9 col-lg-10 col-md-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-3">
				
				
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"><b>Reservation </b></h1>
					</div>
					<hr>
				</div>
<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<!-- <h2 style="text-align:center;">Calendar of Reservation</h2>
						<div id="calendar"></div> -->
					</div>
					
				</div> 
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading"><svg class="glyph stroked email"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#stroked-email"></use></svg> Make Reservation</div>
						<div class="panel-body">
							<form class="form-horizontal client_reservation" action="" >
								<fieldset>
									<div class="form-group">
										<label class="col-md-3 control-label" for="name">Equipment (maximum of 2 items, 1 item per category)</label>
										<div class="col-md-9">
											<select class="form-control input-lg borrowitem" name="reserve_item[]" multiple="multiple" required="required" style="width: 100%">
												<option></option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="email">Borrowed Date </label>
										<div class="col-md-9">
									<input type="date" class="form-control" id="reserved_date" name="reserved_date" required>
										</div>
									</div>
									<script>

										$(document).ready(function() {
    const clientId = 123; // Set dynamically if needed
    const itemId = 456;   // Set dynamically based on selected item

    $.ajax({
        url: 'fetch_disabled_dates.php',
        method: 'GET',
        data: {
            client_id: clientId,
            item_id: itemId
        },
        success: function(data) {
            const disabledDates = JSON.parse(data);

            $('#reserved_date').on('input', function () {
                const selectedDate = $(this).val();
                if (disabledDates.includes(selectedDate)) {
                    alert('This date has already been reserved. Please choose another date.');
                    $(this).val('');
                }
            });

            // Disable previous dates
            const today = new Date().toISOString().split('T')[0];
            $('#reserved_date').attr('min', today);
        }
    });
});


</script>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message">Time</label>
										<div class="col-md-9">
											<input type="time" placeholder="" class="form-control" name="reserved_time" required="required">
											<input type="hidden" name="client_id" value="<?php echo $_SESSION['member_id']; ?>">
										</div>
									</div>
									<div class="form-group">
										<label  class="col-md-3 control-label">Select</label>
										<div class="col-md-9">
											<select class="form-control" name="reserve_room" required></select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Returned Date</label>
										<div class="col-md-9">
											<input name="time_limit" id="timeLimit" type="text" class="form-control" value="" />
										</div>
									</div>
									
									<!-- Form actions -->
									<div class="form-group">
										<div class="col-md-12 widget-right">
											<button type="submit" class="btn btn-primary btn-md pull-right">Make Reservation</button>
										</div>
									</div>
								</fieldset>
							</form>

						</div>
					</div>
				</div>
				

			</div>
		</div>
	</div>



<?php include 'footer.php'; ?>

<script type="text/javascript">
$(document).ready(function(){
	$("#timeLimit").datetimepicker({
		minTime: '<?php echo date("H:i"); ?>',
		maxTime: '18:00',
		minDate: 0,
		format:'Y-m-d h:i A',
		step: 15
	});
});
</script>