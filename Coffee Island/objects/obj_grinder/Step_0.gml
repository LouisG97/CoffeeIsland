var _s = id;
var _d = instance_exists(obj_textbox);

if obj_daytime.time == "Day"{
	 
	sprite_index = spr_grinder;
	 
}
if obj_daytime.time == "Afternoon"{
	 
	sprite_index = spr_grinder;
	 
}
if obj_daytime.time == "Night"{
	 
	sprite_index = spr_grinder;
	 
}

if oPlayer.x+21 >= id.x  &&  oPlayer.x <= id.x+21{
	
	yn = 1;
	
	if stat2 < 4{
		instance_create_depth(id.x-32,id.y-54,depth,obj_hints5);
		if instance_exists(obj_hints2){instance_destroy(obj_hints2);};
	}else if stat2 == 4{
		
		instance_create_depth(id.x-32,id.y-54,depth,obj_hints2);
		if instance_exists(obj_hints5){instance_destroy(obj_hints5);};
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

//show_debug_message("Stat: "+string(stat)+" + Stat 2: "+string(stat2)+" Selected: "+string(selected));

if stat == true && stat2 == 3{
	
	notif = instance_create_depth(id.x+16,id.y-40,depth,obj_noti);
	stat2 = 4;
	
}

///Depth
depth = oPlayer.depth +1;

//Are there coffe seeds tosted?

if global.coffe_seeds_light > 0 || global.coffe_seeds_medium > 0 || global.coffe_seeds_high > 0 {
	
	seeds = true;
	
	
}else{seeds = false;}

//Status of the toaster

if oPlayer.x+21 >= id.x &&  oPlayer.x <= id.x+21 && keyboard_check_released((ord("X")))==true && _d == false
	{
		global.action = true;
		///show_debug_message("HEEEEEERE2222222222222222");
	}
 
if global.action = true && oPlayer.sprite[1] != spr_Miguel_Idle_Right && oPlayer.image_index >14.5 && oPlayer.x+21 >= id.x &&  oPlayer.x <= id.x+21{
	///show_debug_message("HEEEEEERE11111");
	if seeds = true && canti < 1000 && stat == false{
		 
		text_id = "grinder";
		create_textbox(_s.text_id);
		selected = 100;
		 
	}else if canti < 1000 && seeds = false && _d == false &&stat2!=4{
		
		text_id = "decollect_non5"
		create_textbox(_s.text_id);
		global.action = false;
		
	}
	if stat == true{
		
		canti = canti
		
		type = selected;
		
		if type == 1 {
			
			global.grinded_coffe_light_fine = global.grinded_coffe_light_fine + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_1";
			create_notif(_s.text_id);
			
		}else if type == 2{
			
			global.grinded_coffe_light_medium = global.grinded_coffe_light_medium + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_2";
			create_notif(_s.text_id);
			
		}else if type == 3{
			
			global.grinded_coffe_light_coarse = global.grinded_coffe_light_coarse + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_3";
			create_notif(_s.text_id);
			
		}else if type == 4 {
			
			global.grinded_coffe_medium_fine = global.grinded_coffe_medium_fine + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_4";
			create_notif(_s.text_id);
			
		}else if type == 5{
			
			global.grinded_coffe_medium_medium = global.grinded_coffe_medium_medium + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_5";
			create_notif(_s.text_id);
			
		}else if type == 6{
			
			global.grinded_coffe_medium_coarse = global.grinded_coffe_medium_coarse + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_6";
			create_notif(_s.text_id);
			
		}else if type == 7 {
			
			global.grinded_coffe_high_fine = global.grinded_coffe_high_fine + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_7";
			create_notif(_s.text_id);
			
		}else if type == 8{
			
			global.grinded_coffe_high_medium = global.grinded_coffe_high_medium + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_8";
			create_notif(_s.text_id);
			
		}else if type == 9{
			
			global.grinded_coffe_high_coarse = global.grinded_coffe_high_coarse + canti;
			global.coffe_collect = canti;
			text_id = "Grinded_Coffee_9";
			create_notif(_s.text_id);
			
		}
		
		canti = 0;
		stat2 = 0;
		global.action = false;
		selected = 0;
		instance_destroy(notif);
		global.grind_selection = 0;
		global.grind_type = 0;
		
	}
			  
}
if selected == 100  && _d == false{
	 
	 
	 if global.grind_selection == 1{
		 
		if global.grind_type == 1 {selected=1;}
		else if global.grind_type == 2 {selected=2;}
		else if global.grind_type == 3 {selected=3;};
		canti = canti + global.coffe_seeds_light;
		noti = global.coffe_seeds_light;
		if canti > 1000{
			  
			global.coffe_seeds_light = canti - 1000;
			canti = 1000;
			noti = noti - global.coffe_seeds_light;
			
			  
		}else if canti <= 1000{global.coffe_seeds_light = 0;};
		text_id = "decollect_coffee_seeds_light";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		 
	 }else if global.grind_selection == 2{
		 
		if global.grind_type == 1 {selected=4;}
		else if global.grind_type == 2 {selected=5;}
		else if global.grind_type == 3 {selected=6;};
		canti = canti + global.coffe_seeds_medium;
		noti = global.coffe_seeds_medium;
		if canti > 1000{
			  
			global.coffe_seeds_medium = canti - 1000;
			canti = 1000;
			noti = noti - global.coffe_seeds_medium;
			
			  
		}else if canti <= 1000{global.coffe_seeds_medium = 0;};
		text_id = "decollect_coffee_seeds_medium";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		
		 
	 }else if global.grind_selection == 3{
		 
		if global.grind_type == 1 {selected=7;}
		else if global.grind_type == 2 {selected=8;}
		else if global.grind_type == 3 {selected=9;};
		canti = canti + global.coffe_seeds_high;
		noti = global.coffe_seeds_high;
		if canti > 1000{
			  
			global.coffe_seeds_high = canti - 1000;
			canti = 1000;
			noti = noti - global.coffe_seeds_high;
			
			  
		}else if canti <= 1000{global.coffe_seeds_high = 0;};
		text_id = "decollect_coffee_seeds_high";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		 
	 }
	 
	
	global.action = false;
	 
 }