

abstract class ApplicationEvents{
  const ApplicationEvents();
}

class TriggerHomeEvent extends ApplicationEvents{
  final int index;
  const TriggerHomeEvent(this.index) : super();
}