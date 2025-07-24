var _s = id;
var _d = instance_exists(obj_textbox);

if obj_daytime.time == "Day"{
	 
	sprite_index = spr_espresso;
	 
}
if obj_daytime.time == "Afternoon"{
	 
	sprite_index = spr_espresso;
	 
}
if obj_daytime.time == "Night"{
	 
	sprite_index = spr_espresso;
	 
}

if oPlayer.x+21 >= id.x  &&  oPlayer.x <= id.x+21{
	
	yn = 1;
	
	if stat2 < 4{
		instance_create_depth(id.x-32,id.y-61,depth,obj_hints6);
		if instance_exists(obj_hints2){instance_destroy(obj_hints2);};
	}else if stat2 == 4{
		
		instance_create_depth(id.x-32,id.y-61,depth,obj_hints2);
		if instance_exists(obj_hints6){instance_destroy(obj_hints6);};
	}
	
} else {yn = 0;};


if stat2 == 0 {stat = false;};

if stat == false && canti > 0 && stat2 == 0{stat2 = 1;}

if stat2 == 3 { stat = true; };

if stat2 == 1 && _d == false{t_mill --;};

if t_mill <= 0{
	
	stat2 = 3;
	t_mill = 120;
	
}

//show_debug_message("Stat: "+string(stat)+" + Stat 2: "+string(stat2)+" Selected: "+string(selected)+" Type of coffe: "+string(global.espresso_selection));

if stat == true && stat2 == 3{
	
	notif = instance_create_depth(id.x+16,id.y-40,depth,obj_noti);
	stat2 = 4;
	
}

///Depth
depth = oPlayer.depth +1;

//Is there fine coffe seeds grinded?

if global.grinded_coffe_medium_fine > 8 || global.grinded_coffe_high_fine > 8 || global.espresso > 0 || global.intense_espresso > 0 {
	
	seeds = true;
	
}else{seeds = false;}

//Status of the espresso machine

if oPlayer.x+21 >= id.x &&  oPlayer.x <= id.x+21 && keyboard_check_released((ord("X")))==true && _d == false
	{
		global.action = true;
		///show_debug_message("HEEEEEERE2222222222222222");
	}
 
if global.action = true && oPlayer.sprite[1] != spr_Miguel_Idle_Right && oPlayer.image_index >14.5 && oPlayer.x+21 >= id.x &&  oPlayer.x <= id.x+21{
	
	if seeds = true && canti < 1000 && stat == false{
		//show_debug_message("HEEEEEERE11111");
		text_id = "espresso";
		create_textbox(_s.text_id);
		selected = 100;
		 
	}else if canti < 1000 && seeds = false && _d == false &&stat2!=4{
		
		text_id = "decollect_non6"
		create_textbox(_s.text_id);
		global.action = false;
		
	}
	if stat == true{
		
		canti = canti
				
		type = selected;
		
		if type == 1 {
			
			global.espresso = global.espresso + 1;
			global.coffe_collect = 1;
			text_id = "collect_espresso";
			create_notif(_s.text_id);
			
		}else if type == 2{
			
			global.intense_espresso = global.intense_espresso + 1;
			global.coffe_collect = 1;
			text_id = "collect_intense_espresso";
			create_notif(_s.text_id);
			
		}else if type == 3{
			
			global.americano = global.americano + 1;
			global.coffe_collect = 1;
			text_id = "collect_americano";
			create_notif(_s.text_id);
			
		}else if type == 4 {
			
			global.intense_americano = global.intense_americano + 1;
			global.coffe_collect = 1;
			text_id = "collect_intense_americano";
			create_notif(_s.text_id);
			
		}else if type == 5{
			
			global.cappuccino = global.cappuccino + 1;
			global.coffe_collect = 1;
			text_id = "collect_cappuccino";
			create_notif(_s.text_id);
			
		}else if type == 6{
			
			global.intense_cappuccino = global.intense_cappuccino + 1;
			global.coffe_collect = 1;
			text_id = "collect_intense_cappuccino";
			create_notif(_s.text_id);
			
		}else if type == 7 {
			
			global.latte = global.latte + 1;
			global.coffe_collect = 1;
			text_id = "collect_latte";
			create_notif(_s.text_id);
			
		}else if type == 8{
			
			global.intense_latte = global.intense_latte + 1;
			global.coffe_collect = 1;
			text_id = "collect_intense_latte";
			create_notif(_s.text_id);
			
		}
		
		canti = 0;
		stat2 = 0;
		global.action = false;
		selected = 0;
		instance_destroy(notif);
		global.espresso_selection = 0;
		
	}
			  
}
if selected == 100  && _d == false{
	
	show_debug_message("HEEEEEERE2222222222222222");
	
	
	
	if global.espresso_selection == 1{
		
		global.grinded_coffe_medium_fine = global.grinded_coffe_medium_fine - 8;
		noti = 8;
		text_id = "decollect_grinded_coffee_seeds_medium";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 1;
		
	}else if global.espresso_selection == 2{
		
		global.grinded_coffe_high_fine = global.grinded_coffe_high_fine - 8;
		noti = 8;
		text_id = "decollect_grinded_coffee_seeds_high";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 2;
		
	}else if global.espresso_selection == 3{
		
		global.espresso = global.espresso - 1;
		noti = 1;
		text_id = "decollect_espresso";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 3;
		
	}else if global.espresso_selection == 4{
		
		global.intense_espresso = global.intense_espresso - 1;
		noti = 1;
		text_id = "decollect_intense_espresso";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 4;
		
	}else if global.espresso_selection == 5{
		
		global.espresso = global.espresso - 1;
		noti = 1;
		text_id = "decollect_espresso";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 5;
		
	}else if global.espresso_selection == 6{
		
		global.intense_espresso = global.intense_espresso - 1;
		noti = 1;
		text_id = "decollect_intense_espresso";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 6;
		
	}else if global.espresso_selection == 7{
		
		global.espresso = global.espresso - 1;
		noti = 1;
		text_id = "decollect_espresso";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 7;
		
	}else if global.espresso_selection == 8{
		
		global.intense_espresso = global.intense_espresso - 1;
		noti = 1;
		text_id = "decollect_intense_espresso";
		global.coffe_decollect = noti;
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		canti = 1;
		selected = 8;
		
	}else{};
	 
	 
	global.action = false;
	 
 }