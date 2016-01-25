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
	var game = new Game();
	
	var lastGamestate = Gamestate.STARTUP;
	var currentGamestate = Gamestate.PLATFORMSTATE;	
	
	public function new(){
		super();
		
	}
	// With this fuction we can switch between different states of our game.
	public function switchGamestate() {
		// We do this by checking if we changed the state of our game to something else.	
		if (lastGamestate != currentGamestate) {
			// If we have changed the state of the game we need to remove the current state of the game before we add the new state.
			switch(lastGamestate){
				case STARTUP:
					//Don't put anything here, this is just for debugging
				case MAINMENU:
					//removeChild();
				case PICKINGSTAGE:
					//removeChild();
				case PLATFORMSTATE: 
					removeChild(game);
				case HIGHSCORES: 
					//removeChild();
			}
			// After removing the previous state we can add our new state to the game
			switch(currentGamestate){
				case STARTUP:
					//Don't put anything here, this is just for debugging
				case MAINMENU:
					//addChild();
				case PICKINGSTAGE:
					//addChild();
				case PLATFORMSTATE:
					addChild(game);
				case HIGHSCORES:
					//addChild();
			}
			lastGamestate = currentGamestate;
		}
	}
}