function item1_function(){
	var bull = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+180
	})
	
	var bull2 = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+225
	})
	
	var bull3 = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+135
	})
}

function item2_reflect(){
	var bull = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+random_range(-45,45)
	})
	instance_destroy(other);
}

function item4_create_swords(){
		instance_create_layer(x,y,"Instances_1",obj_item4_swords,{
			direction: obj_player.angl
		});
		
		instance_create_layer(x,y,"Instances_1",obj_item4_swords, {
			image_angle : 180,
			image_index : 1,
			direction : obj_player.angl
		});
}

function item7_create_spikes(){
	if(moving){
		instance_create_layer(x,y,"Instances_1",obj_item7_spikes);
		alarm[3] = 3;
	}
}
