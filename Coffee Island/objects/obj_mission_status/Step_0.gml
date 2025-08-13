


if global.mission[0] == true {
	//show_debug_message("Mission status: "+string(mission_0));
	//show_debug_message("Cherries to get: "+string(mission_0_cherries));
	
	if mission_0 == false{
		
		mission_0 = true;
		mission_0_cherries = global.coffe_cherries;
		
	}
	if mission_0 == true{
		
		if global.mission_stage[0] == 1{
			
			if global.coffe_cherries > mission_0_cherries {
				
				mission_0_dried_cherries = global.coffe_seeds;
				global.mission_stage[0] = 2;
				
			}
			
		}else if global.mission_stage[0] == 2{
			
			if global.coffe_seeds > mission_0_dried_cherries {
				
				mission_0_toasted_seeds = global.coffe_seeds_medium;
				global.mission_stage[0] = 3;
				
			}
			
		}
		else if global.mission_stage[0] == 3{
			
			if global.coffe_seeds_medium > mission_0_toasted_seeds {
				
				mission_0_grinded_seeds = global.grinded_coffe_medium_fine;
				global.mission_stage[0] = 4;
				
			}
			
		}else if global.mission_stage[0] == 4{
			
			if global.grinded_coffe_medium_fine > mission_0_grinded_seeds {
				
				mission_0_espresso = global.espresso;
				global.mission_stage[0] = 5;
				
			}
			
		}else if global.mission_stage[0] == 5{
			
			if global.espresso > mission_0_espresso {
				
				global.mission_stage[0] = 6;
				
			}
			
		}else if global.mission_stage[0] == 6{
			
			if mission_0_delivered == true {
				
				global.mission[0] = false;
				global.mission_visible[0] = false;
				global.money = global.money + 50;
				
			}
			
		}
		
	}
	
}