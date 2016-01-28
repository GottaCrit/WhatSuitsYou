package;
import openfl.text.TextField;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import openfl.text.TextFieldAutoSize;
import openfl.text.TextFormat;
import Random;

/**
 * ...
 * @author Evan, Mike
 */

class Deck extends Sprite
{
	var headDeck : Array<Cards> = new Array<Cards>();
	var armourDeck : Array<Cards> = new Array<Cards>();
	var engineDeck : Array<Cards> = new Array<Cards>();
	var weaponDeck : Array<Cards> = new Array<Cards>();
	var legDeck : Array<Cards> = new Array<Cards>();

	var displayFailure:TextField;
	var displayFailure2:TextField;
	var totalFailChance:TextField;
	
	var finalResult:TextField;
	
	var clickedHead:Cards;
	var clickedArmour:Cards;
	var clickedEngine:Cards;
	var clickedWeapon:Cards;
	var clickedLeg:Cards;
	
	var checkPoint1:Int;
	var checkPoint2:Int;
	var totalCheckPoint:Int;
	var totalFailurePercentOfBlowingUp:Int;
	
	var rounds:Int = 0;
	var score:Int;
	
	var clickedHeadFailChance:Int;
	var clickedArmourFailChance:Int;
	var clickedEngineFailChance:Int;
	var clickedWeaponFailChance:Int;
	var clickedLegFailChance:Int;
	
	var head:Bool = true;
	var armour:Bool = false;
	var engine:Bool = false;
	var weapon:Bool = false;
	var legs:Bool = false;
	
	
	public function new() 
	{
		super();
		createBG();
		addEventListener(MouseEvent.CLICK, clickedHeadCard);
		pickState();
	}	
	
	public function createBG()
	{
		var bgdata:BitmapData = Assets.getBitmapData("img/bg.png");
		var bg:Bitmap = new Bitmap(bgdata);
		bg.width = 1500;
		bg.height = 900;
		addChild(bg);
	}
	
	public function pickState()
	{
		if (head == true)
		{
			popHeadArray();
			displayHeadCards();
		}
		if (armour == true)
		{
			popArmourArray();
			displayArmourCards();
		}
		if (engine == true)
		{
			popEngineArray();
			displayEngineCards();
		}
		if (weapon == true)
		{
			popWeaponArray();
			displayWeaponCards();
		}
		if (legs == true)
		{
			popLegArray();
			displayLegCards();
		}
	}
	
	public function clickedHeadCard(event:MouseEvent)
	{
		head = false;
		clickedHead = event.target;
		removeChildren();
		createBG();
		addChild(clickedHead);
		clickedHead.x = 1100;
		clickedHead.y = 40;
		clickedHeadFailChance = Math.ceil(20 * Math.random());
		armour = true;
		pickState();
		removeEventListener(MouseEvent.CLICK, clickedHeadCard);
		addEventListener(MouseEvent.CLICK, clickedArmourCard);
	}
	
	public function popHeadArray()
	{
		var card:Cards;
		for ( value in 1...6) {
			var imagePath:String = "img/cards/head/Head" + value + ".png";		
			card = new Cards(value, imagePath);
			headDeck.push(card);
		}
		var k : Int = headDeck.length;
		for ( i in 0...k )
		{
			var change : Int = i + Math.floor( Math.random() * ( k - i) );
			var tempCard = headDeck[i];
			headDeck[i] = headDeck[change];
			headDeck[change] = tempCard;
		}
	}
	
	public function displayHeadCards()
	{
		var card:Cards;
		var x:Float = 40;
		var y:Float = 600;
		for (i in 1...4)	{
			card = headDeck.pop();
			card.x = x;
			card.y = y;
			card.width = card.width/1.7;
			card.height = card.height/1.7;
			x = x + card.width;
			addChild(card);
		}
	}
	
	public function clickedArmourCard(event:MouseEvent)
	{
		armour = false;
		clickedArmour = event.target;
		removeChildren();
		createBG();
		addChild(clickedHead);
		addChild(clickedArmour);
		clickedArmour.x = 1100;
		clickedArmour.y = 320;
		clickedArmourFailChance = Math.ceil(20 * Math.random());
		engine = true;
		pickState();
		removeEventListener(MouseEvent.CLICK, clickedArmourCard);
		addEventListener(MouseEvent.CLICK, clickedEngineCard);
	}	
	
	public function popArmourArray()
	{
		var card:Cards;
		for ( value in 1...7) {
			var imagePath:String = "img/cards/armour/Armour" + value + ".png";		
			card = new Cards(value, imagePath);
			armourDeck.push(card);
		}
		var k : Int = armourDeck.length;
		for ( i in 0...k )
		{
			var change : Int = i + Math.floor( Math.random() * ( k - i) );
			var tempCard = armourDeck[i];
			armourDeck[i] = armourDeck[change];
			armourDeck[change] = tempCard;
		}
	}
	
	public function displayArmourCards()
	{
		var card:Cards;
		var x:Float = 40;
		var y:Float = 600;
		for (i in 1...4)	{
			card = armourDeck.pop();
			card.x = x;
			card.y = y;
			card.width = card.width/1.7;
			card.height = card.height/1.7;
			x = x + card.width;
			addChild(card);
		}
	}
	
	public function clickedEngineCard(event:MouseEvent)
	{
		engine = false;
		clickedEngine = event.target;
		removeChildren();
		createBG();
		addChild(clickedHead);
		addChild(clickedArmour);
		addChild(clickedEngine);
		clickedEngine.x = 1100 - clickedEngine.width;
		clickedEngine.y = 320;
		clickedEngineFailChance = Math.ceil(20 * Math.random());
		weapon = true;
		pickState();
		removeEventListener(MouseEvent.CLICK, clickedEngineCard);
		addEventListener(MouseEvent.CLICK, clickedWeaponCard);
	}
	
	public function popEngineArray()
	{
		var card:Cards;
		for ( value in 1...6) {
			var imagePath:String = "img/cards/engine/Engine" + value + ".png";		
			card = new Cards(value, imagePath);
			engineDeck.push(card);
		}
		var k : Int = engineDeck.length;
		for ( i in 0...k )
		{
			var change : Int = i + Math.floor( Math.random() * ( k - i) );
			var tempCard = engineDeck[i];
			engineDeck[i] = engineDeck[change];
			engineDeck[change] = tempCard;
		}
	}
	
	public function displayEngineCards()
	{
		var card:Cards;
		var x:Float = 40;
		var y:Float = 600;
		for (i in 1...4)	{
			card = engineDeck.pop();
			card.x = x;
			card.y = y;
			card.width = card.width/1.7;
			card.height = card.height/1.7;
			x = x + card.width;
			addChild(card);
		}
	}
	
	public function clickedWeaponCard(event:MouseEvent)
	{
		weapon = false;
		clickedWeapon = event.target;
		removeChildren();
		createBG();
		addChild(clickedHead);
		addChild(clickedArmour);
		addChild(clickedEngine);
		addChild(clickedWeapon);
		clickedWeapon.x = 1100 + clickedWeapon.width;
		clickedWeapon.y = 320;
		clickedWeaponFailChance = Math.ceil(20 * Math.random());
		legs = true;
		pickState();
		removeEventListener(MouseEvent.CLICK, clickedWeaponCard);
		addEventListener(MouseEvent.CLICK, clickedLegCard);
	}
	
	public function popWeaponArray()
	{
		var card:Cards;
		for ( value in 1...6) {
			var imagePath:String = "img/cards/weapon/Weapon" + value + ".png";		
			card = new Cards(value, imagePath);
			weaponDeck.push(card);
		}
		var k : Int = weaponDeck.length;
		for ( i in 0...k )
		{
			var change : Int = i + Math.floor( Math.random() * ( k - i) );
			var tempCard = weaponDeck[i];
			weaponDeck[i] = weaponDeck[change];
			weaponDeck[change] = tempCard;
		}
	}
	
	public function displayWeaponCards()
	{
		var card:Cards;
		var x:Float = 40;
		var y:Float = 600;
		for (i in 1...4)	{
			card = weaponDeck.pop();
			card.x = x;
			card.y = y;
			card.width = card.width/1.7;
			card.height = card.height/1.7;
			x = x + card.width;
			addChild(card);
		}
	}
	
	public function clickedLegCard(event:MouseEvent)
	{
		legs = false;
		clickedLeg = event.target;
		removeChildren();
		createBG();
		addChild(clickedHead);
		addChild(clickedArmour);
		addChild(clickedEngine);
		addChild(clickedWeapon);
		addChild(clickedLeg);
		clickedLeg.x = 1100;
		clickedLeg.y = 600;
		clickedLegFailChance = Math.ceil(20 * Math.random());
		pickState();
		removeEventListener(MouseEvent.CLICK, clickedLegCard);
		totalFailure();
		
	}
	
	public function popLegArray()
	{
		var card:Cards;
		for ( value in 1...6) {
			var imagePath:String = "img/cards/legs/Leg" + value + ".png";		
			card = new Cards(value, imagePath);
			legDeck.push(card);
		}
		var k : Int = legDeck.length;
		for ( i in 0...k )
		{
			var change : Int = i + Math.floor( Math.random() * ( k - i) );
			var tempCard = legDeck[i];
			legDeck[i] = legDeck[change];
			legDeck[change] = tempCard;
		}
	}
	
	public function displayLegCards()
	{
		var card:Cards;
		var x:Float = 40;
		var y:Float = 600;
		for (i in 1...4)	{
			card = legDeck.pop();
			card.x = x;
			card.y = y;
			card.width = card.width/1.7;
			card.height = card.height/1.7;
			x = x + card.width;
			addChild(card);
		}
	}
	// createBG();
	public function totalFailure()
	{
		displayFailure = new TextField();
		displayFailure.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 18, 0x99FF66 );
		displayFailure.autoSize = TextFieldAutoSize.LEFT;
		displayFailure.x = 40;
		displayFailure.y = 120;
		displayFailure.text = "Head Failure Chance = " + clickedHeadFailChance + "%" + "\n" + 
		"Armour Failure Chance = " + clickedArmourFailChance + "%" + "\n" + 
		"Engine Failure Chance = " + clickedEngineFailChance + "%" + "\n";
		addChild(displayFailure);
		
		displayFailure2 = new TextField();
		displayFailure2.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 18, 0x99FF66 );
		displayFailure2.autoSize = TextFieldAutoSize.LEFT;
		displayFailure2.x = 40;
		displayFailure2.y = 180;
		displayFailure2.text = "Weapon Failure Chance = " + clickedWeaponFailChance + "%" + "\n" + 
		"Leg Failure Chance = " + clickedLegFailChance + "%" + "\n";
		addChild(displayFailure2);
		
		totalFailChance = new TextField();
		totalFailChance.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 18, 0x99FF66 );
		totalFailChance.autoSize = TextFieldAutoSize.LEFT;
		totalFailChance.x = 40;
		totalFailChance.y = 240;
		totalFailChance.text = "Total Failure Chance = " + (clickedHeadFailChance + clickedArmourFailChance + clickedEngineFailChance + clickedWeaponFailChance + clickedLegFailChance) + "%" ;
		addChild(totalFailChance);
		//rounds = 0;
		failureCheck();
	}
	
	public function failureCheck()
	{
		totalFailurePercentOfBlowingUp = clickedHeadFailChance + clickedArmourFailChance + clickedEngineFailChance + clickedWeaponFailChance + clickedLegFailChance;
		for (i in 1...11)
		{
			if (i == 10)
			{
				checkPoint1 = Math.ceil(50 * Math.random());
				checkPoint2 = Math.ceil(50 * Math.random());
				totalCheckPoint = checkPoint1 + checkPoint2;
				trace(totalCheckPoint);
				if (totalFailurePercentOfBlowingUp < totalCheckPoint)
				{
					rounds++;
					scoreCalc();
				}else {
					rounds++;
					failureCheck();					
				}
			}
		}
	}
	
	public function scoreCalc()
	{
		score = 0;
		if (totalFailurePercentOfBlowingUp <= 5) {
			score = 50 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 10)
		{
			score = 100 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 20)
		{
			score = 200 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 30)
		{
			score = 300 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 40)
		{
			score = 400 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 50)
		{
			score = 500 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 60)
		{
			score = 600 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 70)
		{
			score = 700 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 80)
		{
			score = 800 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 90)
		{
			score = 900 * rounds;
		}else if (totalFailurePercentOfBlowingUp <= 100)
		{
			score = 1000 * rounds;
		}
		results();

	}
	
	public function results()
	{
		finalResult = new TextField();
		finalResult.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 18, 0x99FF66 );
		finalResult.autoSize = TextFieldAutoSize.LEFT;
		finalResult.x = 40;
		finalResult.y = 320;
		finalResult.text = "Your total score = " + score + " and you survived " + rounds + " round(s) " + "\n" + "Thanks for playing!";
		addChild(finalResult);
	}
}