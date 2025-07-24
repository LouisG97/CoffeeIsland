draw_set_color(c_white);



textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]);




if open == true{
	
	if page == 0 {
		
		draw_sprite_ext(spr_ui, 0, 223+textbox_x, 4+textbox_y, 3.8, 6.4, 0, c_white, .94);
		draw_text(228.5+textbox_x,8+textbox_y, string(t_hour));
		draw_sprite_ext(spr_ui_open, 1, 268+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_ui_coffee, 0, 245+textbox_x-espa, 20+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa,22+textbox_y,string(global.coffe_cherries)+ " gr.");
		draw_sprite_ext(spr_ui_coffee_seed, 0, 245+textbox_x-espa2, 33+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa2,35+textbox_y,string(global.coffe_seeds)+ " gr.");
		draw_text(227+textbox_x,45+textbox_y,string("---------"));
		draw_sprite_ext(spr_ui_coffee_seed_light, 0, 245+textbox_x-espa3, 52+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa3,54+textbox_y,string(global.coffe_seeds_light)+ " gr.");
		draw_sprite_ext(spr_ui_coffee_seed_medium, 0, 245+textbox_x-espa4, 65+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa4,67+textbox_y,string(global.coffe_seeds_medium)+ " gr.");
		draw_sprite_ext(spr_ui_coffee_seed_high, 0, 245+textbox_x-espa5, 78+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa5,80+textbox_y,string(global.coffe_seeds_high)+ " gr.");
		//draw_text(227+textbox_x,92+textbox_y,string("---------"));
		//draw_sprite_ext(spr_ui_change_page, 0, 227+textbox_x, 94+textbox_y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_ui_change_page2, 0, 227+textbox_x, 94+textbox_y, 1, 1, 0, c_white, 1);
		
	}
	if page == 1 {
		
		draw_sprite_ext(spr_ui, 0, 223+textbox_x, 4+textbox_y, 3.8, 4.425, 0, c_white, .94);
		draw_text_transformed(228.5+textbox_x,8+textbox_y, string(t_hour),1,1,0);
		draw_sprite_ext(spr_ui_open, 1, 268+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(226.5+textbox_x,22+textbox_y, "--- Seeds ---",.80,.80,0);
		draw_sprite_ext(spr_ui_coffee, 0, 245+textbox_x-espa, 33+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa,35+textbox_y,string(global.coffe_cherries)+ " gr.");
		draw_sprite_ext(spr_ui_coffee_seed, 0, 245+textbox_x-espa2, 46+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa2,48+textbox_y,string(global.coffe_seeds)+ " gr.");
		draw_sprite_ext(spr_ui_change_page2, 0, 227+textbox_x, 62+textbox_y, 1, 1, 0, c_white, 1);
		//Number of page
		draw_set_color(c_yellow);
		//draw_text(252+textbox_x,50+textbox_y,"1");
		draw_set_color(c_white);
		
	}
	if page == 2 {
		
		draw_sprite_ext(spr_ui, 0, 223+textbox_x, 4+textbox_y, 3.8, 5.2, 0, c_white, .94);
		draw_text(228.5+textbox_x,8+textbox_y, string(t_hour));
		draw_sprite_ext(spr_ui_open, 1, 268+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(227.5+textbox_x,22+textbox_y, "-- Toasted --",.80,.80,0);
		draw_sprite_ext(spr_ui_coffee_seed_light, 0, 245+textbox_x-espa3, 33+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa3,35+textbox_y,string(global.coffe_seeds_light)+ " gr.");
		draw_sprite_ext(spr_ui_coffee_seed_medium, 0, 245+textbox_x-espa4, 46+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa4,48+textbox_y,string(global.coffe_seeds_medium)+ " gr.");
		draw_sprite_ext(spr_ui_coffee_seed_high, 0, 245+textbox_x-espa5, 59+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-espa5,61+textbox_y,string(global.coffe_seeds_high)+ " gr.");
		draw_sprite_ext(spr_ui_change_page2, 0, 227+textbox_x, 74+textbox_y, 1, 1, 0, c_white, 1);
		//Number of page
		draw_set_color(c_yellow);
		//draw_text(252+textbox_x,63+textbox_y,"2");
		draw_set_color(c_white);
		
	}
	if page == 3 {
		
		draw_sprite_ext(spr_ui, 0, 223+textbox_x, 4+textbox_y, 3.8, 12.95, 0, c_white, .94);
		draw_text(228.5+textbox_x,8+textbox_y, string(t_hour));
		draw_sprite_ext(spr_ui_open, 1, 268+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(227.85+textbox_x,22+textbox_y, "-- Grinded --",.80,.80,0);
		
		draw_text_transformed(248+textbox_x,33+textbox_y, "Light toast",.70,.70,0);
		draw_sprite_ext(spr_ui_grinded_light_fine, 0, 243+textbox_x-esp1, 43+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp1,45+textbox_y,string(global.grinded_coffe_light_fine)+ " gr.");
		draw_sprite_ext(spr_ui_grinded_light_medium, 0, 243+textbox_x-esp2, 58+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp2,60+textbox_y,string(global.grinded_coffe_light_medium)+ " gr.");
		draw_sprite_ext(spr_ui_grinded_light_coarse, 0, 243+textbox_x-esp3, 73+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp3,75+textbox_y,string(global.grinded_coffe_light_coarse)+ " gr.");
		
		draw_text_transformed(241.7+textbox_x,88+textbox_y, "Medium toast",.70,.70,0);
		draw_sprite_ext(spr_ui_grinded_medium_fine, 0, 243+textbox_x-esp4, 98+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp4,100+textbox_y,string(global.grinded_coffe_medium_fine)+ " gr.");
		draw_sprite_ext(spr_ui_grinded_medium_medium, 0, 243+textbox_x-esp5, 113+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp5,115+textbox_y,string(global.grinded_coffe_medium_medium)+ " gr.");
		draw_sprite_ext(spr_ui_grinded_medium_coarse, 0, 243+textbox_x-esp6, 128+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp6,130+textbox_y,string(global.grinded_coffe_medium_coarse)+ " gr.");
		
		draw_text_transformed(250+textbox_x,143+textbox_y, "High toast",.70,.70,0);
		draw_sprite_ext(spr_ui_grinded_high_fine, 0, 243+textbox_x-esp7, 153+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp7,155+textbox_y,string(global.grinded_coffe_high_fine)+ " gr.");
		draw_sprite_ext(spr_ui_grinded_high_medium, 0, 243+textbox_x-esp8, 168+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp8,170+textbox_y,string(global.grinded_coffe_high_medium)+ " gr.");
		draw_sprite_ext(spr_ui_grinded_high_coarse, 0, 243+textbox_x-esp9, 183+textbox_y, 1, 1, 0, c_white, 1);
		draw_text(258.5+textbox_x-esp9,185+textbox_y,string(global.grinded_coffe_high_coarse)+ " gr.");
		
		
		draw_sprite_ext(spr_ui_change_page2, 0, 227+textbox_x, 198+textbox_y, 1, 1, 0, c_white, 1);
		//Number of page
		draw_set_color(c_yellow);
		//draw_text(252+textbox_x,63+textbox_y,"2");
		draw_set_color(c_white);
		
	}if page == 4 {
		
		draw_sprite_ext(spr_ui, 0, 223+textbox_x, 4+textbox_y, 3.8, 9.32, 0, c_white, .94);
		draw_text(228.5+textbox_x,8+textbox_y, string(t_hour));
		draw_sprite_ext(spr_ui_open, 1, 268+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(225.5+textbox_x,22+textbox_y, "-- Hot Drinks --",.75,.75,0);
		draw_sprite_ext(spr_ui_espresso, 0, 224+textbox_x, 33+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x,37.5+textbox_y,string(global.espresso)+ " Espresso",.48,.48,0);
		draw_sprite_ext(spr_ui_intense_espresso, 0, 224+textbox_x, 46+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x,50.5+textbox_y,string(global.intense_espresso)+ " Intense Espresso",.48,.48,0);
		draw_sprite_ext(spr_ui_cup, 0, 224+textbox_x-dri3, 59+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x-dri3,63.5+textbox_y,string(global.americano)+ " Americano",.48,.48,0);
		
		draw_sprite_ext(spr_ui_intense_cup, 0, 224+textbox_x-dri4, 72+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x-dri4,76.5+textbox_y,string(global.intense_americano)+ " Intense Americano",.48,.48,0);
		draw_sprite_ext(spr_ui_cup, 0, 224+textbox_x-dri5, 85+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x-dri5,89.5+textbox_y,string(global.cappuccino)+ " Cappuccino",.48,.48,0);
		draw_sprite_ext(spr_ui_intense_cup, 0, 224+textbox_x, 98+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x,102.5+textbox_y,string(global.intense_cappuccino)+ " Intense Cappuccino",.48,.48,0);
		draw_sprite_ext(spr_ui_cup, 0, 224+textbox_x-dri7, 111+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x-dri7,115.5+textbox_y,string(global.latte)+ " Latte",.48,.48,0);
		draw_sprite_ext(spr_ui_intense_cup, 0, 224+textbox_x-dri8, 124+textbox_y, 1, 1, 0, c_white, 1);
		draw_text_transformed(237.5+textbox_x-dri8,128.5+textbox_y,string(global.intense_latte)+ " Intense Latte",.48,.48,0);
		
		draw_sprite_ext(spr_ui_change_page2, 0, 227+textbox_x, 140+textbox_y, 1, 1, 0, c_white, 1);
		//Number of page
		draw_set_color(c_yellow);
		//draw_text(252+textbox_x,63+textbox_y,"2");
		draw_set_color(c_white);
		
	}
	
	
	
	
}

if open == false{
	
	draw_sprite_ext(spr_ui, 0, 223+textbox_x, 4+textbox_y, 3.8, 1.08, 0, c_white, .8);
	draw_text(228.5+textbox_x,8+textbox_y, string(t_hour));
	draw_sprite_ext(spr_ui_open, 0, 268+textbox_x, 7+textbox_y, 1, 1, 0, c_white, 1);
	
	
}