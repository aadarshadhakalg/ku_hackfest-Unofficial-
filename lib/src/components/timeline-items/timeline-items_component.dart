import 'package:KUHackfest/src/models/event_model.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'timeline-item',
  templateUrl: 'timeline-item_component.html',
  styleUrls: ['timeline-item_component.css'],
  directives: [coreDirectives],
  providers: [],
)
class TimelineItemComponent {
  @Input('selectedEvent')
  Event event;
}
