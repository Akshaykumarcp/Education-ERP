$().ready(function)
{
	$("#signupForm").validate
	({
		/*ignore: ".ignore",*/
		rules:{
			fullname : {
							required:true,
							minlength:5
						},
			phonenumber: {
							required : true,
							minlength:10,
							digits: true
						},
			mail : {
						required : true,
						email:true
					},
			program: 
			          {
			            required: true
			          },
			course : "required",
			hiddenRecaptcha: {
				required: function () {
		                    if (grecaptcha.getResponse() == '') {
		                        return true;
		                    } else {
		                        return false;
		                    }
		                				}
							}
			},
			highlight : function(element)
			{
				$(element).closes('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight:function(element)
			{
				$(element).closes('.form-group').removeClass('has-error').addClass('has-success');
			},
		messages: 
			{
				fullname : 
						{
					required : "Enter Full name",
					minlength : "Full Name should be more than 5 Characters"
						},
				phonenumber : 
						{
					required : "Enter Phone Number",
					minlength : "Should be 10 digit"
						},
								/*mail : {
									required : "Enter Mail ID",
										},*/
				program :  "Select Program",
				course : "Select Program",
				hiddenRecaptcha : "Verify"
			}		
	});

}