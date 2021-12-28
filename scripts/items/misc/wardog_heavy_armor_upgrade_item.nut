this.wardog_heavy_armor_upgrade_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.m.ID = "misc.wardog_heavy_armor_upgrade";
		this.m.Name = "Armure lourde de chien de garde";
		this.m.Description = "Un manteau en cuir épais qui peut être enfilé par n\'importe quel chien de garde pour le protéger au combat.";
		this.m.Icon = "armor_upgrades/upgrade_20.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Usable;
		this.m.IsDroppedAsLoot = true;
		this.m.IsAllowedInBag = false;
		this.m.IsUsable = true;
		this.m.Value = 400;
	}

	function getTooltip()
	{
		local result = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			}
		];
		result.push({
			id = 66,
			type = "text",
			text = this.getValueString()
		});

		if (this.getIconLarge() != null)
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIconLarge(),
				isLarge = true
			});
		}
		else
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIcon()
			});
		}

		result.push({
			id = 65,
			type = "text",
			text = "Faites un clic droit ou faites glisser sur un chien de garde équipé par le personnage actuellement sélectionné pour l\'utiliser. Cet article sera consommé au cours du processus."
		});
		return result;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

	function onUse( _actor, _item = null )
	{
		local dog = _item == null ? _actor.getItems().getItemAtSlot(this.Const.ItemSlot.Accessory) : _item;

		if (dog == null || dog.getID() != "accessory.wardog" && dog.getID() != "accessory.armored_wardog" && dog.getID() != "accessory.warhound" && dog.getID() != "accessory.armored_warhound")
		{
			return false;
		}

		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
		local new_dog;

		if (dog.getID() == "accessory.wardog" || dog.getID() == "accessory.armored_wardog")
		{
			new_dog = this.new("scripts/items/accessory/heavily_armored_wardog_item");
		}
		else
		{
			new_dog = this.new("scripts/items/accessory/heavily_armored_warhound_item");
		}

		new_dog.setName(dog.getName());
		new_dog.setVariant(dog.getVariant());
		_actor.getItems().unequip(dog);
		_actor.getItems().equip(new_dog);
		return true;
	}

});

