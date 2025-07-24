getControls()

if global.coffe_cherries < 10{espa = 0;}
if global.coffe_cherries > 9{espa = 5.5;}
if global.coffe_cherries > 99{espa = 10;}
if global.coffe_cherries > 999{espa = 14;};
if global.coffe_seeds < 10{espa2 = 0;}
if global.coffe_seeds > 9{espa2 = 5.5;}
if global.coffe_seeds > 99{espa2 = 10;}
if global.coffe_seeds > 999{espa2 = 14;};
///Toasted seeds
if global.coffe_seeds_light < 10{espa3 = 0;}
if global.coffe_seeds_light > 9{espa3 = 5.5;}
if global.coffe_seeds_light > 99{espa3 = 10;}
if global.coffe_seeds_light > 999{espa3 = 14;};
if global.coffe_seeds_medium < 10{espa4 = 0;}
if global.coffe_seeds_medium > 9{espa4 = 5.5;}
if global.coffe_seeds_medium > 99{espa4 = 10;}
if global.coffe_seeds_medium > 999{espa4 = 14;};
if global.coffe_seeds_high < 10{espa5 = 0;}
if global.coffe_seeds_high > 9{espa5 = 5.5;}
if global.coffe_seeds_high > 99{espa5 = 10;}
if global.coffe_seeds_high > 999{espa5 = 14;};
///Grinded seeds
if global.grinded_coffe_light_fine < 10{esp1 = 0;}
if global.grinded_coffe_light_fine > 9{esp1 = 5.5;}
if global.grinded_coffe_light_fine > 99{esp1 = 10;}
if global.grinded_coffe_light_fine > 999{esp1 = 14;};
if global.grinded_coffe_light_medium < 10{esp2 = 0;}
if global.grinded_coffe_light_medium > 9{esp2 = 5.5;}
if global.grinded_coffe_light_medium > 99{esp2 = 10;}
if global.grinded_coffe_light_medium > 999{esp2 = 14;};
if global.grinded_coffe_light_coarse < 10{esp3 = 0;}
if global.grinded_coffe_light_coarse > 9{esp3 = 5.5;}
if global.grinded_coffe_light_coarse > 99{esp3 = 10;}
if global.grinded_coffe_light_coarse > 999{esp3 = 14;};

if global.grinded_coffe_medium_fine < 10{esp4 = 0;}
if global.grinded_coffe_medium_fine > 9{esp4 = 5.5;}
if global.grinded_coffe_medium_fine > 99{esp4 = 10;}
if global.grinded_coffe_medium_fine > 999{esp4 = 14;};
if global.grinded_coffe_medium_medium < 10{esp5 = 0;}
if global.grinded_coffe_medium_medium > 9{esp5 = 5.5;}
if global.grinded_coffe_medium_medium > 99{esp5 = 10;}
if global.grinded_coffe_medium_medium > 999{esp5 = 14;};
if global.grinded_coffe_medium_coarse < 10{esp6 = 0;}
if global.grinded_coffe_medium_coarse > 9{esp6 = 5.5;}
if global.grinded_coffe_medium_coarse > 99{esp6 = 10;}
if global.grinded_coffe_medium_coarse > 999{esp6 = 14;};

if global.grinded_coffe_high_fine < 10{esp7 = 0;}
if global.grinded_coffe_high_fine > 9{esp7 = 5.5;}
if global.grinded_coffe_high_fine > 99{esp7 = 10;}
if global.grinded_coffe_high_fine > 999{esp7 = 14;};
if global.grinded_coffe_high_medium < 10{esp8 = 0;}
if global.grinded_coffe_high_medium > 9{esp8 = 5.5;}
if global.grinded_coffe_high_medium > 99{esp8 = 10;}
if global.grinded_coffe_high_medium > 999{esp8 = 14;};
if global.grinded_coffe_high_coarse < 10{esp9 = 0;}
if global.grinded_coffe_high_coarse > 9{esp9 = 5.5;}
if global.grinded_coffe_high_coarse > 99{esp9 = 10;}
if global.grinded_coffe_high_coarse > 999{esp9 = 14;};

//Drinks

if global.espresso < 10{dri1 = 0;}
if global.espresso > 9{dri1 = 5.5;}
if global.espresso > 99{dri1 = 10;}
if global.espresso > 999{dri1 = 14;};
if global.intense_espresso < 10{dri2 = 0;}
if global.intense_espresso > 9{dri2 = 5.5;}
if global.intense_espresso > 99{dri2 = 10;}
if global.intense_espresso > 999{dri2 = 14;};
if global.americano < 10{dri3 = 0;}
if global.americano > 9{dri3 = 5.5;}
if global.americano > 99{dri3 = 10;}
if global.americano > 999{dri3 = 14;};
if global.intense_americano < 10{dri4 = 0;}
if global.intense_americano > 9{dri4 = 5.5;}
if global.intense_americano > 99{dri5 = 10;}
if global.intense_americano > 999{dri4 = 14;};
if global.cappuccino < 10{dri5 = 0;}
if global.cappuccino > 9{dri5 = 5.5;}
if global.cappuccino > 99{dri5 = 10;}
if global.cappuccino > 999{dri5 = 14;};
if global.intense_cappuccino < 10{dri6 = 0;}
if global.intense_cappuccino > 9{dri6 = 5.5;}
if global.intense_cappuccino > 99{dri6 = 10;}
if global.intense_cappuccino > 999{dri6 = 14;};
if global.latte < 10{dri7 = 0;}
if global.latte > 9{dri7 = 5.5;}
if global.latte > 99{dri7 = 10;}
if global.latte > 999{dri7 = 14;};
if global.intense_latte < 10{dri8 = 0;}
if global.intense_latte > 9{dri8 = 5.5;}
if global.intense_latte > 99{dri8 = 10;}
if global.intense_latte > 999{dri8 = 14;};

if test == false{
	t_mill -= 1;

	if t_mill = -1{
	
		t_mill = 60;
		t_sec -= 1;
	
	}

	if t_sec = -1{
	
		t_sec = 59;
		t_min -= 1;
	
	}

	if t_min = -1{
	
		t_min = 12;

	}

	if t_min == 9 && t_sec == 0{
	
		time = "Day";
	
	}

	if t_min == 4 && t_sec == 0{
	
		time = "Afternoon";
	
	}

	if t_min == 1 && t_sec == 0{
	
		time = "Night";
	
	}

	if t_min == 0 && t_sec == 0 {t_hour = "00:00 AM";};
	if t_min == 11 && t_sec == 45 {t_hour = "00:30 AM";};
	if t_min == 11 && t_sec == 30 {t_hour = "01:00 AM";};
	if t_min == 11 && t_sec == 15 {t_hour = "01:30 AM";};
	if t_min == 11 && t_sec == 0 {t_hour = "02:00 AM";};
	if t_min == 10 && t_sec == 45 {t_hour = "02:30 AM";};
	if t_min == 10 && t_sec == 30 {t_hour = "03:00 AM";};
	if t_min == 10 && t_sec == 15 {t_hour = "03:30 AM";};
	if t_min == 10 && t_sec == 0 {t_hour = "04:00 AM";};
	if t_min == 9 && t_sec == 45 {t_hour = "04:30 AM";};
	if t_min == 9 && t_sec == 30 {t_hour = "05:00 AM";};
	if t_min == 9 && t_sec == 15 {t_hour = "05:30 AM";};
	
	if t_min == 9 && t_sec == 1 {instance_create_depth(0,0,999,obj_fade_out);};
	
	if t_min == 9 && t_sec == 0 {t_hour = "06:00 AM";};
	if t_min == 8 && t_sec == 45 {t_hour = "06:30 AM";};
	if t_min == 8 && t_sec == 30 {t_hour = "07:00 AM";};
	if t_min == 8 && t_sec == 15 {t_hour = "07:30 AM";};
	if t_min == 8 && t_sec == 0 {t_hour = "08:00 AM";};
	if t_min == 7 && t_sec == 45 {t_hour = "08:30 AM";};
	if t_min == 7 && t_sec == 30 {t_hour = "09:00 AM";};
	if t_min == 7 && t_sec == 15 {t_hour = "09:30 AM";};
	if t_min == 7 && t_sec == 0 {t_hour = "10:00 AM";};
	if t_min == 6 && t_sec == 45 {t_hour = "10:30 AM";};
	if t_min == 6 && t_sec == 30 {t_hour = "11:00 AM";};
	if t_min == 6 && t_sec == 15 {t_hour = "11:30 AM";};
	if t_min == 6 && t_sec == 0 {t_hour = "12:00 PM";};
	if t_min == 5 && t_sec == 45 {t_hour = "12:30 PM";};
	if t_min == 5 && t_sec == 30 {t_hour = "13:00 PM";};
	if t_min == 5 && t_sec == 15 {t_hour = "13:30 PM";};
	if t_min == 5 && t_sec == 0 {t_hour = "14:00 PM";};
	if t_min == 4 && t_sec == 45 {t_hour = "14:30 PM";};
	if t_min == 4 && t_sec == 30 {t_hour = "15:00 PM";};
	if t_min == 4 && t_sec == 15 {t_hour = "15:30 PM";};
	
	if t_min == 4 && t_sec == 1 {instance_create_depth(0,0,999,obj_fade_out);};
	
	if t_min == 4 && t_sec == 0 {t_hour = "16:00 PM";};
	if t_min == 3 && t_sec == 45 {t_hour = "16:30 PM";};
	if t_min == 3 && t_sec == 30 {t_hour = "17:00 PM";};
	if t_min == 3 && t_sec == 15 {t_hour = "17:30 PM";};
	if t_min == 3 && t_sec == 0 {t_hour = "18:00 PM";};
	if t_min == 2 && t_sec == 45 {t_hour = "18:30 PM";};
	if t_min == 2 && t_sec == 30 {t_hour = "19:00 PM";};
	if t_min == 2 && t_sec == 15 {t_hour = "19:30 PM";};
	if t_min == 2 && t_sec == 0 {t_hour = "20:00 PM";};
	if t_min == 1 && t_sec == 45 {t_hour = "20:30 PM";};
	if t_min == 1 && t_sec == 30 {t_hour = "21:00 PM";};
	if t_min == 1 && t_sec == 15 {t_hour = "21:30 PM";};
	
	if t_min == 1 && t_sec == 1 {instance_create_depth(0,0,999,obj_fade_out);};
	
	if t_min == 1 && t_sec == 0 {t_hour = "22:00 PM";}	
	if t_min == 0 && t_sec == 45 {t_hour = "22:30 PM";};
	if t_min == 0 && t_sec == 30 {t_hour = "23:00 PM";};
	if t_min == 0 && t_sec == 15 {t_hour = "23:30 PM";};

	show_debug_message("Daytime: "+time+" "+t_hour);
	
}

if test == true{
	
	t_mill -= 1;

	if t_mill = -1{
		t_mill = 60;
		t_sec -= 1;
	}
	
	if t_sec == 0{
		
		instance_create_depth(0,0,999,obj_fade_out);
		
	}

	if t_sec == -1{
		t_sec = 20;
		if time == "Day"{time = "Afternoon";}
		else if time == "Afternoon"{time = "Night";}
		else if time == "Night"{time = "Day";};
	}

	show_debug_message("Daytime: "+time+" Sec: "+string(t_sec));
	
}


if InvKeyPressed{
	
	if open == false{open = true;}
	else if open == true{open = false;};
	
}

if InvKeyA && open == true{
	
	page --;
	if page <= 0 {page = 4};
	
}
if InvKeyD && open == true{
	
	page ++;
	if page >= 5 {page = 1;};
	
}
