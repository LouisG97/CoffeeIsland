var _s = id;
var _d = instance_exists(obj_textbox);



if oPlayer.x+25 >= x &&  oPlayer.x <= x+25 {
	
	instance_create_depth(x-32,y-68,depth,obj_hints);
	
} else {
	
	if instance_exists(obj_hints){
		
		instance_destroy(obj_hints);
		
	}
	
}

if oPlayer.x+25 >= x &&  oPlayer.x <= x+25 && keyboard_check_pressed((ord("Z")))==true && _d == false
	{
		create_textbox(_s.text_id);
	}
 
 if obj_daytime.time == "Day"{
	 
	 sprite[1] = spr_Gambril_Idle_Left;
	 sprite[2] = spr_Gambril_Idle_Right;
	 
 }
 if obj_daytime.time == "Afternoon"{
	 
	 sprite[1] = spr_Gambril_Idle_Left_t;
	 sprite[2] = spr_Gambril_Idle_Right_t;
	 
 }
 if obj_daytime.time == "Night"{
	 
	 sprite[1] = spr_Gambril_Idle_Left_n;
	 sprite[2] = spr_Gambril_Idle_Right_n;
	 
 }
 
 sprite_index = sprite[1];