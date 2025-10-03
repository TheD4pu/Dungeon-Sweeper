switch(image_angle){
	case 0:
		y += spd;
	break;
	
	case 180:
		y -= spd;
	break;
	
	case 90:
		x += spd;
	break;
	
	case 270:
		x -= spd;
	break;
}

alarm[0] = 10;
