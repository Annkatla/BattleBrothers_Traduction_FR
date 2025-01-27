this.shieldwall <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.shieldwall";
		this.m.Name = "Mur de Bouclier";
		this.m.Description = "Le bouclier est levé dans une mesure de protection jusqu\'au prochain tour. Les alliés utilisant le mur de bouclier en étant côte à côte augmentent leurs protections en faisant chevaucher leurs boucliers.";
		this.m.Icon = "skills/active_15.png";
		this.m.IconDisabled = "skills/active_15_sw.png";
		this.m.Overlay = "active_15";
		this.m.SoundOnUse = [
			"sounds/combat/shieldwall_01.wav",
			"sounds/combat/shieldwall_02.wav",
			"sounds/combat/shieldwall_03.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.NonTargeted;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = false;
		this.m.IsStacking = false;
		this.m.IsAttack = false;
		this.m.ActionPointCost = 4;
		this.m.FatigueCost = 20;
		this.m.MinRange = 0;
		this.m.MaxRange = 0;
	}

	function getTooltip()
	{
		local p = this.getContainer().getActor().getCurrentProperties();
		local item = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Offhand);
		local mult = 1.0;

		if (this.getContainer().getActor().getCurrentProperties().IsSpecializedInShields)
		{
			mult = mult * 1.25;
		}

		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 3,
				type = "text",
				text = this.getCostString()
			},
			{
				id = 4,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "Octroie un bonus de [color=" + this.Const.UI.Color.PositiveValue + "]+" + this.Math.floor(item.getMeleeDefense() * mult) + "[/color] à la Défense de Mêlée pour un tour"
			},
			{
				id = 5,
				type = "text",
				icon = "ui/icons/ranged_defense.png",
				text = "Octroie un bonus de [color=" + this.Const.UI.Color.PositiveValue + "]+" + this.Math.floor(item.getRangedDefense() * mult) + "[/color] à la Défense à Distance pour un tour"
			},
			{
				id = 6,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "Octroie un bonus additionnel de [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] de Défense contre toutes les attaques pour chaque allié adjacent utilisant le Mur de Bouclier"
			}
		];
	}

	function isUsable()
	{
		return this.skill.isUsable() && !this.getContainer().hasSkill("effects.shieldwall");
	}

	function onVerifyTarget( _originTile, _targetTile )
	{
		return true;
	}

	function onUse( _user, _targetTile )
	{
		this.m.Container.add(this.new("scripts/skills/effects/shieldwall_effect"));

		if (!_user.isHiddenToPlayer())
		{
			this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(_user) + " uses Shieldwall");
		}

		return true;
		return false;
	}

	function onRemoved()
	{
		this.m.Container.removeByID("effects.shieldwall");
	}

});

