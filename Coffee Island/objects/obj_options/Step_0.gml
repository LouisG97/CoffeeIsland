getControls()

if global.money <10 { espa = 0;}
else if global.money >= 10 && global.money < 100{ espa = .2; }
else if global.money >= 100 {espa = .425;}

if activated == true{

	if MenuKeyPressed{
	
		if open == false{open = true; obj_daytime.open = false;}
		else if open == true{open = false;};
	
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
		
			if selected_y == 0 {
			
				visible = false;
				obj_daytime.visible = false;
				activated = false;
				obj_big_menu.activated = true;
				obj_big_menu.selection = 0;
			
			}
			else if selected_y == 14 {
		
				visible = false;
				obj_daytime.visible = false;
				activated = false;
				obj_big_menu.activated = true;
				obj_big_menu.selection = 1;
		
			}
			else if selected_y == 28 {
			
				visible = false;
				obj_daytime.visible = false;
				activated = false;
				obj_big_menu.activated = true;
				obj_big_menu.selection = 2;
			
			};
		
		}
	
	}
	
	
	
	
}else{};
//show_debug_message(string(oPlayer.impediment));