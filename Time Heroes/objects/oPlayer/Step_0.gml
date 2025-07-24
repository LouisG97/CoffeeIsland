/// Get imputs
	getControls();

	
///Checking if there are any checkbox active
if instance_exists(obj_textbox)||obj_options.open = true{
	
	impediment = true;
	
}else{
	
	impediment = false;

}

///Sprites by time
if obj_daytime.time == "Day"{
	
	cole = spr_Miguel_Collecting_Left;
	cole2 = spr_Miguel_Collecting_Right;
	idD = spr_Miguel_Idle_Right;
	idL = spr_Miguel_Idle_Left;
	ri = spr_Miguel_Right;
	le = spr_Miguel_Left;
	jur = spr_Miguel_Jump_Right;
	jul = spr_Miguel_Jump_Left;
	
	
	if sprite[1] == spr_Miguel_Idle_Right_n{
		
		sprite[1] = idD;
		sprite[2] = idL;
		
	}else if sprite[1] == spr_Miguel_Collecting_Right_n{
		
		sprite[1] = cole2;
		sprite[2] = cole;
		
	}
	
	sprite[3] = ri;
	sprite[4] = le;
	sprite[5] = jur;
	sprite[6] = jul;
	
}

if obj_daytime.time == "Afternoon"{
	
	cole = spr_Miguel_Collecting_Left_t;
	cole2 = spr_Miguel_Collecting_Right_t;
	idD = spr_Miguel_Idle_Right_t;
	idL = spr_Miguel_Idle_Left_t;
	ri = spr_Miguel_Right_t;
	le = spr_Miguel_Left_t;
	jur = spr_Miguel_Jump_Right_t;
	jul = spr_Miguel_Jump_Left_t;
	
	//show_debug_message("SHOW: "+string(sprite[1]));
	
	if sprite[1] == spr_Miguel_Idle_Right {
		
		//show_debug_message("SHOW THIIIIIIS");
		
		sprite[1] = idD;
		sprite[2] = idL;
		
	}else if sprite[1] == spr_Miguel_Collecting_Right{
		
		sprite[1] = cole2;
		sprite[2] = cole;
		
	}
	
	sprite[3] = ri;
	sprite[4] = le;
	sprite[5] = jur;
	sprite[6] = jul;
	
}

if obj_daytime.time == "Night"{
	
	cole = spr_Miguel_Collecting_Left_n;
	cole2 = spr_Miguel_Collecting_Right_n;
	idD = spr_Miguel_Idle_Right_n;
	idL = spr_Miguel_Idle_Left_n;
	ri = spr_Miguel_Right_n;
	le = spr_Miguel_Left_n;
	jur = spr_Miguel_Jump_Right_n;
	jul = spr_Miguel_Jump_Left_n;
	
	//show_debug_message("SHOW: "+string(sprite[1]));
	
	if sprite[1] == spr_Miguel_Idle_Right_t {
		
		//show_debug_message("SHOW THIIIIIIS");
		
		sprite[1] = idD;
		sprite[2] = idL;
		
	}else if sprite[1] == spr_Miguel_Collecting_Right_t{
		
		sprite[1] = cole2;
		sprite[2] = cole;
		
	}
	
	sprite[3] = ri;
	sprite[4] = le;
	sprite[5] = jur;
	sprite[6] = jul;
	
}



///ACTIONS

if instance_exists(obj_toaster){
	
	if obj_toaster.yn == 1{
		
		accionar = true;
		
	}else{accionar = false;};
	
}

if instance_exists(obj_grinder){
	
	if obj_grinder.yn == 1{
		
		accionar3 = true;
		
	}else{accionar3 = false;};
	
}

if instance_exists(obj_espresso){
	
	if obj_espresso.yn == 1{
		
		accionar4 = true;
		
	}else{accionar4 = false;};
	
}


if instance_exists(obj_hints2) || instance_exists(obj_hints3){
	
	accionar2 = true;

}else{accionar2 = false;};

if accionar == true || accionar2 == true || accionar3 == true || accionar4 == true{
	
	//if xspd != 0 && yspd != 0{
	//show_debug_message("Exist");
	//show_debug_message("Exist");
	//show_debug_message("Exist");
	
		if collectKeyPressed == true && impediment == false && sprite[1] != cole2{
			image_index = 0;
			sprite[2] = cole;
			sprite[1] = cole2;
		}
		if sprite[2] == cole{
			impediment = true;
			xspd = 0;
			yspd = 0;
			if image_index >15.5{	
				sprite[2] = idL;
				sprite[1] = idD;
		
			}
		}
}


///Can move if there is no impediments (menu, inventory, textbox, etc...)

if impediment = false{
	
	///X movement

		moveDir = rightKey - leftKey;

		///Get out x speed

		xspd = moveDir * moveSpd;

		///X collision

		var _subPixel = .5;
		if place_meeting(x+xspd,y,oWall)
		{
			///Scoot up to wall precisely
			var _pixelCheck =  _subPixel * sign(xspd);
			while !place_meeting(x + _pixelCheck, y, oWall)
			{
				x += _pixelCheck;
			}
	
			///Set xspd to 0 to "collide"
			xspd = 0;
		}

		///Move
		x += xspd;

	//Y Movement


		///Gravity
		yspd += grav;
	
		///Cap falling speed 
		if yspd > termVel {yspd =  termVel;};
	
		///Jump
		if jumpKeyPressed && place_meeting(x, y+1, oWall)
		{
			yspd = jspd;
			if jmpT == 0 || jmpT == 2
			{
				jmpT = 1;
			}
		}
	
		if jumpKeyReleased
		{
			if jmpT == 1
			{
				jmpT = 2;
			}
		}
		//show_debug_message(yspd);
		///Double Jump
		if jumpKeyPressed && jmpT == 2
		{
			yspd = jspd;
			jmpT = 0;
		}
	
	
		///Y collision
		var _subPixel  = .5;
		if place_meeting(x, y+yspd, oWall)
		{
			var _pixelCheck = _subPixel * sign(yspd);
			while !place_meeting(x, y + _pixelCheck, oWall)
			{
				y += _pixelCheck
			}
		
			///Set yspd to 0  to collide
			yspd = 0;
		}
	
		///Move
		y += yspd;
		if y < 142{
			
			jumpStart = jumpStart +1;
		
		}
		if jumpStart == 1{
		
			image_index = 4;
		
		}
		if y > 142{
			
			jumpStart = 0;
			
		}
		//show_debug_message("Jump Start: "+string(jumpStart));
		//show_debug_message("Jumping: "+string(y));
	
}else {
	
}
	

//set sprite


mask_index = sprite[1];

if xspd > 0 && yspd ==0 {
	face = 3;
	lastSide = 0;
}
if xspd < 0 && yspd ==0 {
	face = 4;
	lastSide = 1;
}
if  xspd == 0 && yspd ==0 && lastSide ==0{
	face = 1;
}
if  xspd == 0 && yspd ==0 && lastSide ==1{
	face = 2;
}

if lastSide == 0 && yspd < 0{

	face = 5;
	lastSide = 0;
	if image_index >8 && image_index < 10{
		
		image_index =8;
		
	}
	
}
if lastSide == 0 && yspd > 0{

	face = 5;
	lastSide = 0;
	if image_index >11 && image_index < 13{
		
		image_index =12;
		
	}	
	
}
if lastSide == 1 && yspd < 0{

	face = 6;
	lastSide = 1;
	if image_index >8 && image_index < 10{
		
		image_index =8;
		
	}
	
}
if lastSide == 1 && yspd > 0{

	face = 6;
	lastSide = 1;
	if image_index >11 && image_index < 13{
		
		image_index =12;
		
	}	
	
}


//show_debug_message(global.notif);




//image_index
	

sprite_index = sprite[face];

