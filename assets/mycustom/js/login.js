$('.frm_index').submit(function(e){
    e.preventDefault();

    var a = $(this).serialize()+'&key=admin_login';


    $.ajax({
    	type: "POST",
    	data: a,
    	url: 'class/login/login',
    	beforeSend: function(){
    		$(this).find('button').attr('disabled', true);
    	}
    })
    .done(function(data){
    	console.log(data);
    	if(data == 1){
    		toastr.success('Successfully login', 'Redirecting');
    		setTimeout(function(){
    			window.location = 'views/dashboard';
    		},300);

    	}else{
    		toastr.error('Username and password are incorrect');
    		$(this).find('button').attr('disabled', true);
    		$('.frm_index').find('input').val('');
    	}
    });

});


$('.frm_memberlogin').submit(function(e){
    e.preventDefault();

    var data = $(this).serialize() + "&key=member_login";

    $.ajax({
        type: "POST",
        data: data,
        url: '../class/login/login',
        beforeSend: function(){
            $('.frm_memberlogin button').attr('disabled', true);
        }
    })
    .done(function(data){
        console.log(data);
        if(data == 1){
            toastr.success('Successfully login', 'Redirecting');
            setTimeout(function(){
                window.location = 'home';
            }, 300);
        } else {
            toastr.error('Username and password are incorrect');
            $('.frm_memberlogin input').val('');
            $('.frm_memberlogin button').attr('disabled', false);
        }
    });
});
