
//Mission 0

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


//Mission 1
if global.mission[1] == true {
	
	if mission_1 == false{
		
		mission_1 = true;
		mission_1_intense_espresso = global.intense_espresso;
		
	}
	if mission_1 == true{
		
		if global.mission_stage[1] == 1{
			
			if global.intense_espresso> mission_1_intense_espresso {
				
				global.mission_stage[1] = 2;
				
			}
			
		}else if global.mission_stage[1] == 2{
			
			if mission_1_delivered == true {
				
				global.mission[1] = false;
				global.mission_visible[1] = false;
				global.money = global.money + 50;
				
			}
			
		}
		
	}
	
}

//Mission 2
if global.mission[2] == true {
	
	if mission_2 == false{
		
		mission_2 = true;
		mission_2_espresso = global.espresso;
		
	}
	if mission_2 == true{
		
		if global.mission_stage[2] == 1{
			
			if global.espresso> mission_2_espresso {
				
				global.mission_stage[2] = 2;
				mission_2_cappuccino = global.cappuccino;
				
			}
			
		}else if global.mission_stage[2] == 2{
			
			if global.cappuccino > mission_2_cappuccino{
				
				global.mission_stage[2] = 3;
				
			}
			
		}else if global.mission_stage[2] == 3{
			
			if mission_2_delivered == true {
				
				global.mission[2] = false;
				global.mission_visible[2] = false;
				global.money = global.money + 20;
				
			}
			
		}
		
	}
	
}

//Mission 3
if global.mission[3] == true {
	
	if mission_3 == false{
		
		mission_3 = true;
		mission_3_espresso = global.espresso;
		
	}
	if mission_3 == true{
		
		if global.mission_stage[3] == 1{
			
			if global.espresso> mission_3_espresso {
				
				global.mission_stage[3] = 2;
				mission_3_latte = global.latte;
				
			}
			
		}else if global.mission_stage[3] == 2{
			
			if global.latte > mission_3_latte{
				
				global.mission_stage[3] = 3;
				
			}
			
		}else if global.mission_stage[3] == 3{
			
			if mission_3_delivered == true {
				
				global.mission[3] = false;
				global.mission_visible[3] = false;
				global.money = global.money + 20;
				
			}
			
		}
		
	}
	
}