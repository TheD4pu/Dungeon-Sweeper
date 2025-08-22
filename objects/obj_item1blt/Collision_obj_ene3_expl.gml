if (obj_ene3_expl.explo){
	instance_destroy();
	instance_create_layer(x,y,"bullet",obj_bullet);
} else{
	instance_destroy();
}