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
 * @author RWH
 */
class Cards extends Sprite
{
	var value : Int;
	static var openCards : Int = 0;
	var backsideOfCard : Bitmap;

	public function new( value:Int, imagepath:String ) 
	{
		super();
		showCards;
		putBacksideOverCards;
		removeBackside;
		flipCards;
	}
	
	public function showCards()
	{
		var cardData : BitmapData;
		var card : Bitmap;
		
		cardData = Assets.getBitmapData("card example.png");
		card = new Bitmap ( cardData ) ;
		addChild(card);	
	}
	
	public function putBacksideOverCards()
	{
		var backsideData : BitmapData;
		backsideData = Assets.getBitmapData("xxx.png");
		backsideOfCard = new Bitmap (backsideData);
		addChild(backsideOfCard);
	}
	
	public function removeBackside(event : MouseEvent)
	{
		backsideOfCard.visible = false;
	}
	
	public function flipCards()
	{
		backsideOfCard.visible = true;
		openCards = 0;
	}
	
}