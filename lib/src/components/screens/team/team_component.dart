import 'package:KUHackfest/src/dashboard/login_component.dart';
import 'package:KUHackfest/src/services/database_services.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'team',
  templateUrl: './team_component.html',
  styleUrls: ['./team_component.css'],
  directives: [coreDirectives, LoginComponent],
  providers: [],
)
class TeamComponent {
  final DatabaseService databaseService;
  TeamComponent(this.databaseService);
}
