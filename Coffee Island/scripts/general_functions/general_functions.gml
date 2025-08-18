function getControls()
{
	///Direction inpunts
	rightKey = keyboard_check(vk_right);
	leftKey = keyboard_check(vk_left);
	rightKeyReleased = keyboard_check_released(vk_right);
	leftKeyReleased = keyboard_check_released(vk_left);
	downKey = keyboard_check_released(vk_down);
	upKey = keyboard_check_released(vk_up);
	
	///Action inputs
	jumpKeyPressed =keyboard_check_pressed(vk_space);
	jumpKeyReleased = keyboard_check_released(vk_space);
	acceptKeyReleased = keyboard_check_released(vk_space);
	acceptKeyReleased2 = keyboard_check_released(vk_enter);
	collectKeyPressed = keyboard_check_released(ord("X"));
	InvKeyPressed = keyboard_check_released(ord("O"));
	MenuKeyPressed = keyboard_check_released(ord("I"));
	InvKeyS = keyboard_check_released(ord("S"));
	InvKeyA = keyboard_check_released(ord("A"));
	InvKeyD = keyboard_check_released(ord("D"));
	InvKeyW = keyboard_check_released(ord("W"));
}

//Volume
global.fx_volume = 5;
global.music_volume = 5;
	
//Active Mission
global.mission[0] = false;
global.mission[1] = false;
global.mission[2] = false;
global.mission[3] = false;

//Visible Mission
global.mission_visible[0] = false;
global.mission_visible[1] = false;
global.mission_visible[2] = false;
global.mission_visible[3] = false;

//Stage of mission

global.mission_stage[0] = 1;
global.mission_stage[1] = 1;
global.mission_stage[2] = 1;
global.mission_stage[3] = 1;

function getMissions(textbox_x,textbox_y){
	
	
	n1 = "";
	n2 = "";
	n3 = "";
	s1 = spr_portrait_Gambril;
	s2 = spr_portrait_Gambril;
	s3 = spr_portrait_Gambril;
	
	
	//Make me an espresso
	if global.mission[0] == true{
		
		
		if global.mission_visible[0] == true{
			
			n1 = "Make me an espresso!"
						
			draw_text_transformed(34+textbox_x,38+textbox_y, n1,.8,.8,0);
			draw_sprite_ext(s1, 0, 17+textbox_x, 34+textbox_y, .2, .2, 0, c_white, 1);
		
		}
		
	}
	
	//Make me an intense espresso
	if global.mission[1] == true{
		
		c = 0;
		
		if global.mission_visible[1] == true{
			
			if global.mission_visible[0] == true {
				
				c = c + 18
				n2 = "Make me an intense espresso!"
			
			}else{n1 = "Make me an intense espresso!"}
			
			if c <= 36 {
		
				draw_text_transformed(34+textbox_x,38+c+textbox_y, n2,.8,.8,0);
				draw_sprite_ext(s2, 0, 17+textbox_x, 34+c+textbox_y, .2, .2, 0, c_white, 1);
				
			}
			
		}
		
		c = 0;
		
	}
	
	//Make me a cappuccino!
	if global.mission[2] == true{
		
		c = 0;
		
		if global.mission_visible[2] == true{
			
			if global.mission_visible[0] == true {c = c + 18}
			if global.mission_visible[1] == true {c = c + 18}
			
			if c == 0 {n1 =  "Make me a cappuccino!"}
			else if c == 18 {n2 =  "Make me a cappuccino!"}
			else if c == 36 {n3 =  "Make me a cappuccino!"};
			
			
			if c <= 36 {
		
				draw_text_transformed(34+textbox_x,38+c+textbox_y, "Make me a cappuccino!",.8,.8,0);
				draw_sprite_ext(spr_portrait_Gambril, 0, 17+textbox_x, 34+c+textbox_y, .2, .2, 0, c_white, 1);
				
			}
			
		}
		
		c = 0;
		
	}
	
	//Make me a Latte
	if global.mission[3] == true{
		
		c = 0;
		
		if global.mission_visible[3] == true{
			
			for(a = 0; a < 3; a++){if global.mission_visible[a] == true { c = c + 18};};
			
			if c == 0 {n1 =  "Make me a latte!"}
			else if c == 18 {n2 =  "Make me a latte!"}
			else if c == 36 {n3 =  "Make me a latte!"};
			
		}
		c = 0;
	}
	
	
	
	//Print text
	
	c = 0;
	for(a = 0; a <= 3; a++){
		
		//show_debug_message("C"+string(a)+": "+string(c));
	
		if global.mission_visible[a] == true { c = c + 18};
		
	}
	
	if c > 54 { c= 54; };
	
	//show_debug_message("N1: "+n1+", N2: "+n2+", N3: "+n3+", C: "+string(c));
	
	if c == 18 {
		draw_text_transformed(34+textbox_x,38+textbox_y, n1,.8,.8,0);
		draw_sprite_ext(s1, 0, 17+textbox_x, 34+textbox_y, .2, .2, 0, c_white, 1);
	}else if c == 36 {
		draw_text_transformed(34+textbox_x,38+textbox_y, n1,.8,.8,0);
		draw_sprite_ext(s1, 0, 17+textbox_x, 34+textbox_y, .2, .2, 0, c_white, 1);
		draw_text_transformed(34+textbox_x,38+18+textbox_y, n2,.8,.8,0);
		draw_sprite_ext(s2, 0, 17+textbox_x, 34+18+textbox_y, .2, .2, 0, c_white, 1);
	}else if c == 54 {
		draw_text_transformed(34+textbox_x,38+textbox_y, n1,.8,.8,0);
		draw_sprite_ext(s1, 0, 17+textbox_x, 34+textbox_y, .2, .2, 0, c_white, 1);
		draw_text_transformed(34+textbox_x,38+18+textbox_y, n2,.8,.8,0);
		draw_sprite_ext(s2, 0, 17+textbox_x, 34+18+textbox_y, .2, .2, 0, c_white, 1);
		draw_text_transformed(34+textbox_x,38+36+textbox_y, n3,.8,.8,0);
		draw_sprite_ext(s3, 0, 17+textbox_x, 34+36+textbox_y, .2, .2, 0, c_white, 1);
	}
	
	
}

function draw_wrapped_text_by_width(x, y, text, max_width, scale_x, scale_y, angle) {
    var lines = string_wrap_width(text, max_width, scale_x);
    var line_height = 14 * scale_y;

    for (var i = 0; i < array_length(lines); i++) {
        draw_text_transformed(x, y + i * line_height, lines[i], scale_x, scale_y, angle);
    }
}

function string_wrap_width(text, max_width, scale_x) {
    var words = string_split(text, " ");
    var result = [];
    var current_line = "";

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        var test_line = current_line;

        if (test_line != "") test_line += " ";
        test_line += word;

        var width = string_width(test_line) * scale_x;

        if (width <= max_width) {
            current_line = test_line;
        } else {
            array_push(result, current_line);
            current_line = word;
        }
    }

    if (current_line != "") {
        array_push(result, current_line);
    }

    return result;
}

function getMissionDetails(mission_index,textbox_x,textbox_y){
	
	mission_name = "";
	mission_r = "";
	mission_part = ""
	mission_details = "";
	mission_rewards = "";
	wi1 = 1;
	hi1 = 1;
	wi2 = .85;
	hi2 = .85;
	wi3 = .85;
	hi3 = .85;
	
	//Mission 0
	
	if mission_index == 0 {
		
		//show_debug_message("Llegamos aqui a revisar");
		
		mission_name = "Make me an espresso!";
		mission_r = "Rewards";
		
		if global.mission_stage[0] == 1{
			
			mission_part = "Part 1 of 6:";
			
			mission_details = "Get some coffee cherries";
			
		}else if global.mission_stage[0] == 2 {
			
			mission_part = "Part 2 of 6:";
			
			mission_details = "Dry the coffee cherries";
			
		}else if global.mission_stage[0] == 3{
			
			mission_part = "Part 3 of 6:";
			
			mission_details = "Medium toast the dried coffe seeds";
			
		}else if global.mission_stage[0] == 4{
			
			mission_part = "Part 4 of 6:";
			
			mission_details = "Fine grind the toasted seeds";
			
		}else if global.mission_stage[0] == 5{
			
			mission_part = "Part 5 of 6:";
			
			mission_details = "Use the espresso machine to make an espresso";
			
		}else if global.mission_stage[0] == 6{
			
			mission_part = "Part 6 of 6:";
			
			mission_details = "Deliver the espresso to Gambril";
			
		}
		
		mission_rewards = "50 Gold";
		
		
	}
	
	//Mission 1
	
	if mission_index == 1 {
		
		
		mission_name = "Make me an intense espresso!";
		mission_r = "Rewards";
		
		if global.mission_stage[1] == 1{
			mission_part = "Part 1 of 2:";
			
			mission_details = "Use the espresso machine to prepare an intense espresso, this time you will have to high toast the coffee seeds, unlike the regular espresso";
			
		}else if global.mission_stage[1] == 2 {
			
			mission_part = "Part 2 of 2:";
			
			mission_details = "Deliver the intense espresso to Gambril";
			
		}
		
		mission_rewards = "50 Gold";
	}
	
	//Mission 2
	if mission_index == 2 {
		
		
		mission_name = "Make me a cappuccino!";
		mission_r = "Rewards";
		
		if global.mission_stage[2] == 1{
			mission_part = "Part 1 of 3:";
			
			mission_details = "Prepare a regular espresso";
			
		}else if global.mission_stage[2] == 2 {
			
			mission_part = "Part 2 of 3:";
			
			mission_details = "Use the espresso machine to create a cappucino in the 'milk based' drinks";
			
		}else if global.mission_stage[2] == 3 {
			
			mission_part = "Part 3 of 3:";
			
			mission_details = "Deliver the Capuccino to Gambril";
			
		}
		
		mission_rewards = "20 Gold";
	}
	
	//Mission 3
	if mission_index == 3 {
		
		
		mission_name = "Make me a latte!";
		mission_r = "Rewards";
		
		if global.mission_stage[3] == 1{
			mission_part = "Part 1 of 3:";
			
			mission_details = "Prepare a regular espresso";
			
		}else if global.mission_stage[3] == 2 {
			
			mission_part = "Part 2 of 3:";
			
			mission_details = "Use the espresso machine to create a latte in the 'milk based' drinks";
			
		}else if global.mission_stage[3] == 3 {
			
			mission_part = "Part 3 of 3:";
			
			mission_details = "Deliver the Latte to Gambril";
			
		}
		
		mission_rewards = "20 Gold";
	}
	
	//Mission Name
	draw_text_transformed(151+textbox_x,20.5+textbox_y, mission_name,wi1,hi1,0);
	
	//Mission details
	if mission_part == ""{draw_text_transformed(151+textbox_x,35+textbox_y, mission_details,wi2,hi2,0);}
	else {
		
		draw_text_transformed(151+textbox_x,35+textbox_y, mission_part,wi2,hi2,0); 
		//draw_text_transformed(151,35+11, mission_details,wi2,hi2,0);
		draw_wrapped_text_by_width(151+textbox_x,35+11+textbox_y,mission_details, 130 ,wi2,hi2, 0);
		
	}
	
	//Rewards
	draw_text_transformed(151+textbox_x,119+textbox_y, mission_r,wi1,hi1,0);
	draw_text_transformed(151+textbox_x,131+textbox_y, mission_rewards,wi3,hi3,0);
	
	
	
}