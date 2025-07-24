///Moving
depth = - bbox_bottom;
moveDir = 0;
moveSpd = 1;
xspd = 0;
yspd = 0;

//Jumping

grav = .17;
termVel = 3;
jspd = -4;

//Is he jumping?
jmpT = 0;
jumpStart = 0;


//Sprite
cole = spr_Miguel_Collecting_Left;
cole2 = spr_Miguel_Collecting_Right;
idD = spr_Miguel_Idle_Right;
idL = spr_Miguel_Idle_Left;
ri = spr_Miguel_Right;
le = spr_Miguel_Left;
jur = spr_Miguel_Jump_Right;
jul = spr_Miguel_Jump_Left;

sprite[1] = idD;
sprite[2] = idL;
sprite[3] = ri;
sprite[4] = le;
sprite[5] = jur;
sprite[6] = jul;
//sprite[7] = spr_Miguel_Collecting_Left;



face = 1;

lastSide = 0;

impediment = false;

accionar = false;
accionar2 = false;
accionar3 = false;
accionar4 = false;