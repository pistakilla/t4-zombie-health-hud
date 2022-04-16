#include maps\_utility;
#include common_scripts\utility;
#include maps\_zombiemode_utility;


init()
{
	thread onConnect();
}

onConnect()
{
	for(;;)
	{
		level waittill( "connecting", player );
        	player thread health_hud();
	}
}

health_hud()
{   
	self endon( "disconnect" );

   	health = create_simple_hud(self); //health value
   	health.horzAlign = "center";
   	health.vertAlign = "top";
   	health.alignX = "center";
   	health.alignY = "top";
   	health.y = 22;
   	health.x = -1;
   	health.foreground = 1;
   	health.fontscale = 8;
   	health.alpha = 1;
   	health.color = ( 0.49, 0, 0 );

    health_text = create_simple_hud(self); //health text
   	health_text.horzAlign = "center";
   	health_text.vertAlign = "top";
   	health_text.alignX = "center";
   	health_text.alignY = "top";
   	health_text.y = 5;
   	health_text.x = -1;
   	health_text.foreground = 1;
   	health_text.fontscale = 8;
   	health_text.alpha = 1;
    health_text SetText("Health");


	while(1)
	{
		health SetValue(self.health);
	    wait 0.01;
	}
}
