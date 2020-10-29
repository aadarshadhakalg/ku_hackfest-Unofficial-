import 'package:KUHackfest/src/dashboard/dashboard_component.dart';
import 'package:KUHackfest/src/services/database_services.dart';
import 'package:angular/angular.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [DashboardComponent],
  providers: [
    ClassProvider(DatabaseService),
  ],
)
class AppComponent {
  final DatabaseService databaseService;

  AppComponent(this.databaseService);
}
