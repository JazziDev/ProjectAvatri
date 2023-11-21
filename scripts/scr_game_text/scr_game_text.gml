///@param text_id
function scr_game_text(_text_id){
switch(_text_id) {
	
	case "npc 1":
		scr_text("hi im npc 1");
		scr_text("Do you like games?");
			scr_option("Yeah, i love them", "npc 1 - yes");
			scr_option("Nah, not really", "npc 1 - no");
		break;
		case "npc 1 - yes":
			scr_text("YAYAYAYAYAYAYYAAAAA");
			break;
		case "npc 1 - no":
			scr_text("WHYYYYYYYY");
			break;		
		
	case "npc 2":
		scr_text("hi im npc 2");
		scr_text("hi im npc 2 again");

		break;
	

	}
	
	
}