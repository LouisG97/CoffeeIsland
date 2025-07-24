/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


t_mill -= 1;

if t_mill = -1{

	t_mill = 45;
	if frame == 0 {frame = 1;}
	else if frame == 1 {frame = 0;};
	//show_debug_message("Frame: "+string(frame));

}

if oPlayer.x+18 >= id.x &&  oPlayer.x <= id.x+18 && keyboard_check_released((ord("X")))==true
	{
		instance_destroy();
	}