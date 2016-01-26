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

enum Gamestate{
	MainMenu;
	PickingState;
	PlatformState;
	Highscores;
}
 
class Main extends Sprite 
{
	var curretGamestate:Gamestate;
	var player:SpecialPlayer;
	var inputs:Map<String,Bool> = ["W"=>false,"A"=>false,"S"=>false,"D"=>false];
	
	public function new(){
		super();
		var press : Bitmap = new Bitmap(Assets.getBitmapData("img/start.png" ));
		press.x = 315;
		press.y = 120;
		
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
	}

	public function onKeyDown(e:KeyboardEvent):Void{
		if(e.keyCode == 87){inputs["W"] = true;}
		if(e.keyCode == 65){inputs["A"] = true;}
		if(e.keyCode == 83){inputs["S"] = true;}
		if(e.keyCode == 68){inputs["D"] = true;}
	}	
	
	public function update(e:Event):Void{
		player.HandelInput(inputs);
		player.Update();
	}
}