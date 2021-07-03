package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

// author bbpanzu
// thank u bbpanzu, f sky mod

class EndingState extends FlxState
{

	var _susEnding:Bool = false;
	var _goodEnding:Bool = false;
	
	public function new(susEnding:Bool = true) 
	{
		super();
		_susEnding = susEnding;
		
	};

	override public function create():Void 
	{
		super.create();
		var end:FlxSprite = new FlxSprite(0, 0);
		if (_susEnding){
			end.loadGraphic(Paths.image("susending"));
			FlxG.sound.playMusic(Paths.music("susending"),1,false);
			FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
		}
		else
		{
			FlxG.switchState(new StoryMenuState());
		}
		add(end);
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
		
		
		new FlxTimer().start(30, endIt);
		
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.ENTER){
			endIt();
		}
		
	}
	
	
	public function endIt(e:FlxTimer=null){
		trace("ENDING");
		FlxG.switchState(new StoryMenuState());
	}
	
}