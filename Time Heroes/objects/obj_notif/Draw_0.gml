accept_key = keyboard_check_pressed(vk_space);
draw_set_alpha(alpha_value); 
//show_debug_message(string(alpha_value));
textbox_x = camera_get_view_x(view_camera[0]);



if cantidad == 1{

	noti = 0;

}else if cantidad == 2{
		
	noti = cantidad * 14;
	
}else if cantidad == 3{
	
	noti = cantidad * 28;
	
}

if global.notif < cantidad{
	
	cantidad --;
	change = true;
	
}

if(obj_options.open == true){
	
	men = 64;
	
}else{men = 0;};

textbox_y = camera_get_view_y(view_camera[0])+23+noti+men;


//setup

if setup == false
{
	setup =true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop trough the pages
	for(var p =0;p<page_number;p++)
	{
		//find how many characters are on each page and store that number in the "text_length" array
		text_lenght[p] = string_length(text[p]);
		
		//get the x position for the textbox
		
			//character on the left
			text_x_offset[p] = 32;
			text_y_offset[p] = 0;
			portrait_x_offset[p] = 4;
			//character on the right
			if speaker_side[p] == -1 {
				
				text_y_offset[p] = 0;
				text_x_offset[p] = 8;
				portrait_x_offset[p] = 216;
				
			}	
			//no character (center the textbox)
			if speaker_sprite[p] == noone {
				
				text_x_offset[p] = 44;
				text_y_offset[p] = 8;
				
			}
			
			
		//setting individual characters and finding where the lines of text should break
		
		for (var c = 0; c < text_lenght[p]; c++){
			
			var _char_pos = c+1;
			
			//store individual characters in the "char" array
			char [c,p] = string_char_at(text[p], _char_pos);
			
			//get current width of the line
			var _text_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_text_w = string_width(_text_up_to_char) - string_width(char[c,p]);
			
			//get the last free space 
			if char[c,p] == " " {last_free_space = _char_pos+1};
			
			//get the line breaks
			if _current_text_w - line_break_offset[p] > line_width{
				line_break_pos[line_break_num[p],p] = last_free_space;
				line_break_num[p]++;
				var _text_up_to_last_space = string_copy( text[p] , 1, last_free_space );
				var _last_free_space_string = string_char_at(text[p], last_free_space);
				line_break_offset[p] = string_width(_text_up_to_last_space)-string_width(_last_free_space_string);
			}
		}
		
		//getting each character coordinates
		for (var c = 0; c < text_lenght[p]; c++){
			
			var _char_pos = c+1;
			var _txt_x = textbox_x+text_x_offset[p] + border;
			var _txt_y = textbox_y +text_y_offset[p] + border;
			//get current width of the line
			var _text_up_to_char = string_copy(text[p],1, _char_pos);
			var _current_text_w = string_width(_text_up_to_char) - string_width(char[c,p]);
			var _text_line = 0;
			
			//compensate for string breaks
			for ( var lb = 0; lb < line_break_num[p]; lb++){
				//if the current looping character is after a line break
				if _char_pos >= line_break_pos[lb,p]{
					
					var _str_copy = string_copy ( text[p], line_break_pos[lb,p], _char_pos-line_break_pos[lb,p]);
					_current_text_w = string_width(_str_copy);
					
					//record the "line" this character should be on
					_text_line = lb+1; //+1 since lb starts at 0
					
				}
				
				
			}
			
			//Add to the x and y coordinates base on the new info
			
			char_x[c,p] = _txt_x + _current_text_w;
			char_y[c,p] = _txt_y + _text_line*line_sep - men;
			
		}
		
		
		
	}
	
}

//typing the text
if text_pause_timer <=0 {
	
	if draw_char < text_lenght[page]
	{
		draw_char += text_speed;
		draw_char = clamp(draw_char,0, text_lenght[page]);
		var _check_char = string_char_at( text[page], draw_char);
		if _check_char == "." || _check_char == "!" || _check_char == "," || _check_char == "?"{
		
			text_pause_timer = text_pause_time;
		
		}	
	}
	
} else{
	
	text_pause_timer--;
	
}	





//draw the textbox
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img += txtb_img_spd;
var txtb_spr_w = sprite_get_width(txtb_spr[page]);
var txtb_spr_h = sprite_get_height(txtb_spr[page]);


//draw the speaker
if speaker_sprite[page] != noone {
	
	sprite_index = speaker_sprite[page];
	if draw_char == text_lenght[page] {image_index = 0 };
	var _speaker_x = textbox_x + portrait_x_offset[page];
	if speaker_side[page] == -1 {_speaker_x += sprite_width};
	//Draw the speaker
	//Draw the speaker
	draw_sprite_ext(txtb_spr[page], txtb_img, textbox_x + portrait_x_offset[page], textbox_y, sprite_width/txtb_spr_w, sprite_height/txtb_spr_h, 0, c_white, alpha_value);
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, alpha_value);
	
}


//draw back of the textbox
if draw_char > 28 && draw_char < 54 {skip_space = .75;}
else if draw_char >=54 {skip_space = 1.5;}
else{skip_space = 0;};

draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, skip_space+(textbox_height/txtb_spr_h), 0, c_white, alpha_value);
show_debug_message("PAGE:        "+string(oPlayer.x));

//options
if draw_char == text_lenght[page] && page == page_number - 1
	{
		
		//option selection
		option_pos += (keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))) - (keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W")));
		option_pos = clamp(option_pos, 0, option_number-1);
		
		//draw the options
		var _op_space = 15;
		var _op_bord = 4;
		for (var op = 0; op < option_number; op++)
		{
			//the option box
			var _o_w = string_width(option[op]) + _op_bord*2;
			draw_sprite_ext(txtb_spr[page], txtb_img,_txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w,(_op_space-1)/txtb_spr_h, 0, c_white, 1);
			
			//the arrow
			if option_pos == op
			{
				draw_sprite(spr_textbox_arrow, 0, _txtb_x,  _txtb_y - _op_space*option_number + _op_space*op);
			}
			
			
			//the option text
			draw_text(_txtb_x + 16 + _op_bord,_txtb_y - _op_space*option_number + _op_space*op + 2, option[op]);
			
		}
	}


if oPlayer.x > 816 {space_x = oPlayer.x - 816;}
else if oPlayer.x < 144 {space_x = oPlayer.x - 144;}
else{space_x = 0;};
//draw the text
for (var c=0; c < draw_char; c++){
	
	var res = oPlayer.x - ex;
	
	//the text
	if change == false {
		
		draw_text(char_x[c,page]- space_x + res,char_y[c,page]+men, char[c,page]);
	
	}else{
		
		if cantidad == 1{
			
			draw_text(char_x[c,page]- space_x + res,char_y[c,page]-28+men, char[c,page]);
			
			
		}else if cantidad == 2{
			
			draw_text(char_x[c,page]- space_x + res,char_y[c,page]-52+men, char[c,page]);
			
		}
		
		
		
		
	}
	
}


//Timer
draw_set_alpha(1); 
if (--countdown <= 0){
		
	instance_destroy();
	global.notif --;
		
}