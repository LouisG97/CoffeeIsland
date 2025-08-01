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

	if MenuKeyPressed{
	
		activated = false;
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