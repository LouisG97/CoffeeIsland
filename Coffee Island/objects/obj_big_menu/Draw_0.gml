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
		draw_text_transformed(43,6.5, "Settings",1,1,0);
		draw_sprite_ext(spr_ui_options, 0, 30, 6.5, .75, .75, 0, c_white, 1);
		
		//Draw the rest of the interface
		draw_sprite_ext(spr_ui_options, 1, 90.5, 6, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_options, 2, 111.5, 6, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_open2, 0, 270.75, 6, .75, .75, 0, c_white, 1);
		
	}
	if selection = 1{ 
		
		//Draw menu font
		draw_sprite_ext(spr_big_menu, 1, 4+textbox_x, 4+textbox_y, 1, 1, 0, c_white,1); 
		
		//Draw selected option
		draw_text_transformed(63.5,6.5, "Missions",1,1,0);
		draw_sprite_ext(spr_ui_options, 1, 50.5, 6.5, .75, .75, 0, c_white, 1);
		
		//Draw the rest of the interface
		draw_sprite_ext(spr_ui_options, 0, 27.5, 6, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_options, 2, 111.5, 6, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_open2, 0, 270.75, 6, .75, .75, 0, c_white, 1);
		getMissions();
	}
	if selection = 2{ 
		
		//Draw menu font
		draw_sprite_ext(spr_big_menu, 2, 4+textbox_x, 4+textbox_y, 1, 1, 0, c_white,1); 
		
		//Draw selected option
		draw_text_transformed(88.5,6.5, "Store",1,1,0);
		draw_sprite_ext(spr_ui_options, 2, 75.5, 6.5, .75, .75, 0, c_white, 1);
		
		//Draw the rest of the interface
		draw_sprite_ext(spr_ui_options, 0, 27.5, 6, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_options, 1, 48.25, 6, .75, .75, 0, c_white, 1);
		draw_sprite_ext(spr_ui_open2, 0, 270.75, 6, .75, .75, 0, c_white, 1);
		
	}
	
}


	