package;

import openfl.Assets;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.events.MouseEvent;
import openfl.ui.Keyboard;
import openfl.Lib;

/**
 * 
 * @author Evan, Max, Mike, Robin, Sipan
 * 
 */

class MainMenu extends Sprite 
{	
	var switchGamestate:GameStates;
	public function new(){
		super();
		
		var bgdata:BitmapData = Assets.getBitmapData("img/bg.png");
		var bg:Bitmap = new Bitmap(bgdata);
		bg.width = 1500;
		bg.height = 900;
		addChild(bg);
		
		var press : Bitmap = new Bitmap(Assets.getBitmapData("img/menu/start.png" ));
		press.x = 315;
		press.y = 120;
		
		addEventListener( MouseEvent.CLICK, startScreen );
		addChild( press );
	}
	
	public function startScreen(event:MouseEvent)
	{
		removeChildren();
		var bgdata:BitmapData = Assets.getBitmapData("img/bg.png");
		var bg:Bitmap = new Bitmap(bgdata);
		bg.width = 1500;
		bg.height = 900;
		addChild(bg);
		removeEventListener( MouseEvent.CLICK, startScreen );
		var instructions : Bitmap = new Bitmap(Assets.getBitmapData("img/menu/instructions.png"));
		instructions.x = 150;
		addChild(instructions);
		switchGamestate = new GameStates();
		switchGamestate.changeGamestateToPlatformState();
	}
}