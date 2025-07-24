var _s = id;
var _d = instance_exists(obj_textbox);

if obj_daytime.time == "Day"{
	 
	sprite_index = spr_drier2_d2;
	if stat2 = 2{stat2 = 3;};
	 
}
if obj_daytime.time == "Afternoon"{
	 
	sprite_index = spr_drier2_t;
	 
}
if obj_daytime.time == "Night"{
	 
	sprite_index = spr_drier2_n;
	if stat2 = 1{stat2 = 2;};
	 
}

if oPlayer.x+18 >= id.x &&  oPlayer.x <= id.x+18 {
	
	instance_create_depth(id.x-32,id.y-54,depth,obj_hints3);
	//show_debug_message(string(depth));
	
} 

if stat == true && canti == 0{stat2 = 0;};

if stat2 == 0 {stat = false;};

if stat == false && canti > 0 && stat2 == 0{stat2 = 1;};

if stat2 == 3 { stat = true; };

//show_debug_message("Stat: "+string(stat)+" + Stat 2: "+string(stat2));




///Depth
depth = oPlayer.depth +1;

//Status of the drier
if canti > 0 && canti < 200 && stat == false{image_index = 1;};
if canti >= 200 && canti < 400 && stat == false{image_index = 3;};
if canti >= 400 && canti < 600 && stat == false{image_index = 5;};
if canti >= 600 && canti < 800 && stat == false{image_index = 7;};
if canti >= 800 && canti <= 1000 && stat == false{image_index = 9;};
if canti > 0 && canti < 200 && stat == true{image_index = 2;};
if canti >= 200 && canti < 400 && stat == true{image_index = 4;};
if canti >= 400 && canti < 600 && stat == true{image_index = 6;};
if canti >= 600 && canti < 800 && stat == true{image_index = 8;};
if canti >= 800 && canti <= 1000 && stat == true{image_index = 10;};


if oPlayer.x+18 >= id.x &&  oPlayer.x <= id.x+18 && keyboard_check_released((ord("X")))==true && _d == false
	{
		global.action = true;
	}
 
 if global.action = true && oPlayer.sprite[1] != spr_Miguel_Idle_Right && oPlayer.image_index >15.5 && oPlayer.x+18 >= id.x &&  oPlayer.x <= id.x+18{
	 
	if global.coffe_cherries > 0 && canti < 1000 && stat == false{
		 
		canti = canti + global.coffe_cherries;
		noti = global.coffe_cherries;
		if canti > 1000{
			  
			global.coffe_cherries = canti - 1000;
			canti = 1000;
			noti = noti - global.coffe_cherries;
			
			  
		}else if canti <= 1000{
			
			global.coffe_cherries = 0;
			
		}
		
		global.coffe_decollect = noti;
		text_id = "decollect_coffee_cherries"
		create_notif(_s.text_id);
		global.coffe_decollect = 0;
		global.action = false;
		 
	}else if canti >= 1000 && global.coffe_cherries > 0 && _d == false{
		
		text_id = "decollect_non"
		create_textbox(_s.text_id);
		
	}else if canti < 1000 && global.coffe_cherries == 0 && _d == false{
		
		text_id = "decollect_non2"
		create_textbox(_s.text_id);
		
	}
			  
 }