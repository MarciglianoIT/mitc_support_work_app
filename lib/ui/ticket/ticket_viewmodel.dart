import 'package:mitc_support_work_app/enums/ticket_status.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';
import '../../model/ticket/ticket.dart';

class TicketViewModel extends BaseViewModel {
  String title = 'Ticket';
  final _nagivationService = locator<NavigationService>();
  List<Ticket> tickets = [
    Ticket('123', 'Test', TicketStatus.none),
    Ticket('456', 'Test1', TicketStatus.paused),
    Ticket('789', 'Test2', TicketStatus.paused),
  ];

  void navigateToTicket(Ticket ticket) {
    _nagivationService.navigateTo(
      TicketNavigatorRoutes.ticketDataView,
      id: 1,
      arguments: TicketDataViewArguments(
        ticket: ticket,
      ),
    );
    notifyListeners();
  }
}
