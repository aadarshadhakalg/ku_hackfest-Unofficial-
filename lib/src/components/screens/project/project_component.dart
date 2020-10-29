import 'package:KUHackfest/src/dashboard/login_component.dart';
import 'package:KUHackfest/src/services/database_services.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'project',
  templateUrl: './project_component.html',
  styleUrls: ['./project_component.css'],
  directives: [coreDirectives, LoginComponent],
  providers: [],
)
class ProjectComponent {
  final DatabaseService databaseService;
  ProjectComponent(this.databaseService);
}
