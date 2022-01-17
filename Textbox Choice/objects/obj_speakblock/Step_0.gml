var _s = id;

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
	{
	
	create_textbox(text_id);
	}
	

if coversation_end = true {
	sprite_index = spr_headshake
	image_index = 0 
	coversation_end = false
	}
	
if sprite_index == spr_headshake && image_index >= 10 {
	sprite_index = spr_idle
	}
	