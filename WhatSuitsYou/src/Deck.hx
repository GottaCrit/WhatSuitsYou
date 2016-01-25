package;

/**
 * ...
 * @author RWH
 */
class Deck
{
	static var deck : Array<Cards> = new Array<Cards>();
	
	public function new() 
	{
		createDeck();
	}
	
	public function createDeck()
	{
		for ( value in 1...3)
		{	
			var imagePath:String = "img/cards/tester" + value + ".png";				
			deck.push ( new Cards ( value, imagePath ) );
		}
	}
	
	public function dispense ():Cards
	{
		return deck.pop();
	}
	
	//dispense
	//shuffle
}