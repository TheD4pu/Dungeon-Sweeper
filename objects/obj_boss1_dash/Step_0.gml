if (atking){	
	x += lengthdir_x(spd,angl);
	y += lengthdir_y(spd,angl);
}

if (hurt){
	x += lengthdir_x(spd,angl);
	y += lengthdir_y(spd,angl);
}

if (bounce){
	x -= lengthdir_x(2,angl);
	y -= lengthdir_y(2,angl);
}