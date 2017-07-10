valid_xmin=480/8+50;
valid_ymin=720/6+50;
valid_xmax=480-valid_xmin;
valid_ymax=720-valid_ymin;


if(argument0>1){
    v_distance=(valid_ymax-valid_ymin)/(argument0-1);
}
else{
    pts[0] = instance_create(240,360,obj_AchievePts);
    flags[0] = 0;
    return;
}

for(i=0;i<argument0;i++){
    if(i%2 == 1){
        pts[i] = instance_create(valid_xmin,valid_ymin+i*v_distance,obj_AchievePts);
        flags[i] = 0;
    }
    else{
        pts[i] = instance_create(valid_xmax,valid_ymin+i*v_distance,obj_AchievePts);
        flags[i] = 0;    
    }
}
