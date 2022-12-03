//Movimento
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
tiro = keyboard_check_pressed(ord("Z"));
hveloc = (right - left) * veloc;
//Trocar de Sprites
if right{
	direct = 0;
	sprite_index = spr_PersonagemCorrendoDireita;
}else if left{
	direct = 1;
	sprite_index = spr_PersonagemCorrendoEsquerda;
}else{
		if direct == 0 {
			sprite_index = spr_PersonagemDireita;
		}else if direct == 1{
			sprite_index = spr_PersonagemEsquerda;
		}
}
// Chão Colisão
	if place_meeting(x + hveloc,y,obj_Floor){
		while !place_meeting(x+sign(hveloc),y,obj_Floor){
			x += sign(hveloc);
		} 
		hveloc = 0;
	}
	x += hveloc;
	if place_meeting(x,y + vveloc, obj_Floor){
		while !place_meeting(x,y + sign(vveloc), obj_Floor){
			y += sign(vveloc);
		}
		vveloc = 0;
	} 
	y += vveloc
//Pular
	if !place_meeting(x,y + 1,obj_Floor){
		sprite_index = spr_PersonagemPularDireita
			vveloc += gravidade
		}else{
			if up{	
				vveloc = -2.8;
				}
		}
//Tiro
if tiro and global.Bullets > 0{
if (tiro){
	global.Bullets --;
	var t = instance_create_layer(x,y,layer,obj_TiroPiu);
	t.speed = 5;
	t.direction = 87;
}
}