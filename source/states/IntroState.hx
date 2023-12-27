package states;

#if !js
import sys.FileSystem;
#end
import backend.Paths;
import backend.MusicBeatState;

#if (hxCodec >= "3.0.0") import hxcodec.flixel.FlxVideo as VideoHandler;
#elseif (hxCodec >= "2.6.1") import hxcodec.VideoHandler as VideoHandler;
#elseif (hxCodec == "2.6.0") import VideoHandler;
#else import vlc.MP4Handler as VideoHandler; #end

class IntroState extends MusicBeatState
{
	public static var leftState:Bool = false;

    var ghostedTeamLogo:FlxSprite;
    var sound:FlxSound;
	var video:VideoHandler;
	var randomIntro:Int;
	var filepath:String;
	override function create()
	{
		super.create();

        /*ghostedTeamLogo = new FlxSprite(0, 0).loadGraphic(Paths.image('fng/intro/ghostedTeamLogo2x'));
        ghostedTeamLogo.scale.x = ghostedTeamLogo.scale.y = 0.7;
		ghostedTeamLogo.updateHitbox();
		ghostedTeamLogo.antialiasing = ClientPrefs.data.antialiasing;
        add(ghostedTeamLogo);

        sound = new FlxSound();
        sound.loadEmbedded(Paths.sound('fng/ghostedTeamIntro'), false, true, () -> {
            MusicBeatState.switchState(new TitleState());
            TitleState.introed = true;
        });
        sound.play();*/

		randomIntro = Math.floor(Math.random() * 1024);
		if(randomIntro == 15)
			filepath = Paths.video('fng/intro/rare');
		else
			filepath = Paths.video('fng/intro/ghostedTeamIntro');
		video = new VideoHandler();
		#if (hxCodec >= "3.0.0")
		// Recent versions
		video.play(filepath);
		video.onEndReached.add(function()
		{
			video.dispose();
			MusicBeatState.switchState(new TitleState());
			TitleState.introed = true;
			return;
		}, true);
		#else
		// Older versions
		video.playVideo(filepath);
		video.finishCallback = function()
		{
			MusicBeatState.switchState(new TitleState());
			TitleState.introed = true;
			return;
		}
		#end
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			if (controls.ACCEPT) {
				leftState = true;
				// CoolUtil.browserLoad("https://github.com/ShadowMario/FNF-PsychEngine/releases");
				video.dispose();
                MusicBeatState.switchState(new TitleState());
                TitleState.introed = true;
			}
		}
		super.update(elapsed);
	}
}
