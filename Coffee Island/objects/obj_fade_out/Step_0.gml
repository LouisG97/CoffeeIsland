if inout == true{


	if (--countdown <= 0){
		
		image_alpha = min (1.0, image_alpha + 0.033);	
	}
	
	if(image_alpha >= 1.0){
		
		inout = false;
		countdown = time_before_fading;
		
	}
	
}else{
	
	if (--countdown <= 0){
		image_alpha = max (0.0, image_alpha - 0.033);	
	}
	if(image_alpha <= 0.0){
		
		instance_destroy();
	
	}

	
}