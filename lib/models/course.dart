class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCorses() {
    return [
      Course('Eliseo Nava', 'assets/images/fluttermovil1.jpg', "Flutter Layout",
          "assets/images/fluttermovil6.jpg"),
      Course('Vandad', 'assets/icons/vandad.jpg', "Flutter",
          "assets/images/course06.png"),
      Course('Filip', 'assets/icons/filip.png', "Flutter",
          "assets/images/fluttermovil2.jpg"),
      Course('Andrew', 'assets/icons/andrew.png', "Flutter",
          "assets/images/fluttermovil3.jpg"),
      Course('Filip', 'assets/icons/filip.png', "Flutter",
          "assets/images/fluttermovil4.jpg"),
      Course('Filip', 'assets/icons/filip.png', "Flutter",
          "assets/images/course04.png"),
      Course('Vandad', 'assets/icons/vandad.jpg', "Flutter",
          "assets/images/course02.png"),
      Course('Gülsen Keskin', 'assets/images/fluttermovil5.jpg', "Flutter",
          "assets/images/course10.webp"),
      Course('Gülsen Keskin', 'assets/images/fluttermovil6.jpg', "Flutter",
          "assets/images/course05.webp"),
      Course('Vandad', 'assets/icons/vandad.jpg', "Flutter",
          "assets/images/course09.png"),
    ];
  }
}
