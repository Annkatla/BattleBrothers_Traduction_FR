local gt = this.getroottable();
gt.Const.FactionArchetypes <- [
	[
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Warmonger,
				this.Const.FactionTrait.ManOfThePeople
			],
			Description = "La maison %noblehousename% pivote autour d\'un culte religieux qui enseigne la compassion envers les siens mais qui les rend zélés et impitoyables envers leurs ennemis. Il y a des générations, une vaste invasion orque a pillé et détruit la plupart des biens de la famille, qui ne s\'en est jamais vraiment remise. Depuis lors, la maison a lancé de nombreuses croisades et expéditions punitives dans les terres orques, mais n\'a jamais réussi à chasser définitivement les peaux vertes.",
			Mottos = [
				"La vertu est l\'unique noblesse",
				"Pour la défense de ceux en détresse",
				"Zèle et honneur",
				"Noble en colère",
				"Purifiés par la flamme",
				"La paix s\'obtient par la guerre",
				"Tant que nous respirons, nous gardons espoir",
				"Audace et honneur",
				"Nous méprisons le changement ou la peur",
				"La victoire est dans la vérité",
				"Lumière dans les ténèbres",
				"Un cœur, une voie"
			]
		},
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Sheriff,
				this.Const.FactionTrait.ManOfThePeople
			],
			Description = "La maison %noblehousename% défend les principes de justice et d\'honneur, et sans règles irrationnelles, sa région a prospéré. Leur réputation peut être pacifique, mais les chevaliers de %noblehousename% sont aguerris au combat et leurs troupes combattent férocement toute personne menaçant leur domaine, leurs sujets ou leurs principes. De nombreux nobles envient leurs richesses et se moquent de leurs principes. La maison %othernoblehouse%, en particulier, garde une rancune plus ou moins ouverte contre ceux de %noblehousename%.",
			Mottos = [
				"Live that you may live",
				"Amitié sans tromperie",
				"Osez la sagesse",
				"Les braves font toujours preuve de compassion",
				"D\'un ami à un ami",
				"Cette main est hostile aux tyrans",
				"N\'agacez pas le lion",
				"Un chêne dans la force de l\'âge",
				"Avec cœur et main",
				"Toujours vigilants",
				"Gloire au père",
				"La vertu sous la force",
				"Préparé dans tous les cas",
				"Pas seulement pour nous"
			]
		},
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Sheriff,
				this.Const.FactionTrait.Collector
			],
			Description = "Wealth is sought by many, but the highly reputable traders of house %noblehousename% are the best when it comes to striking profitable bargains. Bound by ancestral ties to the renown of their forefathers they uphold honesty and integrity as their family values.",
			Mottos = [
				"Reason is the guide of life",
				"Firmly in act and gently in manner",
				"Let us be viewed by our actions",
				"Strive without reproach",
				"The sun rises after clouds",
				"Courage in difficulties",
				"Plenty is caused by dilligence"
			]
		}
	],
	[
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Warmonger,
				this.Const.FactionTrait.Tyrant
			],
			Description = "The noble house of %noblehousename% is a proud and unrelenting family with a long and bloodstained history of conquest. Seated in their fortress of %factionfortressname%, they take with arms what they consider theirs by right. An ancestral feud with house %othernoblehouse% provides never ending reasons to keep both hate in the hearts and ore smelters burning.",
			Mottos = [
				"He stands by his own powers",
				"He conquers who endures",
				"Boldly and rightly",
				"Under this sign thou shalt conquer",
				"He dies not whose fame survives",
				"No steps backwards",
				"Through arrows and enemies",
				"Nothing resists valour and arms",
				"Such is the way to immortality",
				"And we also have hurled our javelins",
				"The heron seeks high places"
			]
		},
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Warmonger,
				this.Const.FactionTrait.Marauder
			],
			Description = "Disdained for their ruthlessness, brutality and greed, house %noblehousename% has little interaction with other noble families. Their captains and soldiers are known for raiding trade caravans, outlying farms and small settlements from their fortress of %factionfortressname%. A life is not worth much in the realm of house %noblehousename% and many a mercenary on the look for a quick coin only found a quick end here.",
			Mottos = [
				"Whatever grows perishes in ashes",
				"We trample it under our feet",
				"For me and for mine",
				"The eagle catches not flies",
				"Deeds not words",
				"The gods feed the ravens",
				"Always thirsty",
				"Sons of hounds come here and get flesh",
				"Not without booty"
			]
		},
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Schemer,
				this.Const.FactionTrait.Tyrant
			],
			Description = "House %noblehousename% is hated by many but feared by even more. A number of small and big uprisings have been put down with fire and sword and the %noblehousename% henchmen are known to have eyes in every shady corner and ears in every wall. The family\'s ancestral home of %factionfortressname% is swarming with armed guards, sniffing wardogs and bulky mercenaries to protect their paranoid leaders.",
			Mottos = [
				"A knife in the dark",
				"Cutting causes growth",
				"Always ready",
				"The sentinel sleeps not",
				"Arms maintain peace",
				"Innocent as doves",
				"Firm of purpose",
				"Obey",
				"By laws and arms",
				"Learn to endure what must be borne",
				"The wrath of the lion is noble"
			]
		},
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Marauder,
				this.Const.FactionTrait.Tyrant
			],
			Description = "The house of %noblehousename% is well known for its lavish lifestyle and bacchanal festivities. The price has to be paid by someone, so half-starved cattle, empty granaries and desperate townsfolk are a common sight where house %noblehousename% rules. Although other noble houses may look down on such brutality and depletion they are at the same time desperately awaiting their invitation to the next feast.",
			Mottos = [
				"Unconquered",
				"Cruel rumor, be still",
				"I soar",
				"With good right",
				"I despise",
				"Sheep, ye bear the wool",
				"Spare not",
				"Profit is gained by danger",
				"Remember that thou must die"
			]
		}
	],
	[
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Schemer,
				this.Const.FactionTrait.Collector
			],
			Description = "Trading and haggling can be just as fierce as fighting a war, and the house of %noblehousename% is a true master of cunning bargains. Rumor has it that many a profitable deal made by house %noblehousename% is not only based on honest trading but also bribery, extortion and deception. The family resides in the pompous region capitol of %factionfortressname%, but despite their unmeasurable riches they are known to be notoriously close-fisted.",
			Mottos = [
				"To live without a wish concealed",
				"Fortune favours the bold",
				"The world does not suffice",
				"Separate the honest from the useful",
				"Our harvest will also arrive",
				"I gain by hazard"
			]
		},
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.ManOfThePeople,
				this.Const.FactionTrait.Collector
			],
			Description = "House %noblehousename% claims to have roots in the time when man first claimed this land, and the first king ruled all men. They are but one of many noble houses now, but proud of their long history and with ambitions to continue writing history. As their renown and their resources dwindle in the now, they are said to finance expeditions in an attempt to unearth long lost treasures from the past, in sunken cities and places long forgotten.",
			Mottos = [
				"He lives twice who lives well",
				"Wealth to him who knows how to use it",
				"Things locked up are safe",
				"Once and always",
				"Gauge and measure",
				"Safe on the waves",
				"Each his share",
				"With sail and oars",
				"Among the first"
			]
		},
		{
			Traits = [
				this.Const.FactionTrait.NobleHouse,
				this.Const.FactionTrait.Marauder,
				this.Const.FactionTrait.Schemer
			],
			Description = "Most members of the house of %noblehousename% live secluded behind thick doors and barred windows and some of them have not been seen for years. Rumor has it that their noble blood is plagued with madness and insanity but no ordinary man dares to utter such claims in fear of their vengeance. Other noble houses mainly avoid contact to house %noblehousename% as guests may be greeted with open arms as well as crossbow bolts.",
			Mottos = [
				"Nothing in life is permanent",
				"Consider the end",
				"We neither despise nor fear",
				"Judge not",
				"All things change",
				"Every man for himself",
				"All things are thus unstable",
				"Beware the wolf"
			]
		}
	]
];
gt.Const.CityStateArchetypes <- [
	{
		Traits = [
			this.Const.FactionTrait.OrientalCityState
		],
		Description = "A wealthy and independent city state focused mostly on trade and acquiring further wealth.",
		Mottos = [
			"He lives well who lives peacefully",
			"Wealth is my arrow",
			"Wealth is our sword",
			"Golden towers in the distance",
			"A gift returned",
			"One giveth, one taketh"
		]
	},
	{
		Traits = [
			this.Const.FactionTrait.OrientalCityState
		],
		Description = "A city state dedicated to acquiring knowledge above all - even if it comes at the cost of doing autopsies, reading forbidden tomes or engaging with sinister powers not of this world.",
		Mottos = [
			"Dare to be wise",
			"Wisdom the conqueror of fortune",
			"Read and learn",
			"The castle of wisdom",
			"Knowledge at last"
		]
	},
	{
		Traits = [
			this.Const.FactionTrait.OrientalCityState
		],
		Description = "A city state ruled by a ruthless council that is out to achieve power by all means. Many an untimely death is rumored to have been an assassination ordered by the viziers of %citystatename%.",
		Mottos = [
			"A snake in the grass",
			"From the shadows",
			"By all means",
			"The hawk catcheth not flies"
		]
	}
];

