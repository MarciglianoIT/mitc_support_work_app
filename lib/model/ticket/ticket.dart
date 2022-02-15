import '../../enums/ticket_status.dart';

class Ticket {
  String ticketId;
  String ticketText;
  TicketStatus ticketStatus;

  Ticket(
    this.ticketId,
    this.ticketText,
    this.ticketStatus,
  );
}
