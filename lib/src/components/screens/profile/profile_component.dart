import 'package:KUHackfest/src/dashboard/login_component.dart';
import 'package:KUHackfest/src/services/database_services.dart';
import 'package:KUHackfest/utils/routepaths.dart';
import 'package:KUHackfest/utils/routes.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'profile',
  templateUrl: './profile_component.html',
  styleUrls: ['./profile_component.css'],
  directives: [
    routerDirectives,
    coreDirectives,
    MaterialButtonComponent,
    LoginComponent,
  ],
  providers: [],
  exports: [Routes, RoutePaths],
)
class ProfileComponent {
  final DatabaseService databaseService;
  ProfileComponent(this.databaseService);
}
