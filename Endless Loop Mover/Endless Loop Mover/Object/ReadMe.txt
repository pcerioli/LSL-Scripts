// :SHOW:1
// :CATEGORY:Tour
// :NAME:Endless Loop Mover
// :AUTHOR:Ferd Frederix
// :KEYWORDS: Movement, Walking, Teleporting
// :CREATED:2013-09-06
// :EDITED:2015-08-05  10:12:51
// :ID:1084
// :NUM:1819
// :REV:1
// :WORLD:OpenSim
// :DESCRIPTION:
// Help notecard for the walker
// :CODE:

// Open Source CC-BY-NC by Ferd Frederix
================

The walker can be set to auto start in an endless loop(default), or it can be set to wait for a NPC to sit on it.  It then unsits the NPC at the end of the route, and returns to the start at high speed.  

The default route I set is a square in mid-air.   Rez the prim, it should start moving. Sit on it, you should start walking.  In production, make the box invsiible for a NPC to appear to walk at any orientation.



'10' Box

Name this prim '10' without the double quotes.   You will use the prim #10 to establish a path of waypoints to follow. It can actually be named any INTEGER such as a 0 ot the number 310,  but 10 is the standard start point.

Rez this at the beginning of the ride.

The final gadget will start at the #10 prim location and rotation/

Shift-copy the 10 prim,  move it slightly, then GRAB THE ONE YOU LEFT BEHIND and move it to the next place.  The prim you shift-copy will be #10, the one left behind will become #20.  The original #10 moves, and leaves behind a copy.  This copy will automatically make it itself the next larger number.   

You can also just drag out a new one each time you need another waypoint.

Each prim will rename itself to the largest number found ANYWHERE in the sim,  plus 10, about 5 seconds after it rezzes.  Since you started with prim #10, the second prim will rename itself as #20, the next will be 30, and so on.

When finished, click the tour object.

If you make a mistake, and need to fix it, you can move the prims around. You can renumber them.  You can add more prims in between 10 and 20, just renumber them 11, 12, 13, or whatever.

==============================
Walker Prim - rez the #10 prims, and then touch the tour prim to record a route

The route prim will follow the route. Fix any issues by replacing, removing or adding the numbered prims, and touch to save

When finished, delete the Recorder script that is inside the walker as it is not needed.

The walker can be set to auto start in an endless loop(default), or it can be set to wait for a NPC to sit on it.  It then unsits the NPC at the end of the route, and returns to the start at high speed.

. 

