draw_set_color(c_white);



textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]);




if open == true{
	
	draw_sprite_ext(spr_ui, 0, 66+textbox_x, 4+textbox_y, 1.5, 1.08, 0, c_white, .8);
	draw_sprite_ext(spr_ui_gold, 0, 67+textbox_x, 6.7+textbox_y, 1, 1, 0, c_white, 1);
	draw_text(80+textbox_x,8+textbox_y, "0");
	
	
	if page == 1 {
		
		draw_sprite_ext(spr_ui, 0, 4+textbox_x, 4+textbox_y, 3.75, 5.05, 0, c_white, .94);
		draw_sprite_ext(spr_ui_open2, 1, 8+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(7.5+textbox_x,19+textbox_y, "-----------",.82,.82,0);
		draw_sprite_ext(spr_ui_selected, 0, 6.5+textbox_x, 27.5+textbox_y+selected_y, 1.05, 1.18, 0, c_white, 1);
		draw_text(23+textbox_x-espa2,30+textbox_y, "Settings");
		draw_sprite_ext(spr_ui_options, 0, 8+textbox_x-espa2, 29+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(23+textbox_x-espa2,44+textbox_y,"Missions");
		draw_sprite_ext(spr_ui_options, 1, 8+textbox_x-espa2, 43+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(23+textbox_x-espa2,58+textbox_y,"Store");
		draw_sprite_ext(spr_ui_options, 2, 8+textbox_x-espa2, 57+textbox_y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_ui_change_page3, 0, 8+textbox_x, 72+textbox_y, 1, 1, 0, c_white, 1);
		//Number of page
		draw_set_color(c_yellow);
		//draw_text(252+textbox_x,50+textbox_y,"1");
		draw_set_color(c_white);
		
	}
	
}

if open == false{
	
	draw_sprite_ext(spr_ui, 0, 4+textbox_x, 4+textbox_y, 1.2, 1.08, 0, c_white, .75);
	draw_sprite_ext(spr_ui_open2, 0, 8+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
	
	draw_sprite_ext(spr_ui, 0, 25+textbox_x, 4+textbox_y, 1.5, 1.08, 0, c_white, .8);
	draw_sprite_ext(spr_ui_gold, 0, 26+textbox_x, 6.7+textbox_y, 1, 1, 0, c_white, 1);
	draw_text(39+textbox_x,8+textbox_y, "0");
	
}


	