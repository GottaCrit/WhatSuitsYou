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

enum Gamestate {
	STARTUP;
	MAINMENU;
	PICKINGSTAGE;
	PLATFORMSTATE;
	HIGHSCORES;
}
 
class Main extends Sprite 
{
	var lastGamestate = Gamestate.STARTUP;
	var currentGamestate = Gamestate.MAINMENU;
	var player:SpecialPlayer;
	var inputs:Map<String,Bool> = ["W"=>false,"A"=>false,"S"=>false,"D"=>false];
	
	public function new(){
		super();
		
		addEventListener(Event.ENTER_FRAME, update);
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		
		player = new SpecialPlayer();
		player.x = 300;
		player.y = 100;
		addChild(player);
	}
	
	public function switchGamestate(){
		if(lastGamestate != currentGamestate){
			switch(lastGamestate) {
				case STARTUP:
					//Don't put anything here, this is just for debugging
				case MAINMENU:
					//removeChild();
				case PICKINGSTAGE:
					//removeChild();
				case PLATFORMSTATE: 
					//removeChild();
				case HIGHSCORES: 
					//removeChild();
			}

			switch(currentGamestate) {
				case STARTUP:
					//Don't put anything here, this is just for debugging
				case MAINMENU:
					//addChild();
				case PICKINGSTAGE:
					//addChild();
				case PLATFORMSTATE:
					//addChild();
				case HIGHSCORES:
					//addChild();
			}
			lastGamestate = currentGamestate;
		}
	}
	public function onKeyUp(e:KeyboardEvent):Void{
		if(e.keyCode == 87){inputs["W"] = false;}
		if(e.keyCode == 65){inputs["A"] = false;}
		if(e.keyCode == 83){inputs["S"] = false;}
		if(e.keyCode == 68){inputs["D"] = false;}
	}

	public function onKeyDown(e:KeyboardEvent):Void{
		if(e.keyCode == 87){inputs["W"] = true;}
		if(e.keyCode == 65){inputs["A"] = true;}
		if(e.keyCode == 83){inputs["S"] = true;}
		if(e.keyCode == 68){inputs["D"] = true;}
	}	
	
	public function update(e:Event):Void {	
		player.HandelInput(inputs);
		player.Update();
	}
}