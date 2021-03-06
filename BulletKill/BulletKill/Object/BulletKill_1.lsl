// :CATEGORY:Weapons
// :NAME:BulletKill
// :AUTHOR:Encog Dod
// :CREATED:2010-01-10 05:20:56.000
// :EDITED:2013-09-18 15:38:49
// :ID:130
// :NUM:193
// :REV:1.0
// :WORLD:Second Life
// :DESCRIPTION:
// BulletKill
// :CODE:
// From the book:
//
// Scripting Recipes for Second Life
// by Jeff Heaton (Encog Dod in SL)
// ISBN: 160439000X
// Copyright 2007 by Heaton Research, Inc.
//
// This script may be freely copied and modified so long as this header
// remains unmodified.
//
// For more information about this book visit the following web site:
//
// http://www.heatonresearch.com/articles/series/22/

//
//  Encog's MultiBullet Gun Bullet
//
//  100% Damage(Kill) Bullet: This bullet will usually kill an avatar with one shot
// 


default
{   
    on_rez(integer delay)
    {
        llSetStatus( STATUS_DIE_AT_EDGE, TRUE);
        llSetDamage(100);
        llSetBuoyancy(1.0);                 //  Make bullet float and not fall 
        llCollisionSound("", 1.0);          //  Disable collision sounds
        
        if (delay >0 ) 
        {
            llSetTimerEvent(delay);            
        }
    }

    collision_start(integer total_number)
    {
    }

    land_collision_start(vector pos)
    {
    }
    
    timer()
    {
        llDie();
    }
    
}
