var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

xspd = (right_key-left_key) * move_spd;
yspd = (down_key - up_key) * move_spd; //in gamemaker moving down is positive and move up in y axis is negative!!

if instance_exists(obj_pauser)
{
xspd = 0;
yspd = 0;	
}

//set sprite
mask_index = sprite[LEFT];
if yspd == 0 
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}

if xspd > 0 && face == UP {face = UP};
if xspd < 0 && face == DOWN {face = DOWN};

if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if yspd > 0 && face == RIGHT {face = RIGHT};
if yspd < 0 && face == LEFT {face = LEFT};
sprite_index = sprite[face];

if place_meeting(x+xspd, y, obj_wall) == true
{
 xspd = 0;
}

if place_meeting(x, y+yspd, obj_wall) == true
{
 yspd = 0;
}
  x += xspd;
  y += yspd;


//animate
if xspd == 0 && yspd == 0{
	image_index = 0;
}

//depth
depth = -bbox_bottom




