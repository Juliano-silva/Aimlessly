if alarm[0] <=0{
	lives -= 1;
	alarm[0] = 150;
}else if lives== 0{
	room_restart();
}