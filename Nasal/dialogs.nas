var aerotow_dialog = gui.Dialog.new("sim/gui/dialogs/L13/aerotow/dialog", 
                                    "Aircraft/L13/Dialogs/aerotow.xml");
var winch_dialog = gui.Dialog.new("sim/gui/dialogs/L13/winch/dialog", 
                                    "Aircraft/L13/Dialogs/winch.xml");
var groundservice_dialog = gui.Dialog.new("sim/gui/dialogs/L13/groundservice/dialog", 
                                    "Aircraft/L13/Dialogs/groundservice.xml");
var options_dialog = gui.Dialog.new("sim/gui/dialogs/L13/options/dialog", 
                                    "Aircraft/L13/Dialogs/options.xml");
var winchhelp_dialog = gui.Dialog.new("sim/gui/dialogs/L13/winchhelp/dialog", 
                                    "Aircraft/L13/Dialogs/winchhelp.xml");


                                    
                                    

setlistener("/sim/signals/fdm-initialized", func {
    if(getprop("/sim/config/hide-winch-msg")==0){
        winchhelp_dialog.open()
    }
    });