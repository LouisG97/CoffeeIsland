function scr_set_defaults_for_text(){
	
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset [page_number] = 0;
	
	txtb_spr[page_number] = spr_textbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;

}

/// @param _text
/// @param [character]
/// @param [side]

function scr_text(_text){
	
	scr_set_defaults_for_text();
	
	text[page_number] = _text;
	
	//get character info
	if argument_count > 1 {
		
		switch(argument[1]){
			
			case "npc1":
				speaker_sprite	[page_number] = spr_portrait_Michael_speaking;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "npc1-2":
				speaker_sprite	[page_number] = spr_portrait_Michael_melancolic;
				txtb_spr [page_number] = spr_textbox;
			case "gael":
				speaker_sprite	[page_number] = spr_portrait_Gael;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "gambril":
				speaker_sprite	[page_number] = spr_portrait_Gambril;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "liv":
				speaker_sprite	[page_number] = spr_portrait_Liv;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_che_4":
				speaker_sprite	[page_number] = spr_collect_coffee_che_4;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_che_3":
				speaker_sprite	[page_number] = spr_collect_coffee_che_3;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_seed":
				speaker_sprite	[page_number] = spr_collect_coffee_seed;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_seed_toasted_1":
				speaker_sprite	[page_number] = spr_collect_coffee_seed_light;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_seed_toasted_2":
				speaker_sprite	[page_number] = spr_collect_coffee_seed_medium;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_seed_toasted_3":
				speaker_sprite	[page_number] = spr_collect_coffee_seed_high;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_seed_grinded_1":
				speaker_sprite	[page_number] = spr_collect_coffee_grinded_light;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_seed_grinded_2":
				speaker_sprite	[page_number] = spr_collect_coffee_grinded_medium;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cofee_seed_grinded_3":
				speaker_sprite	[page_number] = spr_collect_coffee_grinded_high;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "espresso_1":
				speaker_sprite	[page_number] = spr_collect_espresso;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "espresso_2":
				speaker_sprite	[page_number] = spr_collect_intense_espresso;
				txtb_spr [page_number] = spr_textbox;
			break;
			case "cup":
				speaker_sprite	[page_number] = spr_collect_cappuccino;
				txtb_spr [page_number] = spr_textbox;
			break;
			
		}	
		
	}
	
	if argument_count > 2 {
		
		speaker_side[page_number] = argument[2];
		
	}	
	
	
	
	
	page_number++;

}

/// @param _option
/// @param _link_id
function scr_option(_option, _link_id){
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

/// @param _text_id
function create_textbox(_text_id){
	
	with (instance_create_depth(0,0,-9999,obj_textbox))
	{
		scr_game_text(_text_id);
	}
	
}

/// @param _text_id Notif
function create_notif(_text_id){
	
	with (instance_create_depth(0,0,-9999,obj_notif))
	{
		scr_game_text(_text_id);
	}
	
}