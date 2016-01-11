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

class Vector2D{
	public var X:Float;
	public var Y:Float;
   
	public function new(?x:Float,?y:Float){
		x=(x!=null)?x:0;
		y=(y!=null)?y:0;
		Set(x,y);
	}
	public function Set(x:Float,y:Float):Void{
		X=x;
		Y=y;
	}

	public function AddVector(v:Vector2D):Void{
		X+=v.X;
		Y+=v.Y;
	}
	public function MultiplyVector(s:Float):Vector2D{
		X*=s;
		Y*=s;
		return this;
	}
	static public var UP = new Vector2D(0,-1);
	static public var DOWN = new Vector2D(0,1);
	static public var LEFT = new Vector2D(-1,0);
	static public var RIGHT = new Vector2D(1,0);
}