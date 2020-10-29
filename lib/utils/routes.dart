import 'routepaths.dart';
import 'package:angular_router/angular_router.dart';
import '../src/components/screens/home/home_component.template.dart'
    as home_template;
import '../src/components/screens/schedule/schedule_component.template.dart'
    as schedule_template;
import '../src/components/screens/profile/profile_component.template.dart'
    as profile_template;
import '../src/components/screens/project/project_component.template.dart'
    as project_template;
import '../src/components/screens/team/team_component.template.dart'
    as team_template;
import '../src/components/screens/faq/faq_component.template.dart'
    as faq_template;

export 'routepaths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
  );

  static final schedule = RouteDefinition(
    routePath: RoutePaths.schedule,
    component: schedule_template.ScheduleComponentNgFactory,
  );

  static final profile = RouteDefinition(
    routePath: RoutePaths.profile,
    component: profile_template.ProfileComponentNgFactory,
  );

  static final faq = RouteDefinition(
    routePath: RoutePaths.faq,
    component: faq_template.FAQComponentNgFactory,
  );

  static final project = RouteDefinition(
    routePath: RoutePaths.project,
    component: project_template.ProjectComponentNgFactory,
  );

  static final team = RouteDefinition(
    routePath: RoutePaths.team,
    component: team_template.TeamComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    schedule,
    project,
    team,
    profile,
    faq,
  ];
}
