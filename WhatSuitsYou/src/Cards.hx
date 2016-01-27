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

	public function new( value:Int, imagepath:String ) 
	{
		super();
		showCards;
		putBackside;
		removeBackside;
	}
	
	public function showCards() // Once the bottom 3 cards are randomized, place them, then using the function putBackside, the backside will cover the cards.
	{
		var cardData : BitmapData;
		var card : Bitmap;
		
		cardData = Assets.getBitmapData("(armor + random number).png");
		card = new Bitmap ( cardData ) ;
		addChild(card);	
	}
	
	public function putBackside() //Covers the cards wtih backside.png
	{
		var backsideData : BitmapData;
		backsideData = Assets.getBitmapData("img/card/cardback.png");
		backside = new Bitmap (backsideData);
		addChild(backside);
	}
	
	public function removeBackside(event : MouseEvent) //When the card is clicked, remove the backside, revealing the cards
	{
		backside.visible = false;
	}
	
}