package;

import openfl.Assets;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

import openfl.events.Event;
import openfl.events.KeyboardEvent;

import openfl.Lib; 

/**
 * 
 * @author Evan, Max, Mike, Robin, Sipan
 * 
 */

class SpecialPlayer extends Sprite
{
	public var speed:Vector2D = new Vector2D();
	public var accel:Vector2D = new Vector2D(); 
	
	public function new(){
		super();
		
		// Loading the player image
		var bitmapData = Assets.getBitmapData("img/player/body.png");
		var bitmap = new Bitmap (bitmapData);
		addChild(bitmap);
		// Setting the size of the player
		var width:Int = cast(bitmap.width);
		var height:Int = cast(bitmap.height);
		bitmap.x = width/2;
		bitmap.y = height/2;
	}
	
	public function HandelInput(ks:Map<String,Bool>){
		accel = new Vector2D();
		
		//({Vector2D.UP.MultiplyVector(.8));} <<< make a "brake" button aka lower velocity
		
		if(ks["W"] == true){accel.AddVector(Vector2D.UP);}
		if(ks["A"] == true){accel.AddVector(Vector2D.LEFT);}
		if(ks["S"] == true){accel.AddVector(Vector2D.DOWN);}
		if(ks["D"] == true){accel.AddVector(Vector2D.RIGHT);}
	}
	
	public function Update(){
		speed.AddVector(accel);
		speed.MultiplyVector(.92);
		this.x += speed.X;
		this.y += speed.Y;
	}
}