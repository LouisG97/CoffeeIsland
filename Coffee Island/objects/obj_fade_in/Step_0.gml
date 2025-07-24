if (--countdown <= 0){
	image_alpha = max (0.0, image_alpha - 0.01);	
}
if(image_alpha <= 0.0){
		
	instance_create_depth(0,0,999,obj_fade_out);
	instance_destroy();
	
}
