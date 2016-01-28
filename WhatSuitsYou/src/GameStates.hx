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
	HIGHSCORESTATE;
}
 

class GameStates extends Sprite 
{	
	// Used in checkGameState to make childeren
	var mainMenu:MainMenu;
	var pickingState:Deck;
	var platformState:Game;
	var highscoreState:HIGHSCORES;
	
	// Maikng sure that the initial startup switch will happen in the function switchGamestate()
	public var lastGamestate = Gamestate.STARTUP;
	public var currentGamestate = Gamestate.PICKINGSTATE;
	
	public function new(){
		super();
		addEventListener(Event.ENTER_FRAME, switchGamestate);
		checkGameState();
	}
	
	// A function that you can call from every class to change the state of the game to the main menu
	public function changeGamestateToMainMenu() {
		currentGamestate = Gamestate.MAINMENU;
	}
	
	// A function that you can call from every class to change the state of the game to the pickingState
	public function changeGamestateToPickingState() {
		currentGamestate = Gamestate.PICKINGSTATE;
	}
	
	// A function that you can call from every class to change the state of the game to the PlatformState
	public function changeGamestateToPlatformState() {
		currentGamestate = Gamestate.PLATFORMSTATE;
	}
	
	// A function that you can call from every class to change the state of the game to Highscores
	public function changeGamestateToHighScoreState() {
		currentGamestate = Gamestate.HIGHSCORESTATE;
	}
	
	// Checking what the current gamestate is and making a new child avialable to add
	public function checkGameState() {
		if (currentGamestate == Gamestate.MAINMENU) {
			mainMenu = new MainMenu();
		}else if(currentGamestate == Gamestate.PICKINGSTATE) {
			pickingState = new Deck();
		}else if (currentGamestate == Gamestate.PLATFORMSTATE) {
			platformState = new Game();
		}else if(currentGamestate == Gamestate.HIGHSCORESTATE) {
			highscoreState = new HIGHSCORES();
		}else {
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
					removeChild(pickingState);
				case PLATFORMSTATE: 
					removeChild(platformState);
				case HIGHSCORESTATE: 
					removeChild(highscoreState);
			}
			// After removing the previous state we can add the new state to the game.
			switch(currentGamestate){
				case STARTUP:
					//Don't put anything here, this is just for debugging.
				case MAINMENU:
					addChild(mainMenu);
				case PICKINGSTATE:
					addChild(pickingState);
				case PLATFORMSTATE:
					addChild(platformState);
				case HIGHSCORESTATE:
					addChild(highscoreState);
			}
			// Maiking sure that we set the lastGamestate is equal to currentGamestate so that you won't remove something that isn't there anymore
			lastGamestate = currentGamestate;
		}
	}
}