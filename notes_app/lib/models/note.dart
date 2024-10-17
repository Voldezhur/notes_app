class Note {
  String title;
  String description;
  bool isFinished;
  bool isFavourite;

  Note(this.title, this.description,
      {this.isFinished = false, this.isFavourite = false});
}
