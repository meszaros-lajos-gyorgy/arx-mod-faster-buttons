ON INIT {
 SET §button 0
 ACCEPT
}

ON LOAD {
 USEMESH "secret_button_crypt\\secret_button_crypt.teo"
 ACCEPT
}

ON ACTION {
 SET_INTERACTIVITY NONE
 PLAY "Secret_button" SET_INTERACTIVITY YES
 PLAYANIM -e ACTION1
 IF (§button == 0) {
   SENDEVENT CUSTOM PORTICULLIS_0042 "ok1"
   SET §button 1
   ACCEPT
   }
 ACCEPT
}
      
ON CUSTOM {
IF (^$param1 == "reset") set §button 0
ACCEPT
}    
// Secret button A to open portcullis in room 12 level 4