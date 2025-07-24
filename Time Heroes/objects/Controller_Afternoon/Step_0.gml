if (transition_active) {
    alpha_overlay += transition_speed;
    if (alpha_overlay >= 1) {
        alpha_overlay = 1;
        transition_active = false;
        
        // Aplicar el nuevo tileset al tilemap base
        var base_layer = layer_get_id("Tiles_1");
        var base_map = layer_tilemap_get_id(base_layer);
        tilemap_tileset(base_map,tl_area1_t);
		 if (surface_exists(sur)) {
            surface_free(sur);
		}
        
    }
}