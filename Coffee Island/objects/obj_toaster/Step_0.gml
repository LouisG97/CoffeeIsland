var _s = id;
var _d = instance_exists(obj_textbox);

if obj_daytime.time == "Day"{
	 
	sprite_index = spr_toaster_d;
	 
}
if obj_daytime.time == "Afternoon"{
	 
	sprite_index = spr_toaster_t;
	 
}
if obj_daytime.time == "Night"{
	 
	sprite_index = spr_toaster_n;
	 
}

if oPlayer.x+30 >= id.x  &&  oPlayer.x <= id.x+30{
	
	yn = 1;
	
	if stat2 < 4{
		instance_create_depth(id.x-32,id.y-70,depth,obj_hints4);
		if instance_exists(obj_hints2){instance_destroy(obj_hints2);};
	}else if stat2 == 4{
		
		instance_create_depth(id.x-32,id.y-70,depth,obj_hints2);
		if instance_exists(obj_hints4){instance_destroy(obj_hints4);};
	}
	
} else {yn = 0;};


if stat2 == 0 {stat = false;};

if stat == false && canti > 0 && stat2 == 0{stat2 = 1;};

if stat2 == 3 { stat = true; };

if stat2 == 1 && _d == false{t_mill --;};

if t_mill <= 0{
	
	stat2 = 3;
	t_mill = 120;
	
}

//show_debug_message("Stat: "+string(stat)+" + Stat 2: "+string(stat2));

if stat = true && stat2 == 3{
	
	notif = instance_create_depth(id.x+22,id.y-40,depth,obj_noti);
	stat2 = 4;
	
}

///Depth
depth = oPlayer.depth +1;

//Status of the toaster

if oPlayer.x+30 >= id.x && oPlayer.x <= id.x+30 && keyboard_check_released((ord("X")))==true && _d == false
	{
		global.action = true;
		///show_debug_message("HEEEEEERE2222222222222222");
	}
 
if global.action = true && oPlayer.sprite[1] != spr_Miguel_Idle_Right && oPlayer.image_index >14.5 && oPlayer.x+30 >= id.x &&  oPlayer.x <= id.x+30{
	///show_debug_message("HEEEEEERE11111");
	if global.coffe_seeds > 0 && canti < 1000 && stat == false{
		 
		canti = canti + global.coffe_seeds;
		noti = global.coffe_seeds;
		///show_debug_message("HEEEEEERE");
		if canti > 1000{
			  
			global.coffe_seeds = canti - 1000;
			canti = 1000;
			noti = noti - global.coffe_seeds;
			
			  
		}else if canti <= 1000{
			
			global.coffe_seeds = 0;
			
		}
		
		global.coffe_decollect = noti;
		text_id = "decollect_coffee_seeds"
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		global.action = false;
		text_id = "toaster";
		create_textbox(_s.text_id);
		 
	}else if canti >= 1000 && global.coffe_seeds > 0 && _d == false{
		
		text_id = "decollect_non3"
		create_textbox(_s.text_id);
		global.action = false;
		
	}else if canti < 1000 && global.coffe_seeds == 0 && _d == false &&stat2!=4{
		
		text_id = "decollect_non4"
		create_textbox(_s.text_id);
		global.action = false;
		
	}
	if stat == true{
		
		canti = (canti/100)*70;
		canti = round(canti);
		
		type = global.toaster_type;
		
		if type == 1 {
			
			global.coffe_seeds_light = global.coffe_seeds_light + canti;
			global.coffe_collect = canti;
			text_id = "Toasted_Seeds_1";
			create_notif(_s.text_id);
			
		}
		else if type == 2{
			
			global.coffe_seeds_medium = global.coffe_seeds_medium + canti;
			global.coffe_collect = canti;
			text_id = "Toasted_Seeds_2";
			create_notif(_s.text_id);
			
		}
		else if type == 3{
			
			global.coffe_seeds_high = global.coffe_seeds_high + canti;
			global.coffe_collect = canti;
			text_id = "Toasted_Seeds_3";
			create_notif(_s.text_id);
			
		}
		
		canti = 0;
		stat2 = 0;
		instance_destroy(notif);
		global.action = false;
		
	}
			  
 }