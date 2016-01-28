package;
import openfl.display.Sprite;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.events.MouseEvent;

/**
 * ...
 * @author Evan, Mike
 */
class Cards extends Sprite
{
	var value : Int;
	var imagepath:String;
	var backside : Bitmap;
	var card : Bitmap;

	public function new(value, imagepath) // This class is called with a value for the part number, as well as the path. There are individual folders for each part type.
	{
		super();
		
		var cardData1:BitmapData = Assets.getBitmapData(imagepath);
		var card1:Bitmap = new Bitmap(cardData1);
		addChild(card1);
	}
}