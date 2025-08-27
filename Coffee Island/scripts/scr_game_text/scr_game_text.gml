randomize();
global.lenguaje = "ENG";
global.action = false;
global.notif = 0;
global.coffe_cherries = 0;
global.coffe_seeds = 0;
global.coffe_collect = 0;
global.coffe_decollect = 0;
global.toaster_type = 0;
//Characters stage
global.gambril = 0;
//Character stats
global.money = 0;
//Toasted seeds
global.coffe_seeds_light = 0;
global.coffe_seeds_medium = 0;
global.coffe_seeds_high = 0;
///Grinded coffee
global.grind_selection = 0;
global.grind_type = 0;
global.grinded_coffe_light_fine = 0;
global.grinded_coffe_light_medium = 0;
global.grinded_coffe_light_coarse = 0;
global.grinded_coffe_medium_fine = 0;
global.grinded_coffe_medium_medium = 0;
global.grinded_coffe_medium_coarse = 0;
global.grinded_coffe_high_fine = 0;
global.grinded_coffe_high_medium = 0;
global.grinded_coffe_high_coarse = 0;
///Drinks
global.espresso_selection = 0;
global.espresso = 0;
global.intense_espresso = 0;
global.americano = 0;
global.intense_americano = 0;
global.latte = 0;
global.intense_latte = 0;
global.cappuccino = 0;
global.intense_cappuccino = 0;



/// @param text_id
function scr_game_text(_text_id){
	
	
	if global.lenguaje == "ENG"{
	
		scr_game_text_eng(_text_id);
	
	}else if global.lenguaje == "ESP"{
	
		scr_game_text_esp(_text_id);
	
	}


}

function scr_game_text_eng(_text_id){

	
	switch (_text_id){
		
	///COLECTING ITEMS
	
		case "Coffee_Cherry":
			scr_text("+"+string(global.coffe_collect)+" gr. of coffee cherries", "cofee_che_4");
		break;
		case "Coffee_Seeds":
			scr_text("+"+string(global.coffe_collect)+" gr. of dry coffee seeds", "cofee_seed");
		break;
		
		///Grinded Coffee
		case "Grinded_Coffee_1":
			scr_text("+"+string(global.coffe_collect)+" gr. of light toasted, fine grinded coffee", "cofee_seed_grinded_1");
		break;
		case "Grinded_Coffee_2":
			scr_text("+"+string(global.coffe_collect)+" gr. of light toasted, medium grinded coffee", "cofee_seed_grinded_1");
		break;
		case "Grinded_Coffee_3":
			scr_text("+"+string(global.coffe_collect)+" gr. of light toasted, coarse grinded coffee", "cofee_seed_grinded_1");
		break;
		case "Grinded_Coffee_4":
			scr_text("+"+string(global.coffe_collect)+" gr. of medium toasted, fine grinded coffee", "cofee_seed_grinded_2");
		break;
		case "Grinded_Coffee_5":
			scr_text("+"+string(global.coffe_collect)+" gr. of medium toasted, medium grinded coffee", "cofee_seed_grinded_2");
		break;
		case "Grinded_Coffee_6":
			scr_text("+"+string(global.coffe_collect)+" gr. of medium toasted, coarse grinded coffee", "cofee_seed_grinded_2");
		break;
		case "Grinded_Coffee_7":
			scr_text("+"+string(global.coffe_collect)+" gr. of high toasted, fine grinded coffee", "cofee_seed_grinded_3");
		break;
		case "Grinded_Coffee_8":
			scr_text("+"+string(global.coffe_collect)+" gr. of high toasted, medium grinded coffee", "cofee_seed_grinded_3");
		break;
		case "Grinded_Coffee_9":
			scr_text("+"+string(global.coffe_collect)+" gr. of high toasted, coarse grinded coffee", "cofee_seed_grinded_3");
		break;
		
		///Toasted coffee
		case "Toasted_Seeds_1":
			scr_text("+"+string(global.coffe_collect)+" gr. of light toasted coffee", "cofee_seed_toasted_1");
		break;
		case "Toasted_Seeds_2":
			scr_text("+"+string(global.coffe_collect)+" gr. of medium toasted coffee", "cofee_seed_toasted_2");
		break;
		case "Toasted_Seeds_3":
			scr_text("+"+string(global.coffe_collect)+" gr. of high toasted coffee", "cofee_seed_toasted_3");
		break;
		case "Coffee_Cherry3":
			scr_text("+5 coffee cherries", "cofee_che_3");
		break;
		case "decollect_coffee_cherries":
			scr_text("-"+string(global.coffe_decollect)+" gr. of coffee cherries", "cofee_che_4");
		break;
		case "decollect_coffee_seeds":
			scr_text("-"+string(global.coffe_decollect)+" gr. of dry coffee coffee", "cofee_seed");
		break;
		case "decollect_coffee_seeds_light":
			scr_text("-"+string(global.coffe_decollect)+" gr. of light toasted coffee", "cofee_seed_toasted_1");
		break;
		case "decollect_coffee_seeds_medium":
			scr_text("-"+string(global.coffe_decollect)+" gr. of medium toasted coffee", "cofee_seed_toasted_2");
		break;
		case "decollect_coffee_seeds_high":
			scr_text("-"+string(global.coffe_decollect)+" gr. of high toasted coffee", "cofee_seed_toasted_3");
		break;
		case "decollect_non":
			scr_text("[The Drier is full now...]");
		break;
		case "decollect_non3":
			scr_text("[The Toaster is full now...]");
		break;
		case "decollect_non2":
			scr_text("[There's no more coffee cherries to dry]");
		break;
		case "decollect_non4":
			scr_text("[There's no more coffee seeds to toast]");
		break;
		case "decollect_non5":
			scr_text("[There's no more toasted coffee seeds to grind]");
		break;
		case "decollect_non6":
			scr_text("[There's no more fine grinded coffee seeds to prepare espresso, or espresso to transform]");
		break;
		
		
		//Drinks
		case "decollect_grinded_coffee_seeds_medium":
			scr_text("-"+string(global.coffe_decollect)+" gr. of medium toasted, fine grinded coffee", "cofee_seed_grinded_2");
		break;
		case "decollect_grinded_coffee_seeds_high":
			scr_text("-"+string(global.coffe_decollect)+" gr. of high toasted, fine grinded coffee", "cofee_seed_grinded_3");
		break;		
		case "collect_espresso":
			scr_text("+"+string(global.coffe_collect)+" Espresso", "espresso_1");
		break;
		case "collect_intense_espresso":
			scr_text("+"+string(global.coffe_collect)+" Intense espresso", "espresso_2");
		break;
		case "collect_americano":
			scr_text("+"+string(global.coffe_collect)+" Americano", "cup");
		break;
		case "collect_intense_americano":
			scr_text("+"+string(global.coffe_collect)+" Intense americano", "cup");
		break;
		case "collect_cappuccino":
			scr_text("+"+string(global.coffe_collect)+" Cappuccino", "cup");
		break;
		case "collect_intense_cappuccino":
			scr_text("+"+string(global.coffe_collect)+" Intense cappuccino", "cup");
		break;
		case "collect_latte":
			scr_text("+"+string(global.coffe_collect)+" Latte", "cup");
		break;
		case "collect_intense_latte":
			scr_text("+"+string(global.coffe_collect)+" Intense latte", "cup");
		break;
		case "decollect_espresso":
			scr_text("-"+string(global.coffe_collect)+" Espresso", "espresso_1");
		break;
		case "decollect_intense_espresso":
			scr_text("-"+string(global.coffe_collect)+" Intense espresso", "espresso_2");
		break;
		
	///MACHINES
	
		///Espresso
	
		case "espresso":
		   scr_text("Select the task");
		   
				if global.grinded_coffe_medium_fine > 8 || global.grinded_coffe_high_fine > 8{
					scr_option("Make Espresso","make-espresso");
				}
				if global.espresso>0 || global.intense_espresso >0{scr_option("Water based drinks (-1 Espresso)","water-based");};
				if global.espresso>0 || global.intense_espresso >0{scr_option("Milk based drinks (-1 Espresso)","milk-based");};
						
		break;
		case "make-espresso":
			scr_text("Select the kind of toasted grinded coffee to use:");

				if global.grinded_coffe_medium_fine > 8 {scr_option("Balanced espresso","balanced_espresso");};
				if global.grinded_coffe_high_fine > 8{scr_option("Intense espresso","intense_espresso");};
		break;
		case "balanced_espresso":
			scr_text(" ");
			global.espresso_selection = 1;
		break;
		case "intense_espresso":
			scr_text(" ");
			global.espresso_selection = 2;
		break;
		case "water-based":
			scr_text("Select the water-based drink to make:");

				if global.espresso>0{scr_option("Americano","americano");};
				if global.intense_espresso>0{scr_option("Intense Americano","americano_intense");};
				
		break;
		case "milk-based":
			scr_text("Select the milk-based drink to make:");

				if global.espresso>0{scr_option("Cappuccino","cappuccino");};
				if global.intense_espresso>0{scr_option("Intense cappuccino","cappuccino_intense");};
				if global.espresso>0{scr_option("Latte ","latte");};
				if global.intense_espresso>0{scr_option("Intense latte","latte_intense");};
				
		break;
		case "americano":
			scr_text(" ");
			global.espresso_selection = 3;
		break;
		case "americano_intense":
			scr_text(" ");
			global.espresso_selection = 4;
		break;
		case "cappuccino":
			scr_text(" ");
			global.espresso_selection = 5;
		break;
		case "cappuccino_intense":
			scr_text(" ");
			global.espresso_selection = 6;
		break;
		case "latte":
			scr_text(" ");
			global.espresso_selection = 7;
		break;
		case "latte_intense":
			scr_text(" ");
			global.espresso_selection = 8;
		break;
		
		
		
		
		
		///Grinder
	
		case "grinder":
		   scr_text("Select the type of toasted seed to grind");
		   
				if global.coffe_seeds_light>0{scr_option("Light","light-grind");};
				if global.coffe_seeds_medium>0{scr_option("Medium","medium-grind");};
				if global.coffe_seeds_high>0{scr_option("High","high-grind");};
						
		break;
		
		case "light-grind":
			scr_text("Select the level of grind:");

				scr_option("Fine","fine-grind");
				scr_option("Medium","medium-medium-grind");
				scr_option("Coarse","coarse-grind");
			global.grind_selection = 1;
		break;
		case "medium-grind":
			scr_text("Select the level of grind:");

				scr_option("Fine","fine-grind");
				scr_option("Medium","medium-medium-grind");
				scr_option("Coarse","coarse-grind");
			global.grind_selection = 2;
		break;
		case "high-grind":
			scr_text("Select the level of grind:");

				scr_option("Fine","fine-grind");
				scr_option("Medium","medium-medium-grind");
				scr_option("Coarse","coarse-grind");
			global.grind_selection = 3;
		break;
		
		case "fine-grind":
			scr_text(" ");
			global.grind_type = 1;
		break;
		case "medium-medium-grind":
			scr_text(" ");
			global.grind_type = 2;
		break;
		case "coarse-grind":
			scr_text(" ");
			global.grind_type = 3;
		break;
	
		case "toaster":
		   scr_text("Select the type of toast");

				scr_option("Light","light-toast");
				scr_option("Medium","medium-toast");
				scr_option("High","high-toast");
						
		break;
		
		case "light-toast":
			scr_text(" ");
			global.toaster_type = 1;
		break;
		case "medium-toast":
			scr_text(" ");
			global.toaster_type = 2;
		break;
		case "high-toast":
			scr_text(" ");
			global.toaster_type = 3;
		break;
		
		
		
	///FIRST SCENARIO
	
		case "liv-init":
		
			scr_text("Oh, you must be the new barista from Gambril's coffee shop, isn't it?", "liv", -1);
			scr_text("My name is Liv, nice tu meet you...", "liv", -1);
		
		break;
	
		case "gambril-init":
		
			if global.gambril == 0 {
				scr_text("Hello, boy", "gambril", -1);
				scr_text("I was wondering when you would arrive...", "gambril", -1);
				scr_text("My name is Gambril, by the way", "gambril", -1);
				scr_text("Here, your first 4 missions", "gambril", -1);
				scr_text("Press the key 'I' if you want to open the menu, there you can check the details of the missions...", "gambril", -1);
				global.mission[0] = true;
				global.mission[1] = true;
				global.mission[2] = true;
				global.mission[3] = true;
				global.gambril = 1;
			} else if global.gambril == 1{
				
				if global.mission_stage[0] == 6 && global.espresso > 0 && global.mission[0] == true{
					
					obj_mission_status.mission_0_delivered = true;
					scr_text("Hey! Thank you, pal!", "gambril", -1);
					scr_text("Take this $50 as reward for your work...", "gambril", -1);
					global.espresso --;
					
				}else if global.mission_stage[1] == 2 && global.intense_espresso > 0 && global.mission[1] == true{
					
					obj_mission_status.mission_1_delivered = true;
					scr_text("Hey! Thank you, pal! This is a fantastic intense espresso!", "gambril", -1);
					scr_text("Take this $50 as reward for your work...", "gambril", -1);
					global.intense_espresso --;
					
				}else if global.mission_stage[2] == 3 && global.cappuccino > 0 && global.mission[2] == true{
					
					obj_mission_status.mission_2_delivered = true;
					scr_text("Hey! Thank you, pal! This is a great cappuccino!", "gambril", -1);
					scr_text("Take this $20 as reward for your work...", "gambril", -1);
					global.cappuccino --;
					
				}
				else if global.mission_stage[3] == 3 && global.latte > 0 && global.mission[3] == true{
					
					obj_mission_status.mission_3_delivered = true;
					scr_text("Hey! Thank you, pal! This is a very nice latte!", "gambril", -1);
					scr_text("Take this $20 as reward for your work...", "gambril", -1);
					global.latte --;
					
				}
				else{
					scr_text("You can press the key 'I' if you want to open the menu, there you can check the details of the missions...", "gambril", -1);
				}
				
			}
		break;
		
		case "coffee":
			scr_text("[+3 coffee cherries]");
		break;
		
		case "coffee_2":
			scr_text("[Nothing to get here]");
		break;
		case "coffee_3":
			scr_text("[Not ready to be collected yet]");
		break;
		
	/// INVENTORY OBJECTS
	
		case "news papper":
			scr_text("I should deliver this to my Dad...", "calvin");
		break;
		case "bartcoffee":
			scr_text("Oh...", "calvin");
			scr_text("Oh shit... this taste like... like shit", "calvin");
			scr_text("[-25 HP recovery]");
		break;
		
		
	///ROOM - TUTORIAL
		case " ":
			
		break;
		
	
		case "tuto1":
			if global.tuto_1 == false
				{
					scr_text("You can move around with the arrows of the keyboard or the keys WASD");
					scr_text("If you want to go faster, you can press the SHIFT key while you move, so you can run");
					scr_text("Also you can interact with some objects and chat with other characters by pressing the spacebar next to them");
					global.tuto_1 = true;
				}
			else
			{
				instance_destroy();
			}
		break;
		
		case "closet":
			if global.spacialEquipment == false {
				scr_text("Oh! Here is my spacial gear!", "calvin");
				array_insert(global.inv,array_length(global.inv) , global.item_list.spacialEquipment);
				global.selection_index = array_length(global.inv)-1;
				scr_text("[Spacial Gear added to your inventory]");
				global.spacialEquipment = true;
			}
			else{
				scr_text("This is empty now...", "calvin");
			}
		break;
		
		
	///HOUSE-CHARACTERS

		case "npc1":
		if global.npc1_1 == false || global.npc1_2 == false || global.npc1_3 == false || global.newsPapper == 1
			{
			
			scr_text("Hey buddy", "npc1", -1);
			scr_text("Hope you are ready to your final exam!", "npc1", -1);
			scr_text("Do you have everything ready?", "npc1", -1);
				if global.npc1_1 == false
					{
					scr_option("Yes, all ready","npc1 - yes");
					}
				if global.npc1_2 == false
					{
					scr_option("Final exam?","npc1 - no");
					}
				if global.npc1_3 == false
					{
					scr_option("What happens with Mike?","npc1 - mike");
					}
				if global.newsPapper == 1
					{
					scr_option("[Deliver the newspapper to Dad]","npc1 - news");
					}
			}
		else
			{
				scr_text("Love you son...", "npc1-2", -1);
			}
		
		break;
			case "npc1 - yes":
				scr_text("Yes dad, I'm ready", "calvin");
				scr_text("Nice!" , "npc1", -1);
				scr_text("Hope the best for you, son!" , "npc1", -1);
				scr_text("We will miss you..." , "npc1-2", -1);
				global.npc1_1 = true;
				global.npc1_2 = true;
			break;
			case "npc1 - news":
				scr_text("Take this, dad. Mr. Smith said you threw this away by accident when you left the news stand.", "calvin");
				scr_text("Oh! I didn't noticed, how careless I am, haha" , "npc1", -1);
				scr_text("Thank you, son!" , "npc1", -1);
				scr_text("Here you have, 5 bucks for you to spend... for the trouble of bringing this to me." , "npc1-2", -1);
				scr_text("Thank you dad!", "calvin");
				for (var i = 0; i < array_length(global.inv); i++){
	
					if global.inv[i].name == "Newspapper" {
				   
							   array_delete(global.inv, i, 1);
				   
						   }
				}	
				
				obj_player.monei += 5;
				obj_player.money = "$"+string(obj_player.monei);
				global.newsPapper = 0;
				global.nick_2 = true;
				global.nick_1 = true;
				global.bart_1 = true;
				scr_text("[$5 received]");
			break;
			case "npc1 - no":
				scr_text("No, dad... I'm not ready yet" , "calvin");
				scr_text("But... it is today, isn't it?" , "npc1", -1);
				scr_text("Yes, yes, it is today! So ready or not, you must be there as soon as possible!" , "npc1", -1);
				scr_text("I will miss you very much, son..." , "npc1-2", -1);
				scr_text("Ed is already waiting for you outside" , "npc1", -1);
				global.npc1_2 = true;
			break;
			case "npc1 - mike":
			    scr_text("What happens with Mike? his room is locked..." , "calvin");
				scr_text("Your brother?" , "npc1", -1);
				scr_text("He still mad at you because you are leaving..." , "npc1", -1);
				scr_text("But he will not stop studing for his exam in two years, he is very focus on going after you, son" , "npc1-2", -1);
				scr_text("What a fortune to be the youngest!" , "npc1", -1);
				global.npc1_3 = true;
			break;

	}
	
}

function scr_game_text_esp(_text_id){
	
	switch (_text_id){
		
		case "":
		break;
		

	}
	
}