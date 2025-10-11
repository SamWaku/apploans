//home page events... responsible for getting values from the UI

abstract class HomePageEvents{
  const HomePageEvents();
}

class HomePageDots extends HomePageEvents{
  final int index;

  HomePageDots(this.index);
}
