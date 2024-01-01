package states.stages;

import states.stages.objects.*;
import shaders.WiggleEffect;

class Fantomatique extends BaseStage
{
	var sky:BGSprite;
	override function create()
	{
		sky = new BGSprite('fantomatique/SKY', 0, 0, 0.5, 0.5);
		sky.scale.x *= 6;
		sky.scale.y *= 6;
		sky.alpha = 0.5;
		add(sky);

		var mountains:BGSprite = new BGSprite('fantomatique/my dingaling', -500, 100, 0.8, 0.8);
		mountains.scale.x *= 2.3;
		mountains.scale.y *= 2.3;
		mountains.alpha = 0.75;
		add(mountains);

		var floor:BGSprite = new BGSprite('fantomatique/floor', -250, 500, 1, 1);
		floor.scale.x *= 2.1;
		floor.scale.y *= 2.5;
		add(floor);
	}
}