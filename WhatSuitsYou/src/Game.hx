package;

import openfl.Assets;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.ui.Keyboard;
import openfl.Lib; 

/**
 * 
 * @author Evan, Max, Mike, Robin, Sipan
 * 
 */

class Game extends Sprite
{
	//Mapping all the inputs and setting the default state to false
	var inputs:Map<String,Bool> = ["W"=>false,"A"=>false,"S"=>false,"D"=>false];
	var player:SpecialPlayer;
	
	public function new() 
	{
		super();
		
		addEventListener(Event.ENTER_FRAME, update);
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		
		// Adding the player to the game
		player = new SpecialPlayer();
		player.x = 300;
		player.y = 100;
		addChild(player);
	}	
	// If you let go of a key (W,A,S,D) this returns the status of the key to unpressed (false).
	public function onKeyUp(e:KeyboardEvent):Void{
		if(e.keyCode == 87){inputs["W"] = false;}
		if(e.keyCode == 65){inputs["A"] = false;}
		if(e.keyCode == 83){inputs["S"] = false;}
		if(e.keyCode == 68){inputs["D"] = false;}
	}
	// If you press a key it sets the particular key (W,A,S,D) as pressed (true).
	public function onKeyDown(e:KeyboardEvent):Void{
		if(e.keyCode == 87){inputs["W"] = true;}
		if(e.keyCode == 65){inputs["A"] = true;}
		if(e.keyCode == 83){inputs["S"] = true;}
		if(e.keyCode == 68){inputs["D"] = true;}
	}	
	// Updating all the functions
	public function update(e:Event):Void{	
		player.HandelInput(inputs);
		player.Update();
	}
}