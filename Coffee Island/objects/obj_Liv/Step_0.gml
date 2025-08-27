var _s = id;
var _d = instance_exists(obj_textbox);



if oPlayer.x+25 >= x &&  oPlayer.x <= x+25 {
	
	instance_create_depth(x-32,y-68,depth,obj_hints);
	
} else {
	
	if instance_exists(obj_hints){
		
		instance_destroy(obj_hints);
		
	}
	
}

if oPlayer.x+25 >= x && oPlayer.impediment == false &&  oPlayer.x <= x+25 && keyboard_check_pressed((ord("Z")))==true && _d == false
	{
		show_debug_message(string(oPlayer.sprite_index))
		
		oPlayer.xspd = 0;
		create_textbox(_s.text_id);
		
	}
 
 if obj_daytime.time == "Day"{
	 
	 sprite[1] = spr_Liv_Idle_Left;
	 sprite[2] = spr_Liv_Idle_Right;
	 
 }
 if obj_daytime.time == "Afternoon"{
	 
	 sprite[1] = spr_Liv_Idle_Left;
	 sprite[2] = spr_Liv_Idle_Right;
	 
 }
 if obj_daytime.time == "Night"{
	 
	 sprite[1] = spr_Liv_Idle_Left;
	 sprite[2] = spr_Liv_Idle_Right;
	 
 }
 
 sprite_index = sprite[1];