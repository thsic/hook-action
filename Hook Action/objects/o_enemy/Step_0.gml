
if(object_check_within_view_range(0, id)){
	on_screen = true;
}
else{
	on_screen = false;
}

if(knockback_enable == true){
	enemy_knockbacking();
}
else{
	h_speed = 0;
	v_speed = 0;
}

x += h_speed;
y += v_speed;
