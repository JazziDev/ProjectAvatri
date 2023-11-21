depth = -9999;

global.font = font_add_sprite(spr_main_font, 32, true, 1);

//create the inventory
inv = array_create(0);

inv_max = 3

selected_item = -1;

//item constructor
function create_item(_name, _desc, _spr, _candrop, _effect) constructor
	{
	name = _name;
	description = _desc;
	sprite = _spr;
	can_drop = _candrop;
	effect = _effect
	}
	

//create the items
global.item_list = 
	{	

	pinkkey : new create_item(
		"Pink Key",
		"Opens the pink house, single use",
		spr_pinkkey,
		false,
		function()
			{
				
			var _used = false;	
				
			if instance_exists(obj_pinkhouse_door)
				{
					with(obj_pinkhouse_door)
						{
				        if distance_to_object(obj_player) < 20 
							{
							instance_destroy();
							audio_play_sound(sds_door_open,1 ,false);
							_used = true;
							}
						}
      		    }
			
			//get rid of item
			if _used == true
			{
			array_delete(inv, selected_item, 1);
			}
	}
			
		),
		
		
	plank : new create_item(
		"Plank",
		"lmb to go build bridge",
		spr_plank,
		false,
		function()
			{
				
			
		audio_play_sound(sds_menu_move, 0, false)
		array_delete(inv, selected_item, 1);
		room_goto(rm_outside_forest_bridge_rebuilt);
		}
      		  
			

		
	
		),
		
		
	log : new create_item(
		"Log",
		"lmb to craft planks",
		spr_log,
		false,
		function()
			{
			audio_play_sound(sds_menu_move, 0, false);
			array_delete(inv, selected_item, 1);
			array_insert(inv, selected_item, global.item_list.plank);
					
			
			}
				
          ),
		
		
		
	} 
	


//drawing and mouse positions
sep = 16;



		
	