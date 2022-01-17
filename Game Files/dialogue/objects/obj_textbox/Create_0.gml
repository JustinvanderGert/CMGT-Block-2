depth = -999;

//textbox parameters
textbox_width = 200;
textbox_hight = 64; 
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_image_spd = 6/60;

//the text
page = 0;
page_number = 0
text[0] = "text 1";
text[1] = "text 2 is short";
text[2] = "text 3 is short but longer that text 2";
text[3] = "text 4 is not short at all as infact it is the longest text out of all of them";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;