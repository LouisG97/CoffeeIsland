draw_set_color(c_white);



textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]);




if open == true{
	
	
}

if open == false{
	
	if selection = 0{ 
		
		//Draw menu font
		draw_sprite_ext(spr_big_menu, 0, 4+textbox_x, 4+textbox_y, 1, 1, 0, c_white,1); 
		
		//Draw selected option
		draw_text_transformed(43+textbox_x,6.5+textbox_y, "Settings",1,1,0);
		draw_sprite_ext(spr_ui_options, 0, 30, 6.5+textbox_y, .75, .75, 0, c_white, 1);
		
		//Draw the rest of the interface
		draw_sprite_ext(spr_ui_options, 1, 90.5+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_options, 2, 111.5+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_open2, 0, 270.75+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		
	}
	if selection = 1{ 
		
		//Draw menu font
		draw_sprite_ext(spr_big_menu, 1, 4+textbox_x, 4+textbox_y, 1, 1, 0, c_white,1); 
		
		//Draw selected option
		draw_text_transformed(63.5+textbox_x,6.5+textbox_y, "Missions",1,1,0);
		draw_sprite_ext(spr_ui_options, 1, 50.5+textbox_x, 6.5+textbox_y, .75, .75, 0, c_white, 1);
		
		//Draw the rest of the interface
		draw_sprite_ext(spr_ui_options, 0, 27.5+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_options, 2, 111.5+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_open2, 0, 270.75+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		draw_text_transformed(17+textbox_x,20.5+textbox_y, "Story Missions",1,1,0);
		draw_text_transformed(17+textbox_x,87.5+textbox_y, "Secondary Missions",1,1,0);
		
		//Draw selection:
		if no_level == false {
			if move == 0 {draw_sprite_ext(spr_ui_selected, 0, 16.5+textbox_x, 34+textbox_y, 2.5, 1.2, 0, c_white, 1);}
			else if move == 1 {draw_sprite_ext(spr_ui_selected, 0, 16.5+textbox_x, 34+18+textbox_y, 2.5, 1.2, 0, c_white, 1);}
			else if move == 2 {draw_sprite_ext(spr_ui_selected, 0, 16.5+textbox_x, 34+36+textbox_y, 2.5, 1.2, 0, c_white, 1);}
			getMissions(textbox_x,textbox_y);
			getMissionDetails(mission_index,textbox_x,textbox_y);
		
		}else{ draw_text_transformed(17+textbox_x,34.5+textbox_y, "No missions to show here",.85,.85,0);};
		
		
		
		
		
		//show_debug_message("Level: "+string(level)+" Move: "+string(move));
		//for (a = 0; a<array_length(global.mission); a++){
		//show_debug_message("Mission "+string(a) + ": "+string(global.mission[a])+" Visible: "+string(global.mission_visible[a]));
		//}
	}
	if selection = 2{ 
		
		//Draw menu font
		draw_sprite_ext(spr_big_menu, 2, 4+textbox_x, 4+textbox_y, 1, 1, 0, c_white,1); 
		
		//Draw selected option
		draw_text_transformed(88.5+textbox_x,6.5+textbox_y, "Store",1,1,0);
		draw_sprite_ext(spr_ui_options, 2, 75.5+textbox_x, 6.5+textbox_y, .75, .75, 0, c_white, 1);
		
		//Draw the rest of the interface
		draw_sprite_ext(spr_ui_options, 0, 27.5+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_options, 1, 48.25+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_open2, 0, 270.75+textbox_x, 6+textbox_y, .75, .75, 0, c_white, 1);
		
	}
	
}


	