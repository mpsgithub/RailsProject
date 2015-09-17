 
			$(document).ready(function(){
		        $('#clickme').click(function(){
				alert('speaking'+ $('#my_text').val());
				responsiveVoice.speak($('#my_text').val(), "US English Female");
				});	
			});
		