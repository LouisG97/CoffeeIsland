var _s = id;
var _d = instance_exists(obj_textbox);


if global.inventario_visible == false {
	if (place_meeting(x, y+1, obj_player)==true || place_meeting(x, y-1, obj_player)==true) &&  touched == true && _d == false
		{
			create_textbox(_s.text_id);
		
			instance_destroy();
		}
	else if (place_meeting(x + 1, y, obj_player)==true || place_meeting(x-1, y, obj_player)==true) &&  touched == true && _d == false
		{
			create_textbox(_s.text_id);
			instance_destroy();
		}
	else if place_meeting(x, y+1, obj_player)==true && touched == false && obj_player.face == UP &&  keyboard_check_pressed(vk_space)==true && _d == false
		{
			create_textbox(_s.text_id);
		}
	else if place_meeting(x, y-1, obj_player)==true && touched == false && obj_player.face == DOWN && keyboard_check_pressed(vk_space)==true && _d == false
		{
			create_textbox(_s.text_id);
		}
	else if place_meeting(x + 1, y, obj_player)==true && touched == false && obj_player.face == LEFT && keyboard_check_pressed(vk_space)==true && _d == false
		{
			create_textbox(_s.text_id);
		}
	else if place_meeting(x - 1, y, obj_player)==true && touched == false && obj_player.face == RIGHT && keyboard_check_pressed(vk_space)==true && _d == false
		{
			create_textbox(_s.text_id);
		}
}