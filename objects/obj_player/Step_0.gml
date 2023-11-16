//binding keybinds

right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
up_key = keyboard_check(ord("W"));

//get xspd & yspd

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//collisions

if place_meeting(x + xspd, y, obj_wall)
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall)
{
	yspd = 0;
}

//move the player
//makes the xspd and yspd variables equal the gm2 axis
x += xspd;        
y += yspd;

//set sprite

if yspd == 0
	{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
	}
	
if xspd == 0
	{
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
	}
sprite_index = sprite[face];













