import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/model/ticket/ticket.dart';

class TicketDetails extends StatelessWidget {
  final Ticket ticket;
  const TicketDetails({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Ticket Number: \t ${ticket.ticketId}"),
          Text("Status: \t ${ticket.ticketStatus.name}"),
          Text("Description: \t ${ticket.ticketText}"),
        ],
      ),
    );
  }
}
