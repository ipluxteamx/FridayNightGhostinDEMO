package states.fng;

import flixel.FlxG;
import flixel.FlxSprite;

class FNGMainMenuState extends MusicBeatState {
    var bg:FlxSprite;
    var modShit:FlxText;

    var menuItems:FlxTypedGroup<FlxSprite>;

    override function create() {
        bg = new FlxSprite(0, 0, "assets/images/fng/menu.png");
        super.create();
    }
}