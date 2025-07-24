var _s = id;
var _d = instance_exists(obj_textbox);

if obj_daytime.time == "Day"{
	 
	sprite_index = spr_coffee_plant_t;
	if change == 1{image_index = 2};
	if change == 2{image_index = 4; change = 0;};
	
	 
}
if obj_daytime.time == "Afternoon"{
	 
	sprite_index = spr_coffee_plant;
	 
}
if obj_daytime.time == "Night"{
	 
	sprite_index = spr_coffee_plant_n;
	if image_index == 0 {change = 1;};
	if image_index == 2 {change = 2;};
	if image_index == 4 {change = 0;};
}

if oPlayer.x+18 >= id.x &&  oPlayer.x <= id.x+18 {
	
	instance_create_depth(id.x-32,id.y-48,depth,obj_hints2);
	//show_debug_message(string(depth));
	
} 
///else {
///	if instance_exists(obj_hints2){
///		instance_destroy(obj_hints2);
///	}
///}

if oPlayer.x+18 >= id.x && oPlayer.impediment == false &&  oPlayer.x <= id.x+18 && keyboard_check_released((ord("X")))==true && _d == false
	{
		global.action = true;
	}
 
 if global.action = true && oPlayer.sprite[1] != spr_Miguel_Idle_Right && oPlayer.image_index >15.5 && oPlayer.x+18 >= id.x &&  oPlayer.x <= id.x+18{
	 
	 if image_index == 4 {
		 
		 
		var ran_n = random_range(200,300);
		var ran_n_n = round(ran_n);
		global.coffe_collect = ran_n_n;
		global.coffe_cherries = global.coffe_cherries+ ran_n_n;
		text_id = "Coffee_Cherry";
		create_notif(_s.text_id);
		image_index = 0;
		
		global.action = false;
			
		
	}else if image_index == 0{
			
		text_id = "coffee_2";
		create_textbox(_s.text_id);
		global.action = false;
			
	}else if image_index == 2{
			
		text_id = "coffee_3";
		create_textbox(_s.text_id);
		global.action = false;
			
	}
	 
 }