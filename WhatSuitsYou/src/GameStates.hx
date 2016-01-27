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

// All the possible states of the game.
enum Gamestate {
	STARTUP;
	MAINMENU;
	PICKINGSTATE;
	PLATFORMSTATE;
	HIGHSCORES;
}
 
class GameStates extends Sprite 
{	
	var mainMenu:MainMenu;
	var platformState:Game;
	
	public var lastGamestate = Gamestate.STARTUP;
	public var currentGamestate = Gamestate.MAINMENU;
	
	public function new(){
		super();
		addEventListener(Event.ENTER_FRAME, switchGamestate);
		addEventListener(Event.ENTER_FRAME, checkGameState);
		trace(currentGamestate);
	}
	
	public function changeGamestateToMainMenu() {
		currentGamestate = Gamestate.MAINMENU;
	}
	
	public function changeGamestateToPickingState() {
		currentGamestate = Gamestate.PICKINGSTATE;
	}
	
	public function changeGamestateToPlatformState() {
		currentGamestate = Gamestate.PLATFORMSTATE;
		trace("12341243");
		trace(currentGamestate);
	}
	
	public function checkGameState(e:Event):Void {
		if (currentGamestate == Gamestate.MAINMENU) {
			mainMenu = new MainMenu();
		}else if(currentGamestate == Gamestate.PICKINGSTATE) {
			//pickingState = new PickingState();
		}else if (currentGamestate == Gamestate.PLATFORMSTATE) {
			platformState = new Game();
			trace("test");
		}else if(currentGamestate == Gamestate.HIGHSCORES) {
			//var mainMenu:MainMenu;
		}else {
			trace("testerino");
		}
	}

	// With this fuction we can switch between different states of our game.
	public function switchGamestate(e:Event):Void {
		// We do this by checking if we changed the state of our game to something else.
		if (lastGamestate != currentGamestate) {
			// If we have changed the state of the game we need to remove the current state of the game before we add the new state.
			switch(lastGamestate){
				case STARTUP:
					//Don't put anything here, this is just for debugging.
				case MAINMENU:
					removeChild(mainMenu);
				case PICKINGSTATE:
					//removeChild();
				case PLATFORMSTATE: 
					removeChild(platformState);
				case HIGHSCORES: 
					//removeChild();
			}
			// After removing the previous state we can add our new state to the game.
			switch(currentGamestate){
				case STARTUP:
					//Don't put anything here, this is just for debugging.
				case MAINMENU:
					trace("Kappa");
					addChild(mainMenu);
				case PICKINGSTATE:
					//addChild();
				case PLATFORMSTATE:
					trace("Kappa 2");
					addChild(platformState);
				case HIGHSCORES:
					//addChild();
			}
			lastGamestate = currentGamestate;
		}
	}
}