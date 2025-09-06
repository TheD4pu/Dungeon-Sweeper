global.shopmenu = true;

image_index = obj_shop.shop_sprite;

posx_item1 = 132;
posy_item1 = 520;
posx_item2 = 0;
posy_item2 = 0;		
posx_heal = 0;
posy_heal = 0;

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


switch (obj_shop.shop_sprite){
	case 0:
		posx_item1 = 420;
		posy_item1 = 580;
		posx_item2 = 606;
		posy_item2 = 580;	
		posx_heal = 786;
		posy_heal = 580;
	break;
	case 1:
		posx_item1 = 360;
		posy_item1 = 396;
		posx_item2 = 836;
		posy_item2 = 396;	
		posx_heal = 598;
		posy_heal = 516;
	break;
	case 2:
		posx_item1 = 352;
		posy_item1 = 500;
		posx_item2 = 496;
		posy_item2 = 500;	
		posx_heal = 426;
		posy_heal = 420;
	break;
	case 3:
		posx_item1 = 372;
		posy_item1 = 312;
		posx_item2 = 526;
		posy_item2 = 312;
		posx_heal = 446;
		posy_heal = 312;
	break;
	case 4:
		posx_item1 = 790;
		posy_item1 = 220;
		posx_item2 = 726;
		posy_item2 = 300;	
		posx_heal = 800;
		posy_heal = 380;
	break;
	case 5:
		posx_item1 = 420;
		posy_item1 = 358;
		posx_item2 = 752;
		posy_item2 = 380;	
		posx_heal = 476;
		posy_heal = 440;
	break;
	default:
		posx_item1 = 532;
		posy_item1 = 520;
}
item1 = items_10[random_range(0,array_length(items_10))]
item2 = items_15[random_range(0,array_length(items_15))]

scr_spawn_items(item1,posx_item1,posy_item1,item2,posx_item2,posy_item2,posx_heal,posy_heal);

/*
list_shop_items = ds_list_create();
	
for (var i=1; i<6; i++){
	var shop_object = asset_get_index("obj_item" + string(i));
	ds_list_add(list_shop_items, shop_object);
	show_debug_message(shop_object);
}
*/
instance_create_depth(400,112,-1,obj_extshop);