//key to activate textbox and location of textbox
if (!global.gamePaused) {
	accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E"));
}

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 110 ;

//setup for font
if setup == false
{
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for(var p = 0; p < page_number; p++)
	{
		
		//find how many characters are on each page 
		//and store that number in the "text_length" array
		text_length[p] = string_length(text[p]);
		
		//get the x position for the textbox
			//no character (center the textbox)
			text_x_offset[p] = 44; 
		
		//setting indivisual characters and finding where the lines of text  should break
		for (var c = 0 ; c < text_length[p]; c++)
			{
				
			var _char_pos = c + 1;
			
			//store indivisual characters in "char" array
			char[c, p] = string_char_at(text[p], _char_pos);
				
				
			//get current width of the line
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
			
			
			//get the last free space
			if char[c, p] == " " {last_free_space = _char_pos+1}
			
			//get the line breaks
			if _current_txt_w - line_break_offset[p] > line_width
				{
					
				line_break_pos[ line_break_num[p], p ] = last_free_space;
				line_break_num[p]++;
				var _txt_up_to_last_space = string_copy(text[p], 1, last_free_space);
				var _last_free_space_string = string_char_at(text[p], last_free_space);
				line_break_offset[p] = string_width( _txt_up_to_last_space) - string_width( _last_free_space_string	);
				}	
			
			
			}	
			
		//getting each character coordinates
		for (var c = 0; c < text_length[p]; c++)
			{
			
			var _char_pos = c+1;
			var _txt_x = textbox_x + text_x_offset[p] + border;
			var _txt_y = textbox_y + border;
			//get current width of the line
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
			var _txt_line = 0; 
			
			//compensate for string breaks
			for (var lb = 0; lb < line_break_num[p]; lb++)
				{
				//if the current lopping character is after a line break
				if _char_pos >= line_break_pos[lb, p] 
					{
					var _str_copy = string_copy( text[p], line_break_pos[lb, p], _char_pos - line_break_pos[lb, p] );
					_current_txt_w = string_width(_str_copy);
					
					
					//record the "line" this character should be on
					_txt_line = lb+1; //+1 since lb starts at 0 
					}
				}
				
			//add to the x and y coordinates based on the new info
			char_x[c, p] = _txt_x + _current_txt_w;
			char_y[c, p] = _txt_y + _txt_line*line_sep;
			
			}
	}
	
}


//typing the text
if draw_char < text_length[page]
	{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
	}
	
	
	
//---flip through pages---
if accept_key
	{
	
	//if the typing is done
	if draw_char == text_length[page]
		{
			
		//nextpage
		if page < page_number - 1
			{
			page++;
			draw_char = 0;
			}
		//destroy textbox
		else
			{
			//link text for options
			if option_number > 0 {
				create_textbox(option_link_id[option_pos]);
			}
				instance_destroy();	
				
				global.textDisplayed = false;
				
				//Setup after specific dialogue
				if(global.firstCall == 1) {
					global.firstCall++
					
				} else if (global.leaveOffice == 1) {
					//show_debug_message("Leave office!")
					global.leaveOffice++
					ChangeRoom(rCity, 83, 163);
				}
			}
			
		}
	//if not done typing
	else
		{
		draw_char = text_length[page];
		}
	
	}




//---draw the textbox---
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img += txtb_image_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
//back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_hight/txtb_spr_h, 0, c_white, 1);

//---options---
if draw_char == text_length[page] && page == page_number -1
	{
	
	//option selection
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number-1);

	//draw the options
	var _op_space = 15;
	var _op_bord = 4;
	for (var op = 0; op < option_number; op++)
		{
		//the option box
		var _o_w = string_width(option[op]) + _op_bord*2;
		draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1)
		
		//draw arrow
		if option_pos == op
			{
			draw_sprite(spr_textbox_arrow, 0, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op);	
			}	
		
		//the option text
		draw_text(_txtb_x + 18 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op + 7 , option[op]);
		}

	}

//draw the text
for (var c = 0; c < draw_char; c++)
	{
	
	//the text
	draw_text(char_x[c, page], char_y[c, page], char[c, page]);

	}
