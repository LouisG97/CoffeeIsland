

if (transition_active) {
	//surface_set_target(sur);
	//draw_clear_alpha(c_black, 0);
	draw_set_alpha(alpha_overlay);
	var layer_id = layer_get_id("Tiles_1_1");
	var tilemap_id = layer_tilemap_get_id(layer_id);
    dr = draw_tilemap(tilemap_id,0,0);
    
	
	//draw_surface(sur,10,10);
	//surface_reset_target();
	layer_tilemap_destroy(dr);
    draw_set_alpha(1);
}