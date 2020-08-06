
import '../import.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  NewsAppClickedEvent,
  AuthServiseClickedEvent,
  PhotoCamClickedEvent,
  InfoNewClickedEvent,
//  NTabBarClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield Profill();
        break;
      case NavigationEvents.NewsAppClickedEvent:
        yield NewsApp();
        break;
      case NavigationEvents.AuthServiseClickedEvent:
        yield Auth();
        break;
      case NavigationEvents.PhotoCamClickedEvent:
        yield ImageCaptureScreen();
        break;
        case NavigationEvents.InfoNewClickedEvent:
        yield InfoNew();
        break;
//      case NavigationEvents.CardDClickedEvent:
//        yield CardD();
//        break;
    }
  }
}