var table_room =  $('.table_room').DataTable({
			"fnRowCallback": function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
                    if ( aData[0] == "Room 310" )
                    {
                        $('td', nRow).css('background-color', 'skyblue');
                    }
                },
		"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_room"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center",
				"visible": false 
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0]
				}
			},


			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});	

var table_faculty =  $('.table_faculty').DataTable({
	"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_faculty"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center",
				"visible": false
			},
			{
				"data": [3],
				"className": "text-center",
				"visible": false
			},
			{
				"data": [4],
				"className": "text-center"
			},
			{
				"data": [6],
				"className": "text-center"
			},
			// {
			// 	"data": [5],
			// 	"className": "text-center"
			// },
			{
				"data": [7],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center",
				"visible": false 
			},
			{
				"data": [8],
				"className": "text-center",
				"visible": false 
			},
			{
				"data": [9],
				"className": "text-center",
				"visible": false 
			},
			{
				"data": [10],
				"className": "text-center",
				"visible": false 
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5,6]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3,4,5,6]
			// 	}
			// },
			{
				extend: "excel",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5,6]
				}
			},
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5,6]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5,6]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});	


var table_member =  $('.table_member').DataTable({
	"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_member"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center",
				"visible": false
			},
			{
				"data": [3],
				"className": "text-center",
				"visible": false
			},
			{
				"data": [4],
				"className": "text-center"
			},
			{
				"data": [6],
				"className": "text-center"
			},
			{
				"data": [5],
				"className": "text-center"
			},
			{
				"data": [7],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center",
				"visible": false 
			},
			{
				"data": [8],
				"className": "text-center",
				"visible": false 
			},
			{
				"data": [9],
				"className": "text-center",
				"visible": false 
			},
			{
				"data": [10],
				"className": "text-center",
				"visible": false 
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5,6]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3,4,5,6]
			// 	}
			// },
	
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5,6]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5,6]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});	
var table_user =  $('.table_user').DataTable({
		"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_user"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center",
				"visible": false
			},
			{
				"data": [5],
				"className": "text-center",
				"visible": false
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2]
			// 	}
			// },
			{
				extend: "excel",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				}
			},
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});	


var table_equipment = $('.table_equipment').DataTable({ 
	"ajax": {
		"url": "../class/display/display",
		"type": "POST",
		"data": {
			"key": "display_equipment"
		}
	},
	"columns": [
	    {
	        "data": [0],  // Image
	        "className": "text-left"
	    },
	    {
	        "data": [1],  // Model
	        "className": "text-left"
	    },
	    {
	        "data": [2],  // Category
	        "className": "text-left"
	    },
	    {
	        "data": [3],  // Brand
	        "className": "text-left"
	    },
	    {
	        "data": [4],  // Quantity Left (was index 5)
	        "className": "text-left"
	    },
	    {
	        "data": [5],  // Status (was index 6)
	        "className": "text-left"
	    },
	    {
	        "data": [6],  // Action (was index 7)
	        "className": "text-left"
	    }
	],
	dom: "Bfrtip",
	buttons: [
		{
			extend: "pdfHtml5",
			className: "btn-sm btn-success",
			exportOptions: {
				columns: [0, 1, 2, 3, 4, 5]
			}
		},
		{
			extend: "print",
			className: "btn-sm btn-success",
			exportOptions: {
				columns: [1, 2, 3, 4, 5]
			},
			message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;"><b>College Of Computer Science</b></h4>\
						<h4>Computer Laboratory</h4>\
						<h6>Tuguegarao City, Cagayan 3500</h6>\
						</center>',
			customize: function (win) {
				$(win.document.body).find('table').append('<br/><br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4> ');
			}
		}
	]
});


// var table_equipment = $('.table_equipment').DataTable({
// 	"ajax": {
// 		"url": "../class/display/display",
// 		"type": "POST",
// 		"data": {
// 			"key": "display_equipment"
// 		}
// 	},
// 	"columns": [
// 		{ // Image
//             "data": 0,
//             "className": "text-left"
//         },
//         { // Model
//             "data": 1,
//             "className": "text-left"
//         },
//         { // Category
//             "data": 2,
//             "className": "text-left"
//         },
//         { // Brand
//             "data": 6, // Adjusted index for Brand
//             "className": "text-left"
//         },
//         { // Description
//             "data": 3,
//             "className": "text-left"
//         },
//         { // Quantity Left
//             "data": 4,
//             "className": "text-left"
//         },
//         { // Status (NEW/OLD)
//             "data": 5,
//             "className": "text-left"
//         },
//         { // Action (button)
//             "data": 7,
//             "className": "text-left"
//         }
// 	],
// 	"dom": "Bfrtip",
// 	"buttons": [
// 		{
// 			extend: "copy",
// 			className: "btn-sm btn-success",
// 			exportOptions: {
// 				columns: [0,1,2,3]
// 			}
// 		},
// 		{
// 			extend: "csv",
// 			className: "btn-sm btn-success",
// 			exportOptions: {
// 				columns: [0,1,2,3]
// 			}
// 		},
// 		{
// 			extend: "excel",
// 			className: "btn-sm btn-success",
// 			exportOptions: {
// 				columns: [0,1,2,3]
// 			}
// 		},
// 		{
// 			extend: "pdfHtml5",
// 			className: "btn-sm btn-success",
// 			exportOptions: {
// 				columns: [0,1,2,3]
// 			}
// 		},
// 		{
// 			extend: "print",
// 			className: "btn-sm btn-success",
// 			exportOptions: {
// 				columns: [0,1,2,3]
// 			},
// 			message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
// 						<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
// 						<h6>Tuguegarao City, Cagayan 3500</h6>\
// 						</center>',
// 			customize: function (win) {
// 				$(win.document.body).find('table').append('<br/><br/><br/><br/><br/><h4 class="">Noted by: </h4><br/><br/><br/><br/><br/><h4 class="">Prepared by:</h4>');
// 			}
// 		}
// 	]
// });


var table_inventory_new = $('.table_inventory_new').DataTable({
    "ajax": {
        "url": "../class/display/display",
        "type": "POST",
        "data": {
            "key": "display_equipment_new"
        },
        "dataSrc": function (json) {
            console.log(json);
            return json.data;
        }
    },
    "columns": [
        {
            "data": "0",
            "className": "text-center"
        },
        {
            "data": "1",
            "className": "text-center"
        },
        {
            "data": "2",
            "className": "text-center"
        },
        {
            "data": "3",
            "className": "text-center"
        }
    ],
    dom: "Bfrtip",
    buttons: [
        {
            extend: "copy",
            className: "btn-sm btn-success",
            exportOptions: {
                columns: [0, 1, 2, 3]
            }
        },
        // {
        //     extend: "csv",
        //     className: "btn-sm btn-success",
        //     exportOptions: {
        //         columns: [0, 1, 2, 3]
        //     }
        // },
        {
            extend: "excel",
            className: "btn-sm btn-success",
            exportOptions: {
                columns: [0, 1, 2, 3]
            }
        },
        {
            extend: "pdfHtml5",
            className: "btn-sm btn-success",
            exportOptions: {
                columns: [0, 1, 2, 3]
            }
        },
        {
            extend: "print",
            className: "btn-sm btn-success",
            exportOptions: {
                columns: [0, 1, 2, 3]
            },
            message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4><h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4><h6>Tuguegarao City, Cagayan 3500</h6></center>',
            customize: function (win) {
				$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
            }
        }
    ]
});

var table_inventory_old = $('.table_inventory_old').DataTable({
		"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_equipment_old"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
		
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3]
			// 	}
			// },
		
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});
var table_inventory_lost = $('.table_inventory_lost').DataTable({
		"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_equipment_lost"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
		
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3]
			// 	}
			// },

			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});
var table_inventory_damaged = $('.table_inventory_damaged').DataTable({
	"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_equipment_damaged"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			},
			
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3,4]
			// 	}
			// },
			{
				extend: "excel",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				}
			},
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});

//TOTAL OF ITEMS 

// var table_inventory_pulledout = $('.table_inventory_pulledout').DataTable({
// 	"ajax":
// 		{
// 			"url": "../class/display/display",
// 			"type": "POST",
// 			"data": {
// 				"key": "display_equipment_pulled"
// 			}
// 		},
// 		"columns": 
// 		[
// 			{
// 				"data": [0],
// 				"className": "text-center"
// 			},
// 			{
// 				"data": [1],
// 				"className": "text-center"
// 			},
// 			{
// 				"data": [2],
// 				"className": "text-center"
// 			},
// 			{
// 				"data": [3],
// 				"className": "text-center"
// 			},
// 			{
// 				"data": [4],
// 				"className": "text-center"
// 			}
			
// 		],
// 		dom: "Bfrtip",
// 		buttons: [
// 			{
// 				extend: "copy",
// 				className: "btn-sm btn-success",
// 				exportOptions:{
// 					columns: [0,1,2,3,4]
// 				}
// 			},
// 			{
// 				extend: "csv",
// 				className: "btn-sm btn-success",
// 				exportOptions:{
// 					columns: [0,1,2,3,4]
// 				}
// 			},
// 			{
// 				extend: "excel",
// 				className: "btn-sm btn-success",
// 				exportOptions:{
// 					columns: [0,1,2,3,4]
// 				}
// 			},
// 			{
// 				extend: "pdfHtml5",
// 				className: "btn-sm btn-success",
// 				exportOptions:{
// 					columns: [0,1,2,3,4]
// 				}
// 			},
// 			{
// 				extend: "print",
// 				className: "btn-sm btn-success",
// 				exportOptions:{
// 					columns: [0,1,2,3,4]
// 				},
// 				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
// 							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
// 							<h6>Tuguegarao City, Cagayan 3500</h6>\
// 							</center>',
// 				customize: function ( win ) {
// 					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Noted by: </h4><br><br><br><br><br><h4 class="">Prepared by:</h4>');
// 				}
// 			}
// 		]
// });

	
var table_inventory_all = $('.table_inventory_all').DataTable({
							"ajax":
							{
								"url": "../class/display/display",
								"type": "POST",
								"data": {
									"key": "display_equipment_all"
								}
							},
							"columns": 
							[
								{
									"data": [0],
									"className": "text-center"
								},
								{
									"data": [1],
									"className": "text-center"
								},
								{
									"data": [2],
									"className": "text-center"
								},
								{
									"data": [3],
									"className": "text-center"
								}
							],
							dom: "Bfrtip",
									buttons: [
										{
											extend: "copy",
											className: "btn-sm btn-success",
											exportOptions:{
												columns: [0,1,2,3,4,5,6]
											}
										},
										// {
										// 	extend: "csv",
										// 	className: "btn-sm btn-success",
										// 	exportOptions:{
										// 		columns: [0,1,2,3,4,5,6]
										// 	}
										// },
										{
											extend: "excel",
											className: "btn-sm btn-success",
											exportOptions:{
												columns: [0,1,2,3,4,5,6]
											}
										},
										{
											extend: "pdfHtml5",
											className: "btn-sm btn-success",
											exportOptions:{
												columns: [0,1,2,3,4,5,6]
											}
										},
										{
											extend: "print",
											className: "btn-sm btn-success",
											exportOptions:{
												columns: [0,1,2,3,4,5,6]
											},
											message: '<center><h4>REPUBLIC OF THE PHILIPPINES</h4>\
														<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
														<h6>Tuguegarao City, Cagayan 3500</h6>\
														</center>',
											customize: function ( win ) {
												$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
											}
										}
									]
});

function room_info(a,b){
	var table_roominfo = $('.table_roominfo').DataTable({
							"ajax":
								{
									"url": "../class/display/display",
									"type": "POST",
									"data": {
										"key": "display_roominfo",
										"id": b,
										"name": a
									}
								},
								"columns": 
								[
									{
										"data": [0],
										"className": "text-center"
									},
									{
										"data": [1],
										"className": "text-center"
									},
									{
										"data": [2],
										"className": "text-center"
									},
									{
										"data": [3],
										"visible":false,
										"className": "text-center"
									},
									{
										"data": [4],
										"className": "text-center"
									},
									{
										"data": [5],
										"visible":false,
										"className": "text-left"
									},
									{
										"data": [6],
										"visible":false,
										"className": "text-center"
									},
									{
										"data": [7],
										"className": "text-center"
									}
								],
								dom: "Bfrtip",
								buttons: [
									{
										extend: "copy",
										className: "btn-sm btn-success",
										exportOptions:{
											columns: [0,1,2,3,4,5,6]
										}
									},
									// {
									// 	extend: "csv",
									// 	className: "btn-sm btn-success",
									// 	exportOptions:{
									// 		columns: [0,1,2,3,4,5,6]
									// 	}
									// },
					
									{
										extend: "pdfHtml5",
										className: "btn-sm btn-success",
										exportOptions:{
											columns: [0,1,2,3,4,5,6]
										}
									},
									{
										extend: "print",
										className: "btn-sm btn-success",
										exportOptions:{
											columns: [0,1,2,3,4,5,6]
										},
										message: '<center><h4>REPUBLIC OF THE PHILIPPINES</h4>\
													<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
													<h6>Tuguegarao City, Cagayan 3500</h6>\
													</center>',
										customize: function ( win ) {
											$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
										}
									}
								]
						});

	table_roominfo.on('click', '.transfer', function(e){
		e.preventDefault();

		var id = $(this).attr('data-id');
		$(".frm_transfer").find('input[name="id"]').val(id);

		$('.transfer').toggle(effect, options, duration);

		$('.frm_transfer').submit(function(e){
			e.preventDefault();

			var _this = $(this);
	
			$.ajax({
				type: 'POST',
				url: '../class/edit/edit',
				data: _this.serialize()
			})
			.done(function(data){
				console.log(data);
				// if(data == 1){
					$('.transfer').toggle(effect, options, duration);
					table_roominfo.ajax.reload(null,false);
					toastr.success(data);
				// }
			});
		});
	});

	


	table_roominfo.on('click', '.btn_return', function(e){
		e.preventDefault();
		var id = $(this).attr('data-id');
		$('.mymodal').modal('show');
		$('input[name="id"]').val(id);
	});

	$('.frm_returnroom').submit(function(e){
		e.preventDefault();
		var frm_data = $(this).serialize()+'&key=return_transfer';
			$.ajax({
				type: 'POST',
				url: '../class/edit/edit',
				data: frm_data
			})
			.done(function(data){
				console.log(data);
				table_roominfo.ajax.reload(null,false);
				toastr.success(data);
				$('.mymodal').modal('hide');
			})
	});
	
}




var tbl_newtransaction = $('.tbl_newtransaction').DataTable({
		"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_newtransaction"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			},
			{
				"data": [5],
				"className": "text-left"
			}
		]
	});

var tbl_borrow = $('.tbl_borrow').DataTable({
	"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_borrow"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3,4]
			// 	}
			// },

			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});



var tbl_borrower = $('.tbl_borrower').DataTable({
	"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": {
				"key": "display_borrower"
			}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3]
			// 	}
			// },
	
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});







function selectMonthData()
{
	return $("#selectMonth").val();
}

function selectYearData()
{
	return $("#selectYear").val();
}












var tbl_return = $('.tbl_return').DataTable({
	"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": function(d){
		        d.key = "display_return";
		        d.month = selectMonthData();
		        d.year = selectYearData();
	      	}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			}

		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3]
			// 	}
			// },

			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});

$("#btnReloadList").on('click', function(){
	tbl_return.ajax.reload();
});

var tbl_pendingres = $('.tbl_pendingres').DataTable({
		"ajax":
			{
				"url": "../class/display/display",
				"type": "POST",
				"data": {
					"key": "pending_reservation"
				}
			},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3]
			// 	}
			// },
	
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			{
			extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});

var tbl_reserved = $('.tbl_reserved').DataTable({
		"ajax":
			{
				"url": "../class/display/display",
				"type": "POST",
				"data": {
					"key": "accept_reservation"
				}
			},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3]
			// 	}
			// },
	
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				}
			},
			{
			extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});

var tbluser_reservation = $('.tbluser_reservation').DataTable({
		"ajax":
			{
				"url": "../class/display/display",
				"type": "POST",
				"data": {
					"key": "tbluser_reservation",
				}
			},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2]
			// 	}
			// },
	
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				}
			},
			{
			extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});


var table_history = $('.table_history').DataTable({
		"ajax":
			{
				"url": "../class/display/display",
				"type": "POST",
				"data": {
					"key": "table_history",
				}
			},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2]
			// 	}
			// },
		
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				}
			},
			{
			extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});

var table_dashboard = $('.table_dashboard').DataTable({
	"ajax":
			{
				"url": "../class/display/display",
				"type": "POST",
				"data": {
					"key": "table_dashboard",
				}
			},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"visible":false,
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			},
			{
				"data": [5],
				"className": "text-center"
			}
		],
	dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3,4,5]
			// 	}
			// },
	
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5]
				}
			},
			{
			extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4,5]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});

function member_profile(id)
{

	var tbl_member_profile = $('.tbl_member_profile').DataTable({
		"ajax":
			{
				"url": "../class/display/display",
				"type": "POST",
				"data": {
					"key": "tbl_member_profile",
					"id": id
				}
			},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
			buttons: [
				{
					extend: "copy",
					className: "btn-sm btn-success",
					exportOptions:{
						columns: [0,1,2,3]
					}
				},
				// {
				// 	extend: "csv",
				// 	className: "btn-sm btn-success",
				// 	exportOptions:{
				// 		columns: [0,1,2,3]
				// 	}
				// },
	
				{
					extend: "pdfHtml5",
					className: "btn-sm btn-success",
					exportOptions:{
						columns: [0,1,2,3]
					}
				},
				{
				extend: "print",
					className: "btn-sm btn-success",
					exportOptions:{
						columns: [0,1,2,3]
					},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
				}
			]
	});

}

var tbluser_inbox = $('.tbluser_inbox').DataTable({
	"ajax":
			{
				"url": "../class/display/display",
				"type": "POST",
				"data": {
					"key": "tbluser_inbox",
				}
			},
		"columns": 
		[
			{
				"data": [0],
				"visible":false,	
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			}
		],
		dom: "Bfrtip",
			buttons: [
				{
					extend: "copy",
					className: "btn-sm btn-success",
					exportOptions:{
						columns: [0,1,2]
					}
				},
				// {
				// 	extend: "csv",
				// 	className: "btn-sm btn-success",
				// 	exportOptions:{
				// 		columns: [0,1,2]
				// 	}
				// },

				{
					extend: "pdfHtml5",
					className: "btn-sm btn-success",
					exportOptions:{
						columns: [0,1,2]
					}
				},
				{
				extend: "print",
					className: "btn-sm btn-success",
					exportOptions:{
						columns: [0,1,2]
					},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
				}
			]
});

function selectMonthTransferData()
{
	return $("#selectMonthTransferred").val();
}

function selectYearTransferData()
{
	return $("#selectYearTransferred").val();
}

var table_inventory_transfer = $('.table_inventory_transfer').DataTable({
	"ajax":
		{
			"url": "../class/display/display",
			"type": "POST",
			"data": function(d){
		        d.key = "display_inventory_transfer";
		        d.month = selectMonthTransferData();
		        d.year = selectYearTransferData();
	      	}
		},
		"columns": 
		[
			{
				"data": [0],
				"className": "text-center"
			},
			{
				"data": [1],
				"className": "text-center"
			},
			{
				"data": [2],
				"className": "text-center"
			},
			{
				"data": [3],
				"className": "text-center"
			},
			{
				"data": [4],
				"className": "text-center"
			},
			{
				"data": [6],
				
				"className": "text-center"
			},
			{
				"data": [5],
				
				"className": "text-center"
			},
			{
				"data": [7],
				
				"className": "text-center"
			}
			
		],
		dom: "Bfrtip",
		buttons: [
			{
				extend: "copy",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				}
			},
			// {
			// 	extend: "csv",
			// 	className: "btn-sm btn-success",
			// 	exportOptions:{
			// 		columns: [0,1,2,3,4]
			// 	}
			// },
	
			{
				extend: "pdfHtml5",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				}
			},
			{
				extend: "print",
				className: "btn-sm btn-success",
				exportOptions:{
					columns: [0,1,2,3,4]
				},
				message: '<img src="https://res.cloudinary.com/dcto4kci9/image/upload/v1745420220/png_x8ervg.png" height="100px" width="100px" style="position: absolute;top:0;left:80px;"><center><h4 style="margin-top:-40px;">REPUBLIC OF THE PHILIPPINES</h4>\
							<h4>F.L. VARGAS COLLEGE, INC. - TUGUEGARAO CITY CAMPUS</h4>\
							<h6>Tuguegarao City, Cagayan 3500</h6>\
							</center>',
				customize: function ( win ) {
					$(win.document.body).find( 'table' ).append('<br<br/><br><br><br><h4 class="">Prepared by: </h4><br><br><br><br><br><h4 class="">Approved by:</h4>');
				}
			}
		]
});

$("#btnReloadTransferredList").on('click', function(){
	table_inventory_transfer.ajax.reload();
});
// function member_profile(id)
// {
// 	$.ajax({
// 		type: "POST",
// 		url: "../class/display/display",
// 		data: {
// 			key: "tbl_member_profile",
// 			id: id
// 		}
// 	})
// 	.done(function(data){
// 		console.log(data);
// });
// }