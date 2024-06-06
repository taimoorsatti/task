class AllRecipesModel {
  List<Recipes>? recipes;
  dynamic? total;
  dynamic? skip;
  dynamic? limit;

  AllRecipesModel({this.recipes, this.total, this.skip, this.limit});

  AllRecipesModel.fromJson(Map<String, dynamic> json) {
    if (json['recipes'] != null) {
      recipes = <Recipes>[];
      json['recipes'].forEach((v) {
        recipes!.add(new Recipes.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipes != null) {
      data['recipes'] = this.recipes!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Recipes {
  dynamic? id;
  String? name;
  List<String>? ingredients;
  List<String>? instructions;
  dynamic? prepTimeMinutes;
  dynamic? cookTimeMinutes;
  dynamic? servings;
  String? difficulty;
  String? cuisine;
  dynamic? caloriesPerServing;
  List<String>? tags;
  dynamic? userId;
  String? image;
  dynamic? rating;
  dynamic? reviewCount;
  List<String>? mealType;

  Recipes(
      {this.id,
        this.name,
        this.ingredients,
        this.instructions,
        this.prepTimeMinutes,
        this.cookTimeMinutes,
        this.servings,
        this.difficulty,
        this.cuisine,
        this.caloriesPerServing,
        this.tags,
        this.userId,
        this.image,
        this.rating,
        this.reviewCount,
        this.mealType});

  Recipes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    ingredients = json['ingredients'].cast<String>();
    instructions = json['instructions'].cast<String>();
    prepTimeMinutes = json['prepTimeMinutes'];
    cookTimeMinutes = json['cookTimeMinutes'];
    servings = json['servings'];
    difficulty = json['difficulty'];
    cuisine = json['cuisine'];
    caloriesPerServing = json['caloriesPerServing'];
    tags = json['tags'].cast<String>();
    userId = json['userId'];
    image = json['image'];
    rating = json['rating'];
    reviewCount = json['reviewCount'];
    mealType = json['mealType'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['ingredients'] = this.ingredients;
    data['instructions'] = this.instructions;
    data['prepTimeMinutes'] = this.prepTimeMinutes;
    data['cookTimeMinutes'] = this.cookTimeMinutes;
    data['servings'] = this.servings;
    data['difficulty'] = this.difficulty;
    data['cuisine'] = this.cuisine;
    data['caloriesPerServing'] = this.caloriesPerServing;
    data['tags'] = this.tags;
    data['userId'] = this.userId;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['reviewCount'] = this.reviewCount;
    data['mealType'] = this.mealType;
    return data;
  }
}