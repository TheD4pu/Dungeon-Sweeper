if (moving){
	x += lengthdir_x(spd,angl);
	y += lengthdir_y(spd,angl);
}

if (bounce){
	x += lengthdir_x(2,bounce_center);
	y += lengthdir_y(2,bounce_center);
}