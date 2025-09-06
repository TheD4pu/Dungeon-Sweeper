global.shopmenu = true;

image_index = obj_shop.shop_sprite;

brick_blue = make_color_rgb(30,70,195);

instance_deactivate_object(obj_player);
instance_deactivate_object(obj_spawner);
instance_deactivate_object(obj_wall);

items_10 = [];
items_15 = [];

if (!instance_exists(obj_item1)){
	array_push(items_10,obj_item1);
}
if (!instance_exists(obj_item2)){
	array_push(items_15,obj_item2);
}	
if (!instance_exists(obj_item3)){
	array_push(items_10,obj_item3);
}	
if (!instance_exists(obj_item4)){
	array_push(items_15,obj_item4);
}	
if (!instance_exists(obj_item5)){
	array_push(items_10,obj_item5);
}	
if (!instance_exists(obj_item6)){
	array_push(items_15,obj_item6);
}	

switch (obj_shop.shop_sprite){
	case 0:
		posx_item1 = 420;
		posy_item1 = 580;
		posx_item2 = 606;
		posy_item2 = 580;	
		posx_heal = 778;
		posy_heal = 572;
	break;
	case 1:
		posx_item1 = 360;
		posy_item1 = 396;
		posx_item2 = 836;
		posy_item2 = 396;	
		posx_heal = 590;
		posy_heal = 508;
	break;
	case 2:
		posx_item1 = 352;
		posy_item1 = 500;
		posx_item2 = 496;
		posy_item2 = 500;	
		posx_heal = 418;
		posy_heal = 412;
	break;
	case 3:
		posx_item1 = 372;
		posy_item1 = 312;
		posx_item2 = 526;
		posy_item2 = 312;
		posx_heal = 438;
		posy_heal = 304;
	break;
	case 4:
		posx_item1 = 790;
		posy_item1 = 220;
		posx_item2 = 726;
		posy_item2 = 300;	
		posx_heal = 792;
		posy_heal = 372;
	break;
	case 5:
		posx_item1 = 420;
		posy_item1 = 358;
		posx_item2 = 752;
		posy_item2 = 380;	
		posx_heal = 468;
		posy_heal = 432;
	break;
	default:
		posx_item1 = 532;
		posy_item1 = 520;
}

if (array_length(items_10)=0){
	item1 = obj_heart_heal;
} else {
	item1 = items_10[random_range(0,array_length(items_10))];
}

if (array_length(items_15)=0){
	item2 = obj_heart_heal;
} else {
	item2 = items_15[random_range(0,array_length(items_15))];
}

scr_spawn_items(item1,posx_item1,posy_item1,item2,posx_item2,posy_item2,posx_heal,posy_heal);


list_shop_items = ds_list_create();
	
ds_list_add(list_shop_items, item1);
ds_list_add(list_shop_items, item2);

instance_create_depth(400,112,-1,obj_extshop);