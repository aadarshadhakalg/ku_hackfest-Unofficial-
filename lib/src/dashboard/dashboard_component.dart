import 'dart:html';

import 'package:KUHackfest/src/components/timeline-items/timeline-items_component.dart';
import 'package:KUHackfest/src/models/event_model.dart';
import 'package:KUHackfest/utils/routes.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: [
    'package:angular_components/app_layout/layout.scss.css',
    'dashboard_component.css',
  ],
  directives: [
    routerDirectives,
    coreDirectives,
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    MaterialTemporaryDrawerComponent,
    MaterialListComponent,
    MaterialListItemComponent,
    TimelineItemComponent,
    MaterialToggleComponent,
  ],
  providers: [],
  exports: [Routes, RoutePaths],
)
class DashboardComponent implements OnInit {
  bool customWidth = true;
  bool end = true;
  bool mobile = false;

  List<Event> events = [
    Event(
      title: 'Preparation',
      subtitle: 'Register Your Team',
      timeframe: 'Now - 25 October',
    ),
    Event(
      title: 'Start Hacking',
      subtitle: 'Code, Pitch and Submit',
      timeframe: '25 October - 27 October',
    ),
    Event(
      title: 'Top 5 Selection',
      subtitle: 'Top 5 Winner Reveal',
      timeframe: '28 October',
    ),
    Event(
      title: 'Winner Announcement',
      subtitle: 'Closing ceremony',
      timeframe: '29 October',
    ),
    Event(
      title: 'Hacking Ends',
      subtitle: 'See You Next Year',
      timeframe: '29 October',
    ),
  ];

  @override
  void ngOnInit() {
    if (window.innerWidth < 599) {
      mobile = true;
    }
  }
}
