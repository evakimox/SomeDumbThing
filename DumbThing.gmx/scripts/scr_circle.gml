valid_xmin=480/8+50;
valid_ymin=720/6+50;
valid_xmax=480-valid_xmin;
valid_ymax=720-valid_ymin;

radius=155;
centerx = 240;
centery = 360;

if(argument0>1){
    SmolAngle = 360/argument0;
}
else{
    pts[0] = instance_create(240,360,obj_AchievePts);
    flags[0] = 0;
    exit;
}

for(i=0;i<argument0;i++){
    myangle = 270+SmolAngle*i;
    myx = centerx+dcos(myangle)*radius;
    myy = centery+dsin(myangle)*radius;
    pts[i] = instance_create(myx,myy,obj_AchievePts);
    flags[i] = 0;
}
