package src;

/**
 * ...
 * @author Evan, Max, Mike, Robin, Sipan
 */
class HIGHSCORES
{
	// variable list of the highscores
	var Position1 = Int = 5;
	var Position2 = Int = 4;
	var Position3 = Int = 3;
	var Position4 = Int = 2;
	var Position5 = Int = 1;
	var PlayerScore = Int = 1;
	public function new() 
	{
		removeChildren();
		// creates a text field and prints player score
		{
			Score = new TextField();
			Score.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 24, 0x0FFFFF);
			Score.embedFonts = true;
			Score.autoSize = TextFieldAutoSize.LEFT;
			Score.multiline = false;
			Score.text = "Player:" + PlayerScore;
			Score.x = 100;
			addChild(Score);
		}
	}
	if (PlayerScore >= Position5 && PlayerScore < Position4)
	{
		//compares player score to highscore positions. a message is printed together with the score to indicate a highscore position
		Position5 = PlayerScore;
		Result = new TextField();
		Result.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 24, 0x0FFFFF);
		Result.embedFonts = true;
		Result.autoSize = TextFieldAutoSize.LEFT;
		Result.multiline = false;
		Result.text = "Congratulations, You are the 5th best!";
		Result.x = 100;
		Result.y = 50;
		addChild(Result);
	
	}
	if (PlayerScore >= Position4 && PlayerScore < Position3)
	{
		//compares player score to highscore positions
		Position5 = PlayerScore;
		Result = new TextField();
		Result.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 24, 0x0FFFFF);
		Result.embedFonts = true;
		Result.autoSize = TextFieldAutoSize.LEFT;
		Result.multiline = false;
		Result.text = "Congratulations, You are the 4th best!";
		Result.x = 100;
		Result.y = 100;
		addChild(Result);
	
	}
	if (PlayerScore >= Position3 && PlayerScore < Position2)
	{
		//compares player score to highscore positions
		Position5 = PlayerScore;
		Result = new TextField();
		Result.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 24, 0x0FFFFF);
		Result.embedFonts = true;
		Result.autoSize = TextFieldAutoSize.LEFT;
		Result.multiline = false;
		Result.text = "Congratulations, You are the 3rd best!";
		Result.x = 100;
		Result.y = 150;
		addChild(Result);
	
	}
	if (PlayerScore >= Position2 && PlayerScore < Position1)
	{
		//compares player score to highscore positions
		Position5 = PlayerScore;
		Result = new TextField();
		Result.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 24, 0x0FFFFF);
		Result.embedFonts = true;
		Result.autoSize = TextFieldAutoSize.LEFT;
		Result.multiline = false;
		Result.text = "Congratulations, You are the 2nd best!";
		Result.x = 100;
		Result.y = 200;
		addChild(Result);
	
	}
	
	if (PlayerScore >= Position1)
	{
		//compares player score to highscore positions
		Position5 = PlayerScore;
		Result = new TextField();
		Result.defaultTextFormat = new TextFormat(Assets.getFont("").fontName, 24, 0x0FFFFF);
		Result.embedFonts = true;
		Result.autoSize = TextFieldAutoSize.LEFT;
		Result.multiline = false;
		Result.text = "Congratulations, You are the best!";
		Result.x = 100;
		Result.y = 250;
		addChild(Result);
	
	}
	// prints the new list of highscores
}