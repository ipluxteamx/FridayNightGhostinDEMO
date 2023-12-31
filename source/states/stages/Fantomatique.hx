package states.stages;

import states.stages.objects.*;

class Fantomatique extends BaseStage
{
	override function create()
	{
		var mountains:BGSprite = new BGSprite('fantomatique/my dingaling', -100, -100, 0.8, 0.8);
		mountains.scale.x *= 1.4;
		mountains.scale.y *= 1.4;
		add(mountains);

		var floor:BGSprite = new BGSprite('fantomatique/floor', -200, 300, 1, 1);
		floor.scale.x *= 1.3;
		floor.scale.y *= 1.3;
		add(floor);
	}
}