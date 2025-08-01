function getControls()
{
	///Direction inpunts
	rightKey = keyboard_check(vk_right);
	leftKey = keyboard_check(vk_left);
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
	

global.mission[0] = false;
global.mission[1] = false;
global.mission[2] = false;

function getMissions(){
	
	draw_text_transformed(17,20.5, "Story Missions",1,1,0);
	draw_text_transformed(17,87.5, "Secondary Missions",1,1,0);
	
	//Make me an espresso
	if global.mission[0] == true{
		
		draw_text_transformed(34,38, "Make me an espresso!",.8,.8,0);
		draw_sprite_ext(spr_portrait_Gambril, 0, 17, 34, .2, .2, 0, c_white, 1);
		
	}
	
	//Make me an intense espresso
	if global.mission[1] == true{
		
		c = 0;
		
		for (a = 0; a<1; a++){
			
			if global.mission[a] == true {c = c + 18;};
		
		}
		
		show_debug_message(string(c));
		
		draw_text_transformed(34,38+c, "Make me an intense espresso!",.8,.8,0);
		draw_sprite_ext(spr_portrait_Gambril, 0, 17, 34+c, .2, .2, 0, c_white, 1);
		c = 0;
		
	}
	
	//Make me an intense espresso
	if global.mission[2] == true{
		
		c = 0;
		
		for (a = 0; a<2; a++){
			
			if global.mission[a] == true {c = c + 18;};
		
		}
		
		show_debug_message(string(c));
		
		draw_text_transformed(34,38+c, "Make me a capuccino!",.8,.8,0);
		draw_sprite_ext(spr_portrait_Gambril, 0, 17, 34+c, .2, .2, 0, c_white, 1);
		c = 0;
		
	}
	
	
}