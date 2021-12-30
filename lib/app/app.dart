
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_technique_stacked/ui/views/home/home_view.dart';
import 'package:test_technique_stacked/ui/views/login/login_view.dart';
import 'package:test_technique_stacked/ui/views/signup/signup_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginView, initial: true),
  MaterialRoute(page: SignUpView),
  MaterialRoute(page: HomeView),

],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}