///scrInit()
//initializes various global variables

//rng time babe!!!
randomize();

//Keyboard
global.key[0] = vk_up;
global.key[1] = vk_down;
global.key[2] = vk_left;
global.key[3] = vk_right;
global.key[4] = ord("Z");
global.key[5] = vk_shift;
global.key[6] = vk_escape;

//Controller
global.gpEnabled = 1;
global.gpDevice = 0;
global.gpAnalog = 1;
global.gpDeadzone = 0.4;
global.gp[0] = gp_face1;
global.gp[1] = gp_shoulderl;
global.gp[2] = gp_start;

instance_create(0,0,objDeltaTimer);
instance_create(0,0,objWaveControl);
instance_create(0,0,objMusicControl);
