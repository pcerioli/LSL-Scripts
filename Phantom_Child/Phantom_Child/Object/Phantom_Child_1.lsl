// :CATEGORY:Phantom
// :NAME:Phantom_Child
// :AUTHOR:Aeron Kohime
// :CREATED:2010-12-27 12:28:17.673
// :EDITED:2013-09-18 15:38:59
// :ID:623
// :NUM:848
// :REV:1.0
// :WORLD:Second Life
// :DESCRIPTION:
// Phantom Child
// You may use the following script in any manner you like, excluding claiming you made it and individually reselling it without change in function (its on the Wiki silly). Otherwise you can sell it as part of a product, modify it, remove my comments, etc etc.
// 
// It needs to be reset on sim restarts. A reliable solution is included in all these scripts. Checking llGetTime and a timer could be used but, is a more "expensive" method. 
// :CODE:
// Basic
//Phantom Child Script by Aeron Kohime
//WARNING: When used on the root prim it makes the entire object phantom, it
//         also does not function correctly on tortured prims. (Sorry.)
//Reset on Sim restart added by Void Singer
//Strife Onizuka was here doing simplification
//Reset on collision added by Taff Nouvelle (my stairs kept reverting)
//Psi Merlin updated CHANGED_REGION_START (live as of Server 1.27)
 
default {
    state_entry() {
        llSetPrimitiveParams([PRIM_TYPE, PRIM_TYPE_BOX,
            0, <0,1,0>, 0, <0,0,0>, <1,1,0>, <0,0,0>,
            PRIM_FLEXIBLE, TRUE, 0, 0, 0, 0, 0, <0,0,0>,
            PRIM_TYPE] + llGetPrimitiveParams([PRIM_TYPE]));
    }
 
    on_rez(integer s) {
        llResetScript();
    }
 
    //-- This event/test will reset the script on sim restart.
    changed (integer vBitChanges){
        if (CHANGED_REGION_START & vBitChanges){
            llResetScript();
        }
    }
    collision_start(integer num_detected){
        llResetScript();
 
    }
}