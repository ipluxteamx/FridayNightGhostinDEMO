package states.stages;

import states.stages.objects.*;

class GhostyHouse extends BaseStage
{
	override function create()
	{
		var sky:BGSprite = new BGSprite('Gh_BG1', -100, -150, 0.5, 0.5);
		sky.scale.x *= 3;
		sky.scale.y *= 3;
		add(sky);

		var mountains:BGSprite = new BGSprite('GH_BG2', 0, -180, 0.8, 0.8);
		mountains.scale.x *= 2.8;
		mountains.scale.y *= 2.8;
		add(mountains);

		var house:BGSprite = new BGSprite('NEW_HOUSE', -600, -475, 1, 1);
		house.scale.x *= 1.6;
		house.scale.y *= 1.6;
		add(house);
	}
}