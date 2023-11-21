sprite_index = item.sprite;

if place_meeting(x, y, obj_player)
	{
	if item_add(item) == true
		{
		instance_destroy();
		audio_play_sound(sds_pickup_key, 1, false);
		}
	}