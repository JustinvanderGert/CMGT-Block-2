var _s = id;

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && !conversation_had
	{
	
	create_textbox(text_id);
	}
	

if coversation_end = true {
	sprite_index = spr_headshake
	image_index = 0 

	conversation_had = true;
	coversation_end = false;
	}
	
if sprite_index == spr_headshake && image_index >= 10 {
	sprite_index = spr_idle
	}
	