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

// All the possible states of the game.
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
	var currentGamestate = Gamestate.PLATFORMSTATE;	
	
	public function new(){
		super();
		var press : Bitmap = new Bitmap(Assets.getBitmapData("img/start.png" ));
		press.x = 315;
		press.y = 120;
		
<<<<<<< HEAD
		addEventListener( MouseEvent.CLICK, startScreen );
		addChild( press );
		
		//addEventListener(Event.ENTER_FRAME, update);
		//stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		//stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		//player = new SpecialPlayer();
		//player.x = 300;
		//player.y = 100;
		//addChild(player);
	}
	
	public function startScreen(event:MouseEvent)
	{
		trace("adfdasfdasf");
		removeChildren();
		removeEventListener( MouseEvent.CLICK, startScreen );
		var instructions : Bitmap = new Bitmap(Assets.getBitmapData("img/instructions.png"));
		instructions.x = 150;
		addChild(instructions); 
	}
	

	public function onKeyUp(e:KeyboardEvent):Void{
		if(e.keyCode == 87){inputs["W"] = false;}
		if(e.keyCode == 65){inputs["A"] = false;}
		if(e.keyCode == 83){inputs["S"] = false;}
		if(e.keyCode == 68){inputs["D"] = false;}
=======
>>>>>>> origin/master
	}
	// With this fuction we can switch between different states of our game.
	public function switchGamestate() {
		// We do this by checking if we changed the state of our game to something else.	
		if (lastGamestate != currentGamestate) {
			// If we have changed the state of the game we need to remove the current state of the game before we add the new state.
			switch(lastGamestate){
				case STARTUP:
					//Don't put anything here, this is just for debugging.
				case MAINMENU:
					//removeChild();
				case PICKINGSTAGE:
					//removeChild();
				case PLATFORMSTATE: 
					//removeChild();
				case HIGHSCORES: 
					//removeChild();
			}
			// After removing the previous state we can add our new state to the game.
			switch(currentGamestate){
				case STARTUP:
					//Don't put anything here, this is just for debugging.
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
}