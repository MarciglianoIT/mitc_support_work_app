import 'package:mitc_support_work_app/enums/ticket_status.dart';
import 'package:stacked/stacked.dart';
import '../../model/ticket/ticket.dart';


class TicketDataViewModel extends BaseViewModel {
  String title = 'Ticket';

  List<Ticket> tickets = [
    Ticket('123', 'Test', TicketStatus.none),
    Ticket('456', 'Test1', TicketStatus.paused),
    Ticket('789', 'Test2', TicketStatus.paused),
  ];

  void doSomething() {
		notifyListeners();
  }
}