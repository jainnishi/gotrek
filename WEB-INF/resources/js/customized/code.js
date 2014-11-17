$(document).ready(function(){
change_image();

$('#submitBtn').click(function(event){
	var flag=com.compro.myFormValidation();
		if (flag==true){
			alert("Form submitted successfully");
			$("form").submit();
		}
		else{
			alert("Form not submitted successfully!");
		}
});
    	

});
var i=2;
function change_image()
{	
    if(i==11)
    {
        i=1;
    }

    var img="Resources/"+"t"+i+'.jpg'
    document.getElementById("img1").src=img;
    i++;
    setTimeout("change_image()",4000);
}
var com= {
	compro : {
		myFormValidation : {
			
		}
	}
};
com.compro.myFormValidation = function(){
	var name =$('#Name');
	var email =$('#Email');
	var Password =$('#Password');
	var RePasswrd = $("#RePassword");
	
	var validate ="";
	
	validate+=check.validateName(name);
	validate+=check.validateEmail(email);
	validate+=check.validatePassword(Password);
	validate+=check.matchPasswrd(Passwrd,RePasswrd);
	
	if(validate=="")
	return true;
	
	else
	return false;
}
var check=(function(){

	var validateName=function(name){
			var errorCheck="";
			var alpha = /^[a-zA-Z]+$/; // matches any character that is not a word,[^A-Za-z0-9_]
			if(name.val().length==0){
				$('#Name1').addClass("has-error");
				errorCheck="error";
				return errorCheck;
			}
			else if (!name.val().match(alpha)){
					$('#Name1').addClass("has-error");
					errorCheck="error";
					return errorCheck;
			}
			$('#Name1').addClass("has-success");
			return errorCheck;
			
		}
		var validateEmail=function(Email){
			var errorCheck="";
			if(Email.val().length==0){
				$('#Email1').addClass("has-error");
						
				errorCheck="error";
				return errorCheck;
			}
			if(Email.val().match(/[a-zA-Z0-9\-\_]$/)){
				$('#Email1').addClass("has-success");
				return errorCheck;
			}
			else{
				$('#Email1').addClass("has-error");	
				errorCheck="error";
				return errorCheck;
			}
			$('#Email1').addClass("has-success");	
			return errorCheck;
			
		}

		var validatePassword=function(Password) {
			var illegalChars = /[\W_]/; // allow only letters and numbers
			var errorCheck="";
			if(!(Password.val()==="")){
				if(Password.val().length<7 || Password.val().length > 15){
					$('#Password1').addClass("has-error");
					errorCheck="error";
					return errorCheck;
				}
				else if (illegalChars.test(Password.val())){
					$('#Password1').addClass("has-error");
					errorCheck="error";
					return errorCheck;
				}
				else if(!(((Password).val().search(/(a-z)+/)) && (Password).val().search(/(0-9)+/))){
					$('#Password1').addClass("has-error");	
					errorCheck="error";
					return errorCheck;
				}
			}
			else{
			$('#Password1').addClass("has-error");	
			errorCheck="error";
			return errorCheck;	
			}
			$('#Password1').addClass("has-success");	
			return errorCheck;
		}
		
		var matchPasswrd=function(Password,RePassword){
			var errorCheck="";
			if(RePassword.val().length==0){
				RePassword.addClass("has-error");
				errorCheck="error";
				return errorCheck;
			}
			else{
				if(Password.val() === RePassword.val()){
					return errorCheck;
			}
			else{
				RePassword.addClass("has-error");
				errorCheck="error";
				return errorCheck;
			}
		}
		
		return{
		//public aliases to the private functions
			validateName:validateName,
			validatePassword:validatePassword,
			validateEmail:validateEmail,
			matchPasswrd:matchPasswrd,
			
	
		}; 
})();
	
	

