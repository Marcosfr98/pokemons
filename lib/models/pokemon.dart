class Pokemon {
  List<Abilities>? _abilities;
  int? _baseExperience;
  Cries? _cries;
  List<Forms>? _forms;
  List<GameIndices>? _gameIndices;
  int? _height;
  List<Items>? _heldItems;
  int? _id;
  bool? _isDefault;
  String? _locationAreaEncounters;
  List<Moves>? _moves;
  String? _name;
  int? _order;
  List<Abilities>? _pastAbilities;
  List<Types>? _pastTypes;
  Ability? _species;
  Sprites? _sprites;
  List<Stats>? _stats;
  List<Types>? _types;
  int? _weight;

  Pokemon({
    List<Abilities>? abilities,
    int? baseExperience,
    Cries? cries,
    List<Forms>? forms,
    List<GameIndices>? gameIndices,
    int? height,
    List<Items>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Moves>? moves,
    String? name,
    int? order,
    List<Abilities>? pastAbilities,
    List<Types>? pastTypes,
    Ability? species,
    Sprites? sprites,
    List<Stats>? stats,
    List<Types>? types,
    int? weight,
  }) {
    if (abilities != null) {
      this._abilities = abilities;
    }
    if (baseExperience != null) {
      this._baseExperience = baseExperience;
    }
    if (cries != null) {
      this._cries = cries;
    }
    if (forms != null) {
      this._forms = forms;
    }
    if (gameIndices != null) {
      this._gameIndices = gameIndices;
    }
    if (height != null) {
      this._height = height;
    }
    if (heldItems != null) {
      this._heldItems = heldItems;
    }
    if (id != null) {
      this._id = id;
    }
    if (isDefault != null) {
      this._isDefault = isDefault;
    }
    if (locationAreaEncounters != null) {
      this._locationAreaEncounters = locationAreaEncounters;
    }
    if (moves != null) {
      this._moves = moves;
    }
    if (name != null) {
      this._name = name;
    }
    if (order != null) {
      this._order = order;
    }
    if (pastAbilities != null) {
      this._pastAbilities = pastAbilities;
    }
    if (pastTypes != null) {
      this._pastTypes = pastTypes;
    }
    if (species != null) {
      this._species = species;
    }
    if (sprites != null) {
      this._sprites = sprites;
    }
    if (stats != null) {
      this._stats = stats;
    }
    if (types != null) {
      this._types = types;
    }
    if (weight != null) {
      this._weight = weight;
    }
  }

  List<Abilities>? get abilities => _abilities;
  set abilities(List<Abilities>? abilities) => _abilities = abilities;
  int? get baseExperience => _baseExperience;
  set baseExperience(int? baseExperience) => _baseExperience = baseExperience;
  Cries? get cries => _cries;
  set cries(Cries? cries) => _cries = cries;
  List<Forms>? get forms => _forms;
  set forms(List<Forms>? forms) => _forms = forms;
  List<GameIndices>? get gameIndices => _gameIndices;
  set gameIndices(List<GameIndices>? gameIndices) => _gameIndices = gameIndices;
  int? get height => _height;
  set height(int? height) => _height = height;
  List<Items>? get heldItems => _heldItems;
  set heldItems(List<Items>? heldItems) => _heldItems = heldItems;
  int? get id => _id;
  set id(int? id) => _id = id;
  bool? get isDefault => _isDefault;
  set isDefault(bool? isDefault) => _isDefault = isDefault;
  String? get locationAreaEncounters => _locationAreaEncounters;
  set locationAreaEncounters(String? locationAreaEncounters) =>
      _locationAreaEncounters = locationAreaEncounters;
  List<Moves>? get moves => _moves;
  set moves(List<Moves>? moves) => _moves = moves;
  String? get name => _name;
  set name(String? name) => _name = name;
  int? get order => _order;
  set order(int? order) => _order = order;
  List<Abilities>? get pastAbilities => _pastAbilities;
  set pastAbilities(List<Abilities>? pastAbilities) =>
      _pastAbilities = pastAbilities;
  List<Types>? get pastTypes => _pastTypes;
  set pastTypes(List<Types>? pastTypes) => _pastTypes = pastTypes;
  Ability? get species => _species;
  set species(Ability? species) => _species = species;
  Sprites? get sprites => _sprites;
  set sprites(Sprites? sprites) => _sprites = sprites;
  List<Stats>? get stats => _stats;
  set stats(List<Stats>? stats) => _stats = stats;
  List<Types>? get types => _types;
  set types(List<Types>? types) => _types = types;
  int? get weight => _weight;
  set weight(int? weight) => _weight = weight;

  Pokemon.fromJson(Map<String, dynamic> json) {
    if (json['abilities'] != null) {
      _abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        _abilities!.add(new Abilities.fromJson(v));
      });
    }
    _baseExperience = json['base_experience'];
    _cries = json['cries'] != null ? new Cries.fromJson(json['cries']) : null;
    if (json['forms'] != null) {
      _forms = <Forms>[];
      json['forms'].forEach((v) {
        _forms!.add(new Forms.fromJson(v));
      });
    }
    if (json['game_indices'] != null) {
      _gameIndices = <GameIndices>[];
      json['game_indices'].forEach((v) {
        _gameIndices!.add(new GameIndices.fromJson(v));
      });
    }
    _height = json['height'];
    if (json['held_items'] != null) {
      _heldItems = <Items>[];
      json['held_items'].forEach((v) {
        _heldItems!.add(new Items.fromJson(v));
      });
    }
    _id = json['id'];
    _isDefault = json['is_default'];
    _locationAreaEncounters = json['location_area_encounters'];
    if (json['moves'] != null) {
      _moves = <Moves>[];
      json['moves'].forEach((v) {
        _moves!.add(new Moves.fromJson(v));
      });
    }
    _name = json['name'];
    _order = json['order'];
    if (json['past_abilities'] != null) {
      _pastAbilities = <Abilities>[];
      json['past_abilities'].forEach((v) {
        _pastAbilities!.add(new Abilities.fromJson(v));
      });
    }
    if (json['past_types'] != null) {
      _pastTypes = <Types>[];
      json['past_types'].forEach((v) {
        _pastTypes!.add(new Types.fromJson(v));
      });
    }
    _species =
        json['species'] != null ? new Ability.fromJson(json['species']) : null;
    _sprites =
        json['sprites'] != null ? new Sprites.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      _stats = <Stats>[];
      json['stats'].forEach((v) {
        _stats!.add(new Stats.fromJson(v));
      });
    }
    if (json['types'] != null) {
      _types = <Types>[];
      json['types'].forEach((v) {
        _types!.add(new Types.fromJson(v));
      });
    }
    _weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._abilities != null) {
      data['abilities'] = this._abilities!.map((v) => v.toJson()).toList();
    }
    data['base_experience'] = this._baseExperience;
    if (this._cries != null) {
      data['cries'] = this._cries!.toJson();
    }
    if (this._forms != null) {
      data['forms'] = this._forms!.map((v) => v.toJson()).toList();
    }
    if (this._gameIndices != null) {
      data['game_indices'] = this._gameIndices!.map((v) => v.toJson()).toList();
    }
    data['height'] = this._height;
    if (this._heldItems != null) {
      data['held_items'] = this._heldItems!.map((v) => v.toJson()).toList();
    }
    data['id'] = this._id;
    data['is_default'] = this._isDefault;
    data['location_area_encounters'] = this._locationAreaEncounters;
    if (this._moves != null) {
      data['moves'] = this._moves!.map((v) => v.toJson()).toList();
    }
    data['name'] = this._name;
    data['order'] = this._order;
    if (this._pastAbilities != null) {
      data['past_abilities'] =
          this._pastAbilities!.map((v) => v.toJson()).toList();
    }
    if (this._pastTypes != null) {
      data['past_types'] = this._pastTypes!.map((v) => v.toJson()).toList();
    }
    if (this._species != null) {
      data['species'] = this._species!.toJson();
    }
    if (this._sprites != null) {
      data['sprites'] = this._sprites!.toJson();
    }
    if (this._stats != null) {
      data['stats'] = this._stats!.map((v) => v.toJson()).toList();
    }
    if (this._types != null) {
      data['types'] = this._types!.map((v) => v.toJson()).toList();
    }
    data['weight'] = this._weight;
    return data;
  }
}

class Abilities {
  Ability? _ability;
  bool? _isHidden;
  int? _slot;

  Abilities({Ability? ability, bool? isHidden, int? slot}) {
    if (ability != null) {
      this._ability = ability;
    }
    if (isHidden != null) {
      this._isHidden = isHidden;
    }
    if (slot != null) {
      this._slot = slot;
    }
  }

  Ability? get ability => _ability;
  set ability(Ability? ability) => _ability = ability;
  bool? get isHidden => _isHidden;
  set isHidden(bool? isHidden) => _isHidden = isHidden;
  int? get slot => _slot;
  set slot(int? slot) => _slot = slot;

  Abilities.fromJson(Map<String, dynamic> json) {
    _ability =
        json['ability'] != null ? new Ability.fromJson(json['ability']) : null;
    _isHidden = json['is_hidden'];
    _slot = json['slot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._ability != null) {
      data['ability'] = this._ability!.toJson();
    }
    data['is_hidden'] = this._isHidden;
    data['slot'] = this._slot;
    return data;
  }
}

class Items {
  String? name;
  Items({this.name});
  Items.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      this.name = json["name"] ?? "";
    }
  }
  Map<String, dynamic> toJson() {
    return {"name": this.name};
  }
}

class Ability {
  String? _name;
  String? _url;

  Ability({String? name, String? url}) {
    if (name != null) {
      this._name = name;
    }
    if (url != null) {
      this._url = url;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  String? get url => _url;
  set url(String? url) => _url = url;

  Ability.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['url'] = this._url;
    return data;
  }
}

class Cries {
  String? _latest;
  String? _legacy;

  Cries({String? latest, String? legacy}) {
    if (latest != null) {
      this._latest = latest;
    }
    if (legacy != null) {
      this._legacy = legacy;
    }
  }

  String? get latest => _latest;
  set latest(String? latest) => _latest = latest;
  String? get legacy => _legacy;
  set legacy(String? legacy) => _legacy = legacy;

  Cries.fromJson(Map<String, dynamic> json) {
    _latest = json['latest'];
    _legacy = json['legacy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latest'] = this._latest;
    data['legacy'] = this._legacy;
    return data;
  }
}

class GameIndices {
  int? _gameIndex;
  Ability? _version;

  GameIndices({int? gameIndex, Ability? version}) {
    if (gameIndex != null) {
      this._gameIndex = gameIndex;
    }
    if (version != null) {
      this._version = version;
    }
  }

  int? get gameIndex => _gameIndex;
  set gameIndex(int? gameIndex) => _gameIndex = gameIndex;
  Ability? get version => _version;
  set version(Ability? version) => _version = version;

  GameIndices.fromJson(Map<String, dynamic> json) {
    _gameIndex = json['game_index'];
    _version =
        json['version'] != null ? new Ability.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['game_index'] = this._gameIndex;
    if (this._version != null) {
      data['version'] = this._version!.toJson();
    }
    return data;
  }
}

class Forms {
  String? name;
  Forms({this.name});
  Forms.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      name = json["nome"] ?? "";
    }
  }
  Map<String, dynamic> toJson() {
    return {"name": this.name};
  }
}

class Moves {
  Ability? _move;
  List<VersionGroupDetails>? _versionGroupDetails;

  Moves({Ability? move, List<VersionGroupDetails>? versionGroupDetails}) {
    if (move != null) {
      this._move = move;
    }
    if (versionGroupDetails != null) {
      this._versionGroupDetails = versionGroupDetails;
    }
  }

  Ability? get move => _move;
  set move(Ability? move) => _move = move;
  List<VersionGroupDetails>? get versionGroupDetails => _versionGroupDetails;
  set versionGroupDetails(List<VersionGroupDetails>? versionGroupDetails) =>
      _versionGroupDetails = versionGroupDetails;

  Moves.fromJson(Map<String, dynamic> json) {
    _move = json['move'] != null ? new Ability.fromJson(json['move']) : null;
    if (json['version_group_details'] != null) {
      _versionGroupDetails = <VersionGroupDetails>[];
      json['version_group_details'].forEach((v) {
        _versionGroupDetails!.add(new VersionGroupDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._move != null) {
      data['move'] = this._move!.toJson();
    }
    if (this._versionGroupDetails != null) {
      data['version_group_details'] =
          this._versionGroupDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VersionGroupDetails {
  int? _levelLearnedAt;
  Ability? _moveLearnMethod;
  Ability? _versionGroup;

  VersionGroupDetails({
    int? levelLearnedAt,
    Ability? moveLearnMethod,
    Ability? versionGroup,
  }) {
    if (levelLearnedAt != null) {
      this._levelLearnedAt = levelLearnedAt;
    }
    if (moveLearnMethod != null) {
      this._moveLearnMethod = moveLearnMethod;
    }
    if (versionGroup != null) {
      this._versionGroup = versionGroup;
    }
  }

  int? get levelLearnedAt => _levelLearnedAt;
  set levelLearnedAt(int? levelLearnedAt) => _levelLearnedAt = levelLearnedAt;
  Ability? get moveLearnMethod => _moveLearnMethod;
  set moveLearnMethod(Ability? moveLearnMethod) =>
      _moveLearnMethod = moveLearnMethod;
  Ability? get versionGroup => _versionGroup;
  set versionGroup(Ability? versionGroup) => _versionGroup = versionGroup;

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    _levelLearnedAt = json['level_learned_at'];
    _moveLearnMethod =
        json['move_learn_method'] != null
            ? new Ability.fromJson(json['move_learn_method'])
            : null;
    _versionGroup =
        json['version_group'] != null
            ? new Ability.fromJson(json['version_group'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['level_learned_at'] = this._levelLearnedAt;
    if (this._moveLearnMethod != null) {
      data['move_learn_method'] = this._moveLearnMethod!.toJson();
    }
    if (this._versionGroup != null) {
      data['version_group'] = this._versionGroup!.toJson();
    }
    return data;
  }
}

class Sprites {
  String? _backDefault;
  String? _backFemale;
  String? _backShiny;
  String? _backShinyFemale;
  String? _frontDefault;
  String? _frontFemale;
  String? _frontShiny;
  String? _frontShinyFemale;
  Other? _other;
  Versions? _versions;

  Sprites({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
    Other? other,
    Versions? versions,
  }) {
    if (backDefault != null) {
      this._backDefault = backDefault;
    }
    this._backFemale = backFemale;
    if (backShiny != null) {
      this._backShiny = backShiny;
    }
    this._backShinyFemale = backShinyFemale;
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    this._frontFemale = frontFemale;
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
    this._frontShinyFemale = frontShinyFemale;
    if (other != null) {
      this._other = other;
    }
    if (versions != null) {
      this._versions = versions;
    }
  }

  String? get backDefault => _backDefault;
  set backDefault(String? backDefault) => _backDefault = backDefault;
  String? get backFemale => _backFemale;
  set backFemale(String? backFemale) => _backFemale = backFemale;
  String? get backShiny => _backShiny;
  set backShiny(String? backShiny) => _backShiny = backShiny;
  String? get backShinyFemale => _backShinyFemale;
  set backShinyFemale(String? backShinyFemale) =>
      _backShinyFemale = backShinyFemale;
  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontFemale => _frontFemale;
  set frontFemale(String? frontFemale) => _frontFemale = frontFemale;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;
  String? get frontShinyFemale => _frontShinyFemale;
  set frontShinyFemale(String? frontShinyFemale) =>
      _frontShinyFemale = frontShinyFemale;
  Other? get other => _other;
  set other(Other? other) => _other = other;
  Versions? get versions => _versions;
  set versions(Versions? versions) => _versions = versions;

  Sprites.fromJson(Map<String, dynamic> json) {
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
    _other = json['other'] != null ? new Other.fromJson(json['other']) : null;
    _versions =
        json['versions'] != null
            ? new Versions.fromJson(json['versions'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this._backDefault;
    data['back_female'] = this._backFemale;
    data['back_shiny'] = this._backShiny;
    data['back_shiny_female'] = this._backShinyFemale;
    data['front_default'] = this._frontDefault;
    data['front_female'] = this._frontFemale;
    data['front_shiny'] = this._frontShiny;
    data['front_shiny_female'] = this._frontShinyFemale;
    if (this._other != null) {
      data['other'] = this._other!.toJson();
    }
    if (this._versions != null) {
      data['versions'] = this._versions!.toJson();
    }
    return data;
  }
}

class Other {
  DreamWorld? _dreamWorld;
  Home? _home;
  OfficialArtwork? _officialArtwork;
  Showdown? _showdown;

  Other({
    DreamWorld? dreamWorld,
    Home? home,
    OfficialArtwork? officialArtwork,
    Showdown? showdown,
  }) {
    if (dreamWorld != null) {
      this._dreamWorld = dreamWorld;
    }
    if (home != null) {
      this._home = home;
    }
    if (officialArtwork != null) {
      this._officialArtwork = officialArtwork;
    }
    if (showdown != null) {
      this._showdown = showdown;
    }
  }

  DreamWorld? get dreamWorld => _dreamWorld;
  set dreamWorld(DreamWorld? dreamWorld) => _dreamWorld = dreamWorld;
  Home? get home => _home;
  set home(Home? home) => _home = home;
  OfficialArtwork? get officialArtwork => _officialArtwork;
  set officialArtwork(OfficialArtwork? officialArtwork) =>
      _officialArtwork = officialArtwork;
  Showdown? get showdown => _showdown;
  set showdown(Showdown? showdown) => _showdown = showdown;

  Other.fromJson(Map<String, dynamic> json) {
    _dreamWorld =
        json['dream_world'] != null
            ? new DreamWorld.fromJson(json['dream_world'])
            : null;
    _home = json['home'] != null ? new Home.fromJson(json['home']) : null;
    _officialArtwork =
        json['official-artwork'] != null
            ? new OfficialArtwork.fromJson(json['official-artwork'])
            : null;
    _showdown =
        json['showdown'] != null
            ? new Showdown.fromJson(json['showdown'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._dreamWorld != null) {
      data['dream_world'] = this._dreamWorld!.toJson();
    }
    if (this._home != null) {
      data['home'] = this._home!.toJson();
    }
    if (this._officialArtwork != null) {
      data['official-artwork'] = this._officialArtwork!.toJson();
    }
    if (this._showdown != null) {
      data['showdown'] = this._showdown!.toJson();
    }
    return data;
  }
}

class DreamWorld {
  String? _frontDefault;
  String? _frontFemale;

  DreamWorld({String? frontDefault, String? frontFemale}) {
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    this._frontFemale = frontFemale;
  }

  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontFemale => _frontFemale;
  set frontFemale(String? frontFemale) => _frontFemale = frontFemale;

  DreamWorld.fromJson(Map<String, dynamic> json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this._frontDefault;
    data['front_female'] = this._frontFemale;
    return data;
  }
}

class Home {
  String? _frontDefault;
  String? _frontFemale;
  String? _frontShiny;
  String? _frontShinyFemale;

  Home({
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    this._frontFemale = frontFemale;
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
    this._frontShinyFemale = frontShinyFemale;
  }

  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontFemale => _frontFemale;
  set frontFemale(String? frontFemale) => _frontFemale = frontFemale;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;
  String? get frontShinyFemale => _frontShinyFemale;
  set frontShinyFemale(String? frontShinyFemale) =>
      _frontShinyFemale = frontShinyFemale;

  Home.fromJson(Map<String, dynamic> json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this._frontDefault;
    data['front_female'] = this._frontFemale;
    data['front_shiny'] = this._frontShiny;
    data['front_shiny_female'] = this._frontShinyFemale;
    return data;
  }
}

class OfficialArtwork {
  String? _frontDefault;
  String? _frontShiny;

  OfficialArtwork({String? frontDefault, String? frontShiny}) {
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
  }

  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;

  OfficialArtwork.fromJson(Map<String, dynamic> json) {
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this._frontDefault;
    data['front_shiny'] = this._frontShiny;
    return data;
  }
}

class Showdown {
  String? _backDefault;
  String? _backFemale;
  String? _backShiny;
  String? _backShinyFemale;
  String? _frontDefault;
  String? _frontFemale;
  String? _frontShiny;
  String? _frontShinyFemale;

  Showdown({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    if (backDefault != null) {
      this._backDefault = backDefault;
    }
    this._backFemale = backFemale;
    if (backShiny != null) {
      this._backShiny = backShiny;
    }
    this._backShinyFemale = backShinyFemale;
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    this._frontFemale = frontFemale;
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
    this._frontShinyFemale = frontShinyFemale;
  }

  String? get backDefault => _backDefault;
  set backDefault(String? backDefault) => _backDefault = backDefault;
  String? get backFemale => _backFemale;
  set backFemale(String? backFemale) => _backFemale = backFemale;
  String? get backShiny => _backShiny;
  set backShiny(String? backShiny) => _backShiny = backShiny;
  String? get backShinyFemale => _backShinyFemale;
  set backShinyFemale(String? backShinyFemale) =>
      _backShinyFemale = backShinyFemale;
  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontFemale => _frontFemale;
  set frontFemale(String? frontFemale) => _frontFemale = frontFemale;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;
  String? get frontShinyFemale => _frontShinyFemale;
  set frontShinyFemale(String? frontShinyFemale) =>
      _frontShinyFemale = frontShinyFemale;

  Showdown.fromJson(Map<String, dynamic> json) {
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this._backDefault;
    data['back_female'] = this._backFemale;
    data['back_shiny'] = this._backShiny;
    data['back_shiny_female'] = this._backShinyFemale;
    data['front_default'] = this._frontDefault;
    data['front_female'] = this._frontFemale;
    data['front_shiny'] = this._frontShiny;
    data['front_shiny_female'] = this._frontShinyFemale;
    return data;
  }
}

class Versions {
  GenerationI? _generationI;
  GenerationIi? _generationIi;
  GenerationIii? _generationIii;
  GenerationIv? _generationIv;
  GenerationV? _generationV;
  GenerationVi? _generationVi;
  GenerationVii? _generationVii;
  GenerationViii? _generationViii;

  Versions({
    GenerationI? generationI,
    GenerationIi? generationIi,
    GenerationIii? generationIii,
    GenerationIv? generationIv,
    GenerationV? generationV,
    GenerationVi? generationVi,
    GenerationVii? generationVii,
    GenerationViii? generationViii,
  }) {
    if (generationI != null) {
      this._generationI = generationI;
    }
    if (generationIi != null) {
      this._generationIi = generationIi;
    }
    if (generationIii != null) {
      this._generationIii = generationIii;
    }
    if (generationIv != null) {
      this._generationIv = generationIv;
    }
    if (generationV != null) {
      this._generationV = generationV;
    }
    if (generationVi != null) {
      this._generationVi = generationVi;
    }
    if (generationVii != null) {
      this._generationVii = generationVii;
    }
    if (generationViii != null) {
      this._generationViii = generationViii;
    }
  }

  GenerationI? get generationI => _generationI;
  set generationI(GenerationI? generationI) => _generationI = generationI;
  GenerationIi? get generationIi => _generationIi;
  set generationIi(GenerationIi? generationIi) => _generationIi = generationIi;
  GenerationIii? get generationIii => _generationIii;
  set generationIii(GenerationIii? generationIii) =>
      _generationIii = generationIii;
  GenerationIv? get generationIv => _generationIv;
  set generationIv(GenerationIv? generationIv) => _generationIv = generationIv;
  GenerationV? get generationV => _generationV;
  set generationV(GenerationV? generationV) => _generationV = generationV;
  GenerationVi? get generationVi => _generationVi;
  set generationVi(GenerationVi? generationVi) => _generationVi = generationVi;
  GenerationVii? get generationVii => _generationVii;
  set generationVii(GenerationVii? generationVii) =>
      _generationVii = generationVii;
  GenerationViii? get generationViii => _generationViii;
  set generationViii(GenerationViii? generationViii) =>
      _generationViii = generationViii;

  Versions.fromJson(Map<String, dynamic> json) {
    _generationI =
        json['generation-i'] != null
            ? new GenerationI.fromJson(json['generation-i'])
            : null;
    _generationIi =
        json['generation-ii'] != null
            ? new GenerationIi.fromJson(json['generation-ii'])
            : null;
    _generationIii =
        json['generation-iii'] != null
            ? new GenerationIii.fromJson(json['generation-iii'])
            : null;
    _generationIv =
        json['generation-iv'] != null
            ? new GenerationIv.fromJson(json['generation-iv'])
            : null;
    _generationV =
        json['generation-v'] != null
            ? new GenerationV.fromJson(json['generation-v'])
            : null;
    _generationVi =
        json['generation-vi'] != null
            ? new GenerationVi.fromJson(json['generation-vi'])
            : null;
    _generationVii =
        json['generation-vii'] != null
            ? new GenerationVii.fromJson(json['generation-vii'])
            : null;
    _generationViii =
        json['generation-viii'] != null
            ? new GenerationViii.fromJson(json['generation-viii'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._generationI != null) {
      data['generation-i'] = this._generationI!.toJson();
    }
    if (this._generationIi != null) {
      data['generation-ii'] = this._generationIi!.toJson();
    }
    if (this._generationIii != null) {
      data['generation-iii'] = this._generationIii!.toJson();
    }
    if (this._generationIv != null) {
      data['generation-iv'] = this._generationIv!.toJson();
    }
    if (this._generationV != null) {
      data['generation-v'] = this._generationV!.toJson();
    }
    if (this._generationVi != null) {
      data['generation-vi'] = this._generationVi!.toJson();
    }
    if (this._generationVii != null) {
      data['generation-vii'] = this._generationVii!.toJson();
    }
    if (this._generationViii != null) {
      data['generation-viii'] = this._generationViii!.toJson();
    }
    return data;
  }
}

class GenerationI {
  RedBlue? _redBlue;
  RedBlue? _yellow;

  GenerationI({RedBlue? redBlue, RedBlue? yellow}) {
    if (redBlue != null) {
      this._redBlue = redBlue;
    }
    if (yellow != null) {
      this._yellow = yellow;
    }
  }

  RedBlue? get redBlue => _redBlue;
  set redBlue(RedBlue? redBlue) => _redBlue = redBlue;
  RedBlue? get yellow => _yellow;
  set yellow(RedBlue? yellow) => _yellow = yellow;

  GenerationI.fromJson(Map<String, dynamic> json) {
    _redBlue =
        json['red-blue'] != null
            ? new RedBlue.fromJson(json['red-blue'])
            : null;
    _yellow =
        json['yellow'] != null ? new RedBlue.fromJson(json['yellow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._redBlue != null) {
      data['red-blue'] = this._redBlue!.toJson();
    }
    if (this._yellow != null) {
      data['yellow'] = this._yellow!.toJson();
    }
    return data;
  }
}

class RedBlue {
  String? _backDefault;
  String? _backGray;
  String? _backTransparent;
  String? _frontDefault;
  String? _frontGray;
  String? _frontTransparent;

  RedBlue({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) {
    if (backDefault != null) {
      this._backDefault = backDefault;
    }
    if (backGray != null) {
      this._backGray = backGray;
    }
    if (backTransparent != null) {
      this._backTransparent = backTransparent;
    }
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    if (frontGray != null) {
      this._frontGray = frontGray;
    }
    if (frontTransparent != null) {
      this._frontTransparent = frontTransparent;
    }
  }

  String? get backDefault => _backDefault;
  set backDefault(String? backDefault) => _backDefault = backDefault;
  String? get backGray => _backGray;
  set backGray(String? backGray) => _backGray = backGray;
  String? get backTransparent => _backTransparent;
  set backTransparent(String? backTransparent) =>
      _backTransparent = backTransparent;
  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontGray => _frontGray;
  set frontGray(String? frontGray) => _frontGray = frontGray;
  String? get frontTransparent => _frontTransparent;
  set frontTransparent(String? frontTransparent) =>
      _frontTransparent = frontTransparent;

  RedBlue.fromJson(Map<String, dynamic> json) {
    _backDefault = json['back_default'];
    _backGray = json['back_gray'];
    _backTransparent = json['back_transparent'];
    _frontDefault = json['front_default'];
    _frontGray = json['front_gray'];
    _frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this._backDefault;
    data['back_gray'] = this._backGray;
    data['back_transparent'] = this._backTransparent;
    data['front_default'] = this._frontDefault;
    data['front_gray'] = this._frontGray;
    data['front_transparent'] = this._frontTransparent;
    return data;
  }
}

class GenerationIi {
  Crystal? _crystal;
  Gold? _gold;
  Gold? _silver;

  GenerationIi({Crystal? crystal, Gold? gold, Gold? silver}) {
    if (crystal != null) {
      this._crystal = crystal;
    }
    if (gold != null) {
      this._gold = gold;
    }
    if (silver != null) {
      this._silver = silver;
    }
  }

  Crystal? get crystal => _crystal;
  set crystal(Crystal? crystal) => _crystal = crystal;
  Gold? get gold => _gold;
  set gold(Gold? gold) => _gold = gold;
  Gold? get silver => _silver;
  set silver(Gold? silver) => _silver = silver;

  GenerationIi.fromJson(Map<String, dynamic> json) {
    _crystal =
        json['crystal'] != null ? new Crystal.fromJson(json['crystal']) : null;
    _gold = json['gold'] != null ? new Gold.fromJson(json['gold']) : null;
    _silver = json['silver'] != null ? new Gold.fromJson(json['silver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._crystal != null) {
      data['crystal'] = this._crystal!.toJson();
    }
    if (this._gold != null) {
      data['gold'] = this._gold!.toJson();
    }
    if (this._silver != null) {
      data['silver'] = this._silver!.toJson();
    }
    return data;
  }
}

class Crystal {
  String? _backDefault;
  String? _backShiny;
  String? _backShinyTransparent;
  String? _backTransparent;
  String? _frontDefault;
  String? _frontShiny;
  String? _frontShinyTransparent;
  String? _frontTransparent;

  Crystal({
    String? backDefault,
    String? backShiny,
    String? backShinyTransparent,
    String? backTransparent,
    String? frontDefault,
    String? frontShiny,
    String? frontShinyTransparent,
    String? frontTransparent,
  }) {
    if (backDefault != null) {
      this._backDefault = backDefault;
    }
    if (backShiny != null) {
      this._backShiny = backShiny;
    }
    if (backShinyTransparent != null) {
      this._backShinyTransparent = backShinyTransparent;
    }
    if (backTransparent != null) {
      this._backTransparent = backTransparent;
    }
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
    if (frontShinyTransparent != null) {
      this._frontShinyTransparent = frontShinyTransparent;
    }
    if (frontTransparent != null) {
      this._frontTransparent = frontTransparent;
    }
  }

  String? get backDefault => _backDefault;
  set backDefault(String? backDefault) => _backDefault = backDefault;
  String? get backShiny => _backShiny;
  set backShiny(String? backShiny) => _backShiny = backShiny;
  String? get backShinyTransparent => _backShinyTransparent;
  set backShinyTransparent(String? backShinyTransparent) =>
      _backShinyTransparent = backShinyTransparent;
  String? get backTransparent => _backTransparent;
  set backTransparent(String? backTransparent) =>
      _backTransparent = backTransparent;
  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;
  String? get frontShinyTransparent => _frontShinyTransparent;
  set frontShinyTransparent(String? frontShinyTransparent) =>
      _frontShinyTransparent = frontShinyTransparent;
  String? get frontTransparent => _frontTransparent;
  set frontTransparent(String? frontTransparent) =>
      _frontTransparent = frontTransparent;

  Crystal.fromJson(Map<String, dynamic> json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _backShinyTransparent = json['back_shiny_transparent'];
    _backTransparent = json['back_transparent'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
    _frontShinyTransparent = json['front_shiny_transparent'];
    _frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this._backDefault;
    data['back_shiny'] = this._backShiny;
    data['back_shiny_transparent'] = this._backShinyTransparent;
    data['back_transparent'] = this._backTransparent;
    data['front_default'] = this._frontDefault;
    data['front_shiny'] = this._frontShiny;
    data['front_shiny_transparent'] = this._frontShinyTransparent;
    data['front_transparent'] = this._frontTransparent;
    return data;
  }
}

class Gold {
  String? _backDefault;
  String? _backShiny;
  String? _frontDefault;
  String? _frontShiny;
  String? _frontTransparent;

  Gold({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) {
    if (backDefault != null) {
      this._backDefault = backDefault;
    }
    if (backShiny != null) {
      this._backShiny = backShiny;
    }
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
    if (frontTransparent != null) {
      this._frontTransparent = frontTransparent;
    }
  }

  String? get backDefault => _backDefault;
  set backDefault(String? backDefault) => _backDefault = backDefault;
  String? get backShiny => _backShiny;
  set backShiny(String? backShiny) => _backShiny = backShiny;
  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;
  String? get frontTransparent => _frontTransparent;
  set frontTransparent(String? frontTransparent) =>
      _frontTransparent = frontTransparent;

  Gold.fromJson(Map<String, dynamic> json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
    _frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this._backDefault;
    data['back_shiny'] = this._backShiny;
    data['front_default'] = this._frontDefault;
    data['front_shiny'] = this._frontShiny;
    data['front_transparent'] = this._frontTransparent;
    return data;
  }
}

class GenerationIii {
  OfficialArtwork? _emerald;
  FireredLeafgreen? _fireredLeafgreen;
  FireredLeafgreen? _rubySapphire;

  GenerationIii({
    OfficialArtwork? emerald,
    FireredLeafgreen? fireredLeafgreen,
    FireredLeafgreen? rubySapphire,
  }) {
    if (emerald != null) {
      this._emerald = emerald;
    }
    if (fireredLeafgreen != null) {
      this._fireredLeafgreen = fireredLeafgreen;
    }
    if (rubySapphire != null) {
      this._rubySapphire = rubySapphire;
    }
  }

  OfficialArtwork? get emerald => _emerald;
  set emerald(OfficialArtwork? emerald) => _emerald = emerald;
  FireredLeafgreen? get fireredLeafgreen => _fireredLeafgreen;
  set fireredLeafgreen(FireredLeafgreen? fireredLeafgreen) =>
      _fireredLeafgreen = fireredLeafgreen;
  FireredLeafgreen? get rubySapphire => _rubySapphire;
  set rubySapphire(FireredLeafgreen? rubySapphire) =>
      _rubySapphire = rubySapphire;

  GenerationIii.fromJson(Map<String, dynamic> json) {
    _emerald =
        json['emerald'] != null
            ? new OfficialArtwork.fromJson(json['emerald'])
            : null;
    _fireredLeafgreen =
        json['firered-leafgreen'] != null
            ? new FireredLeafgreen.fromJson(json['firered-leafgreen'])
            : null;
    _rubySapphire =
        json['ruby-sapphire'] != null
            ? new FireredLeafgreen.fromJson(json['ruby-sapphire'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._emerald != null) {
      data['emerald'] = this._emerald!.toJson();
    }
    if (this._fireredLeafgreen != null) {
      data['firered-leafgreen'] = this._fireredLeafgreen!.toJson();
    }
    if (this._rubySapphire != null) {
      data['ruby-sapphire'] = this._rubySapphire!.toJson();
    }
    return data;
  }
}

class FireredLeafgreen {
  String? _backDefault;
  String? _backShiny;
  String? _frontDefault;
  String? _frontShiny;

  FireredLeafgreen({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    if (backDefault != null) {
      this._backDefault = backDefault;
    }
    if (backShiny != null) {
      this._backShiny = backShiny;
    }
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
  }

  String? get backDefault => _backDefault;
  set backDefault(String? backDefault) => _backDefault = backDefault;
  String? get backShiny => _backShiny;
  set backShiny(String? backShiny) => _backShiny = backShiny;
  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;

  FireredLeafgreen.fromJson(Map<String, dynamic> json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this._backDefault;
    data['back_shiny'] = this._backShiny;
    data['front_default'] = this._frontDefault;
    data['front_shiny'] = this._frontShiny;
    return data;
  }
}

class GenerationIv {
  Showdown? _diamondPearl;
  Showdown? _heartgoldSoulsilver;
  Showdown? _platinum;

  GenerationIv({
    Showdown? diamondPearl,
    Showdown? heartgoldSoulsilver,
    Showdown? platinum,
  }) {
    if (diamondPearl != null) {
      this._diamondPearl = diamondPearl;
    }
    if (heartgoldSoulsilver != null) {
      this._heartgoldSoulsilver = heartgoldSoulsilver;
    }
    if (platinum != null) {
      this._platinum = platinum;
    }
  }

  Showdown? get diamondPearl => _diamondPearl;
  set diamondPearl(Showdown? diamondPearl) => _diamondPearl = diamondPearl;
  Showdown? get heartgoldSoulsilver => _heartgoldSoulsilver;
  set heartgoldSoulsilver(Showdown? heartgoldSoulsilver) =>
      _heartgoldSoulsilver = heartgoldSoulsilver;
  Showdown? get platinum => _platinum;
  set platinum(Showdown? platinum) => _platinum = platinum;

  GenerationIv.fromJson(Map<String, dynamic> json) {
    _diamondPearl =
        json['diamond-pearl'] != null
            ? new Showdown.fromJson(json['diamond-pearl'])
            : null;
    _heartgoldSoulsilver =
        json['heartgold-soulsilver'] != null
            ? new Showdown.fromJson(json['heartgold-soulsilver'])
            : null;
    _platinum =
        json['platinum'] != null
            ? new Showdown.fromJson(json['platinum'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._diamondPearl != null) {
      data['diamond-pearl'] = this._diamondPearl!.toJson();
    }
    if (this._heartgoldSoulsilver != null) {
      data['heartgold-soulsilver'] = this._heartgoldSoulsilver!.toJson();
    }
    if (this._platinum != null) {
      data['platinum'] = this._platinum!.toJson();
    }
    return data;
  }
}

class GenerationV {
  BlackWhite? _blackWhite;

  GenerationV({BlackWhite? blackWhite}) {
    if (blackWhite != null) {
      this._blackWhite = blackWhite;
    }
  }

  BlackWhite? get blackWhite => _blackWhite;
  set blackWhite(BlackWhite? blackWhite) => _blackWhite = blackWhite;

  GenerationV.fromJson(Map<String, dynamic> json) {
    _blackWhite =
        json['black-white'] != null
            ? new BlackWhite.fromJson(json['black-white'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._blackWhite != null) {
      data['black-white'] = this._blackWhite!.toJson();
    }
    return data;
  }
}

class BlackWhite {
  Showdown? _animated;
  String? _backDefault;
  String? _backFemale;
  String? _backShiny;
  String? _backShinyFemale;
  String? _frontDefault;
  String? _frontFemale;
  String? _frontShiny;
  String? _frontShinyFemale;

  BlackWhite({
    Showdown? animated,
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    if (animated != null) {
      this._animated = animated;
    }
    if (backDefault != null) {
      this._backDefault = backDefault;
    }
    this._backFemale = backFemale;
    if (backShiny != null) {
      this._backShiny = backShiny;
    }
    this._backShinyFemale = backShinyFemale;
    if (frontDefault != null) {
      this._frontDefault = frontDefault;
    }
    this._frontFemale = frontFemale;
    if (frontShiny != null) {
      this._frontShiny = frontShiny;
    }
    this._frontShinyFemale = frontShinyFemale;
  }

  Showdown? get animated => _animated;
  set animated(Showdown? animated) => _animated = animated;
  String? get backDefault => _backDefault;
  set backDefault(String? backDefault) => _backDefault = backDefault;
  String? get backFemale => _backFemale;
  set backFemale(String? backFemale) => _backFemale = backFemale;
  String? get backShiny => _backShiny;
  set backShiny(String? backShiny) => _backShiny = backShiny;
  String? get backShinyFemale => _backShinyFemale;
  set backShinyFemale(String? backShinyFemale) =>
      _backShinyFemale = backShinyFemale;
  String? get frontDefault => _frontDefault;
  set frontDefault(String? frontDefault) => _frontDefault = frontDefault;
  String? get frontFemale => _frontFemale;
  set frontFemale(String? frontFemale) => _frontFemale = frontFemale;
  String? get frontShiny => _frontShiny;
  set frontShiny(String? frontShiny) => _frontShiny = frontShiny;
  String? get frontShinyFemale => _frontShinyFemale;
  set frontShinyFemale(String? frontShinyFemale) =>
      _frontShinyFemale = frontShinyFemale;

  BlackWhite.fromJson(Map<String, dynamic> json) {
    _animated =
        json['animated'] != null
            ? new Showdown.fromJson(json['animated'])
            : null;
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._animated != null) {
      data['animated'] = this._animated!.toJson();
    }
    data['back_default'] = this._backDefault;
    data['back_female'] = this._backFemale;
    data['back_shiny'] = this._backShiny;
    data['back_shiny_female'] = this._backShinyFemale;
    data['front_default'] = this._frontDefault;
    data['front_female'] = this._frontFemale;
    data['front_shiny'] = this._frontShiny;
    data['front_shiny_female'] = this._frontShinyFemale;
    return data;
  }
}

class GenerationVi {
  Home? _omegarubyAlphasapphire;
  Home? _xY;

  GenerationVi({Home? omegarubyAlphasapphire, Home? xY}) {
    if (omegarubyAlphasapphire != null) {
      this._omegarubyAlphasapphire = omegarubyAlphasapphire;
    }
    if (xY != null) {
      this._xY = xY;
    }
  }

  Home? get omegarubyAlphasapphire => _omegarubyAlphasapphire;
  set omegarubyAlphasapphire(Home? omegarubyAlphasapphire) =>
      _omegarubyAlphasapphire = omegarubyAlphasapphire;
  Home? get xY => _xY;
  set xY(Home? xY) => _xY = xY;

  GenerationVi.fromJson(Map<String, dynamic> json) {
    _omegarubyAlphasapphire =
        json['omegaruby-alphasapphire'] != null
            ? new Home.fromJson(json['omegaruby-alphasapphire'])
            : null;
    _xY = json['x-y'] != null ? new Home.fromJson(json['x-y']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._omegarubyAlphasapphire != null) {
      data['omegaruby-alphasapphire'] = this._omegarubyAlphasapphire!.toJson();
    }
    if (this._xY != null) {
      data['x-y'] = this._xY!.toJson();
    }
    return data;
  }
}

class GenerationVii {
  DreamWorld? _icons;
  Home? _ultraSunUltraMoon;

  GenerationVii({DreamWorld? icons, Home? ultraSunUltraMoon}) {
    if (icons != null) {
      this._icons = icons;
    }
    if (ultraSunUltraMoon != null) {
      this._ultraSunUltraMoon = ultraSunUltraMoon;
    }
  }

  DreamWorld? get icons => _icons;
  set icons(DreamWorld? icons) => _icons = icons;
  Home? get ultraSunUltraMoon => _ultraSunUltraMoon;
  set ultraSunUltraMoon(Home? ultraSunUltraMoon) =>
      _ultraSunUltraMoon = ultraSunUltraMoon;

  GenerationVii.fromJson(Map<String, dynamic> json) {
    _icons =
        json['icons'] != null ? new DreamWorld.fromJson(json['icons']) : null;
    _ultraSunUltraMoon =
        json['ultra-sun-ultra-moon'] != null
            ? new Home.fromJson(json['ultra-sun-ultra-moon'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._icons != null) {
      data['icons'] = this._icons!.toJson();
    }
    if (this._ultraSunUltraMoon != null) {
      data['ultra-sun-ultra-moon'] = this._ultraSunUltraMoon!.toJson();
    }
    return data;
  }
}

class GenerationViii {
  DreamWorld? _icons;

  GenerationViii({DreamWorld? icons}) {
    if (icons != null) {
      this._icons = icons;
    }
  }

  DreamWorld? get icons => _icons;
  set icons(DreamWorld? icons) => _icons = icons;

  GenerationViii.fromJson(Map<String, dynamic> json) {
    _icons =
        json['icons'] != null ? new DreamWorld.fromJson(json['icons']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._icons != null) {
      data['icons'] = this._icons!.toJson();
    }
    return data;
  }
}

class Stats {
  int? _baseStat;
  int? _effort;
  Ability? _stat;

  Stats({int? baseStat, int? effort, Ability? stat}) {
    if (baseStat != null) {
      this._baseStat = baseStat;
    }
    if (effort != null) {
      this._effort = effort;
    }
    if (stat != null) {
      this._stat = stat;
    }
  }

  int? get baseStat => _baseStat;
  set baseStat(int? baseStat) => _baseStat = baseStat;
  int? get effort => _effort;
  set effort(int? effort) => _effort = effort;
  Ability? get stat => _stat;
  set stat(Ability? stat) => _stat = stat;

  Stats.fromJson(Map<String, dynamic> json) {
    _baseStat = json['base_stat'];
    _effort = json['effort'];
    _stat = json['stat'] != null ? new Ability.fromJson(json['stat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base_stat'] = this._baseStat;
    data['effort'] = this._effort;
    if (this._stat != null) {
      data['stat'] = this._stat!.toJson();
    }
    return data;
  }
}

class Types {
  int? _slot;
  Ability? _type;

  Types({int? slot, Ability? type}) {
    if (slot != null) {
      this._slot = slot;
    }
    if (type != null) {
      this._type = type;
    }
  }

  int? get slot => _slot;
  set slot(int? slot) => _slot = slot;
  Ability? get type => _type;
  set type(Ability? type) => _type = type;

  Types.fromJson(Map<String, dynamic> json) {
    _slot = json['slot'];
    _type = json['type'] != null ? new Ability.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slot'] = this._slot;
    if (this._type != null) {
      data['type'] = this._type!.toJson();
    }
    return data;
  }
}
