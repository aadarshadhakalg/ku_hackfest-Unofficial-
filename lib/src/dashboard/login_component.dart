import 'package:KUHackfest/src/services/database_services.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'login',
  templateUrl: './login_component.html',
  styleUrls: ['./login_component.css'],
  directives: [coreDirectives],
  providers: [],
)
class LoginComponent {
  DatabaseService databaseService;
  LoginComponent(this.databaseService);
}
