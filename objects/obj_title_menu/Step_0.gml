//get inputs
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space);


//store num. of options in current menu
op_length = array_length(option[menu_level]);

//move through menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};    

//using the options
if accept_key{
	
	var _sml = menu_level;

	switch(menu_level) {
	
		//pause menu
		case 0:
			switch(pos){
				//start game
				case 0:
				        audio_play_sound(sds_menu_start, 0, false);
						room_goto_next();
						break;
				//settings
				case 1: audio_play_sound(sds_menu_move, 0, false);
						menu_level = 1; break;
				//quit game
				case 2: audio_play_sound(sds_menu_start, 0, false);
						game_end();break;
			    }
			break; 	
   
	     //settings
		 case 1:
		 switch(pos) {
			 //fullscreen
			 case 0:
			      audio_play_sound(sds_menu_move, 0, false);
			      window_set_fullscreen(true); break;
		     //windowed
			 case 1:
			      audio_play_sound(sds_menu_move, 0, false);
			      window_set_fullscreen(false); break;
			 //credits
			 case 2:
					audio_play_sound(sds_menu_move, 0, false);
					menu_level = 3; break;
			 
		     //controls
			 case 3: 
				     audio_play_sound(sds_menu_move, 0, false);
					 menu_level = 2; break;

			 //back
			 case 4:
				  audio_play_sound(sds_menu_move, 0, false);
			      menu_level = 0; break;
		     }
		 break;
		 
             //controls
		     case 2:
		     switch(pos) {
			 //back
		     case 0:
		          audio_play_sound(sds_menu_move, 0, false);
				  menu_level = 1; break;
	                
					 }
					 
		     //credits
		     case 3:
		     switch(pos) {
			 //back
		     case 0:
		          audio_play_sound(sds_menu_move, 0, false);
				  menu_level = 1; break;
				  
			             }
				}							
								
								
								
								
								
								
		
    //set position back
	if _sml != menu_level {pos = 0};

	//correct option length
	op_length = array_length(option[menu_level]);

	}

