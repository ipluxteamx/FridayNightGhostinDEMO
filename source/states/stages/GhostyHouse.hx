package states.stages;

import states.stages.objects.*;

class GhostyHouse extends BaseStage
{
	override function create()
	{
		var bg:BGSprite = new BGSprite('ghosty_NEWhouse', -100, -150, 1, 1);
		bg.scale.x *= 2.8;
		bg.scale.y *= 2.8;
		add(bg);
	}
}