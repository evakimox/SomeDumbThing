angle_offset = argument2;
MaxAngle = argument1;
bullet_spd = argument3;

//calculations
StartingAngle = angle_offset - (MaxAngle/2);
AngleInBetween = 0;
if(argument0>1){
    AngleInBetween = MaxAngle/(argument0-1);
}
else{
    MaxAngle = 0;
    StartingAngle = angle_offset;
}

for(i=0;i<argument0;i++){
    bullet = instance_create(x,y,obj_bullet);
    bullet.sprite_index = spr_bullshit;
    
    bullet.direction = StartingAngle;
    bullet.speed = bullet_spd;
    
    StartingAngle += AngleInBetween;
}
