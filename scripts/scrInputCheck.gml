///scrInputCheck(key, operation)
//valid keys are "up", "down", "left", "right", "use", "focus", and "pause"
//valid operations are "hold", "press", and "release"
var keycheck = argument0
var operation = argument1
switch(operation){
case "hold":
    switch(keycheck){
        case "up":
            if(keyboard_check(global.key[0])){
                return 1;
            }
            else if(global.gpEnabled == 1 && (gamepad_button_check(global.gpDevice, gp_padu)||(gamepad_axis_value(global.gpDevice, gp_axislv)<0-global.gpDeadzone))){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "down":
        if(keyboard_check(global.key[1])){
                return 1;
            }
            else if(global.gpEnabled == 1 && (gamepad_button_check(global.gpDevice, gp_padd)||(gamepad_axis_value(global.gpDevice, gp_axislv)>0+global.gpDeadzone))){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "left":
        if(keyboard_check(global.key[2])){
                return 1;
            }
            else if(global.gpEnabled == 1 && (gamepad_button_check(global.gpDevice, gp_padl)||(gamepad_axis_value(global.gpDevice, gp_axislh)<0-global.gpDeadzone))){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "right":
        if(keyboard_check(global.key[3])){
                return 1;
            }
            else if(global.gpEnabled == 1 && (gamepad_button_check(global.gpDevice, gp_padr)||(gamepad_axis_value(global.gpDevice, gp_axislh)>0+global.gpDeadzone))){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "use":
        if(keyboard_check(global.key[4])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check(global.gpDevice, global.gp[0])){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "focus":
        if(keyboard_check(global.key[5])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check(global.gpDevice, global.gp[1])){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "pause":
        if(keyboard_check(global.key[6])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check(global.gpDevice, global.gp[2])){
                return 1;
            }
            else{
                return 0;
            }
        break;
    }
break;
case "press":
    switch(keycheck){
        case "up":
            if(keyboard_check_pressed(global.key[0])){
                return 1;
                show_debug_message("up on keyboard");
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_pressed(global.gpDevice, gp_padu)){
                return 1;
                show_debug_message("up on gamepad");
            }
            else{
                return 0;
            }
        break;
        case "down":
        if(keyboard_check_pressed(global.key[1])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_pressed(global.gpDevice, gp_padd)){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "left":
        if(keyboard_check_pressed(global.key[2])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_pressed(global.gpDevice, gp_padl)){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "right":
        if(keyboard_check_pressed(global.key[3])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_pressed(global.gpDevice, gp_padr)){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "use":
        if(keyboard_check_pressed(global.key[4])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_pressed(global.gpDevice, global.gp[0])){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "focus":
        if(keyboard_check_pressed(global.key[5])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_pressed(global.gpDevice, global.gp[1])){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "pause":
        if(keyboard_check_pressed(global.key[6])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_pressed(global.gpDevice, global.gp[2])){
                return 1;
            }
            else{
                return 0;
            }
        break;
    }
break;
case "release":
    switch(keycheck){
        case "up":
            if(keyboard_check_released(global.key[0])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_released(global.gpDevice, gp_padu)){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "down":
        if(keyboard_check_released(global.key[1])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_released(global.gpDevice, gp_padd)){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "left":
        if(keyboard_check_released(global.key[2])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_released(global.gpDevice, gp_padl)){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "right":
        if(keyboard_check_released(global.key[3])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_released(global.gpDevice, gp_padr)){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "use":
        if(keyboard_check_released(global.key[4])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_released(global.gpDevice, global.gp[0])){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "focus":
        if(keyboard_check_released(global.key[5])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_released(global.gpDevice, global.gp[1])){
                return 1;
            }
            else{
                return 0;
            }
        break;
        case "pause":
        if(keyboard_check_released(global.key[6])){
                return 1;
            }
            else if(global.gpEnabled == 1 && gamepad_button_check_released(global.gpDevice, global.gp[2])){
                return 1;
            }
            else{
                return 0;
            }
        break;
    }
break;
}


