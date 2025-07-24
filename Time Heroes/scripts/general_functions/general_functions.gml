function getControls()
{
	///Direction inpunts
	rightKey = keyboard_check(vk_right);
	leftKey = keyboard_check(vk_left);
	downKey = keyboard_check_released(vk_down);
	upKey = keyboard_check_released(vk_up);
	
	///Action inputs
	jumpKeyPressed =keyboard_check_pressed(vk_space);
	jumpKeyReleased = keyboard_check_released(vk_space);
	collectKeyPressed = keyboard_check_released(ord("X"));
	InvKeyPressed = keyboard_check_released(ord("O"));
	MenuKeyPressed = keyboard_check_released(ord("I"));
	InvKeyS = keyboard_check_released(ord("S"));
	InvKeyA = keyboard_check_released(ord("A"));
	InvKeyD = keyboard_check_released(ord("D"));
	InvKeyW = keyboard_check_released(ord("W"));
}
	