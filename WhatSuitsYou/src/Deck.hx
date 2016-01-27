package;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

/**
 * ...
 * @author RWH
 */

class Deck extends Sprite
{
	static var deck : Array<Cards> = new Array<Cards>();
	
	public function new() 
	{
		super();
		createArmour();
	}
	
	public function createArmour()
	{
		for ( value in 1...7)
		{	
			var imagePath:String = "img/cards/armour/armour" + value + ".png";				
			deck.push ( new Cards ( value, imagePath ) );
		}
	}
	
	
	public function dispense ():Cards
	{
		return deck.pop();
	}
}