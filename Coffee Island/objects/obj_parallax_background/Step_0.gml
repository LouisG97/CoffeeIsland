if obj_daytime.time == "Day" {

	spri = bg_init;
	var layer_id = layer_get_id("Tiles_1");
	var tilemap_id = layer_tilemap_get_id(layer_id);
	tilemap_tileset(tilemap_id,tl_area1);
	
}
if obj_daytime.time == "Afternoon" {
	
	spri = bg_init_t;
	var layer_id = layer_get_id("Tiles_1");
	var tilemap_id = layer_tilemap_get_id(layer_id);
	//var spr_id = layer_sprite_get_id(layer_id,tl_area1);
	//alpha_day = alpha_day - .001
	//if alpha_day < 0 {alpha_day = 0;};
	//fx_set_parameter(layer_get_fx(layer_id),"Alpha Start", 1);
	//fx_set_parameter(layer_get_fx(layer_id),"Alpha End", 0);
	//layer_sprite_alpha(spr_id,0);
	//show_debug_message(string(tl_area1.image_alpha));
	//tilemap_id.image_alpha = alpha_day;
	//tilemap_id.draw_set_alpha(alpha_day);
	
	tilemap_tileset(tilemap_id,tl_area1_t);
	//if alpha_day == 1 {
		
    //	Controller_Afternoon.transition_active = true;
	//	alpha_day = 2;
		
	//}
}
if obj_daytime.time == "Night" {
	
	spri = bg_init_n;
	var layer_id = layer_get_id("Tiles_1");
	var tilemap_id = layer_tilemap_get_id(layer_id);
	tilemap_tileset(tilemap_id,tl_area1_n);

}