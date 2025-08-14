getControls()


if activated = false{
	
	visible = false;
	
}else{
	
	visible = true;
	
	if acceptKeyReleased || acceptKeyReleased2{
		
		
	}
	
	if InvKeyA {
		
		if selection == 1 {selection = 0;}
		else if selection == 2 {selection = 1};
		
	}
	
	if InvKeyD {
		
		if selection == 0 {selection = 1;}
		else if selection == 1 {selection = 2};
		
	}
	
	//Moviendo en el menu de misiones
	
	
	
	if selection == 1{
		
		no_level = true;
		
		for (a = 0; a<array_length(global.mission); a++){
			
			if global.mission[a] == true {no_level = false};
			//show_debug_message("A: "+string(a)+" is: "+string(no_level));
		
		}
		
		if no_level == true {level = 0;};
		
		if no_level == false {
			
			if level == 0 { level = 1;}
			
			

			//Initializate mission list
			start = 0
			
			if init == 0 {init = 1;}
			
			if init == 1 {
				
			
				for (a = 0; a<array_length(global.mission); a++){
						
					if global.mission[a] == true { 
					
						if start < 3 {
							
							global.mission_visible[a] = true;
							start ++;
						}else{global.mission_visible[a] = false;}
					}
				}
				//check actual mission
				missions_active = [];
				for (a = 0; a<array_length(global.mission); a++) {
				    if global.mission[a] == true {array_push(missions_active, a);}
				}
				init = 2;
			}
			
			//Down key
		
			if downKey { 
				
				z = 0;
				last = 0;
				act = 0;
				num_act = 0;
				
				for (a = 0; a<array_length(global.mission); a++){
						
					if global.mission[a] == true { num_act ++;};
						
				}
			
				
			
				if move == 0 {
					
					move = 1;
					if num_act > 1 {level = level + 1;move = 1;}
					
					
				}
				else if move == 1 {
					
					
					if num_act > 2 {level = level + 1;move = 2;}
					
				}
				else if move == 2 {
					
					for (a = 0; a<array_length(global.mission); a++){
						
						if global.mission[a] == true { act = a;};
						
					}
					
					for (a = 0; a<array_length(global.mission); a++){
						
						if global.mission_visible[a] == true { last = a;};
						
					}
				
					for (a = array_length(global.mission)-1; a>=0; a--){
			
						if global.mission_visible[a] == true {z = a;};
		
					}
					
					if act > last {
					
						global.mission_visible[z] = false;
						z=0;
						for (a = 0; a<array_length(global.mission); a++){
			
							if a > last {
								
								if global.mission[a] == true {
									
									global.mission_visible[a] = true;
									level = level + 1;
									a = array_length(global.mission) + 1;
									
								}
							
							}
							
						}					
					}
				}
			
			}
			if upKey {
				
				z = 0;
				last = 0;
				act = 0;
			
				if level != 1 {level = level - 1;};
			
				if move == 2 {move = 1;}
				else if move == 1 {move = 0}
				else if move == 0 {
			
					for (a = array_length(global.mission)-1; a>=0; a--){
						
						if global.mission[a] == true { act = a;};
						
					}
					
					for (a = 0; a<array_length(global.mission); a++){
						
						if global.mission_visible[a] == true { z = a;};
						
					}
				
					for (a = array_length(global.mission)-1; a>=0; a--){
			
						if global.mission_visible[a] == true {last = a;};
		
					}
										
					if act < last {
											
						global.mission_visible[z] = false;
						z=0;
						for (a = array_length(global.mission)-1; a>=0; a--){
										
							if a < last {
								
								if global.mission[a] == true {
									
									global.mission_visible[a] = true;
									a = 0-1;
									
								}
							}
						}					
					}
				}
			}
		
		textbox_x = camera_get_view_x(view_camera[0]);
		textbox_y = camera_get_view_y(view_camera[0]);
		//var int = int64(missions_active[level-1]);
		mission_index = int64(missions_active[level-1]);
		//show_debug_message("Mission Index: "+string(mission_index));
		
		
		
		}
	}

	if MenuKeyPressed{
	
		
		init = 0;
		activated = false;
		level = 0;
		move = 0;
		obj_daytime.visible = true;
		obj_options.visible = true;
		obj_options.activated = true;
		obj_options.open = false;
		
	
	}

	if InvKeyS || downKey {
	
		if open == true{
	
			selected_y = selected_y + 14;
			if selected_y > 28 { selected_y = 28;};
		}
	
	}

	if InvKeyW|| upKey {
	
		if open == true{
	
			selected_y = selected_y - 14;
			if selected_y < 0 { selected_y = 0;};
		
		}	
	
	
	}


	if open = true {
	
		if acceptKeyReleased || acceptKeyReleased2{
		
			if selected_y == 0 {}
			else if selected_y == 14 {}
			else if selected_y == 28 {};
		
		}
	
	}
	
}

//show_debug_message(string(oPlayer.impediment));