ON INIT {
 SET_MATERIAL WOOD
 COLLISION OFF
 SET_SHADOW OFF
 LOADANIM ACTION1 "push_button"
 ACCEPT
}

ON ACTION {
 SET_INTERACTIVITY NONE
 PLAY "button_up" SET_INTERACTIVITY YES
 PLAYANIM -e ACTION1
 ACCEPT
}