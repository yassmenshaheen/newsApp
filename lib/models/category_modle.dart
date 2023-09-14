import 'dart:ui';

class CategoryModle{

  String id;
  String name;
  String image;
  Color color;

  CategoryModle(this.id, this.name, this.image, this.color);

   static List<CategoryModle> getCategores(){
     return [
       CategoryModle("business", "Business", "assets/images/business.png", Color(0xFFCF7E48)),
       CategoryModle("entertainment", "Entertainment", "assets/images/politics.png", Color(0xFF003E90)),
       CategoryModle("general", "General", "assets/images/enviroment.png", Color(0xFF4882CF)),
       CategoryModle("health", "Health", "assets/images/health.png", Color(0xFFED1E79)),
       CategoryModle("science", "Science", "assets/images/science.png", Color(0xFFF2D352)),
       CategoryModle("sports", "Sports", "assets/images/sports.png", Color(0xFFC91C22)),
       CategoryModle("technology", "Technology", "assets/images/business.png", Color(0xFF003E90)),

     ];
   }
}