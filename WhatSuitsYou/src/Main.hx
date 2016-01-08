package;

import openfl.Assets;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

import openfl.events.KeyboardEvent;

import openfl.Lib; 

/**
 * 
 * @author Evan, Max, Mike, Robin, Sipan
 * 
 */

enum Gamestate{
	MainMenu;
	PickingState;
	PlatformState;
	Highscores;
}
 
class Main extends Sprite 
{
	var curretGamestate:Gamestate;
	
	public function new() 
	{
		super();

	}
	
	function keyPressed( event:KeyboardEvent )
	{
		if( /*event.keyCode == Keyboard.UP || */ event.keyCode == 87)
		{
			
		}else if( /*event.keyCode == Keyboard.LEFT || */ event.keyCode == 65)
		{
			
		}else if( /*event.keyCode == Keyboard.RIGHT || */ event.keyCode == 83)
		{
			
		}else if( /*event.keyCode == Keyboard.DOWN || */ event.keyCode == 68)
		{
			
		}
	}
}
