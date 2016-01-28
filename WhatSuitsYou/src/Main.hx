package;

import openfl.Assets;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.ui.Keyboard;
import openfl.Lib; 
import openfl.events.MouseEvent;

/**
 * 
 * @author Evan, Max, Mike, Robin, Sipan
 * 
 */
 
class Main extends Sprite
{
	var gameState:GameStates;
	
	public function new(){
		super();
		
		gameState = new GameStates();
		addChild(gameState);
	}
}