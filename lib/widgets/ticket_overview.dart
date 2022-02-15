import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/enums/ticket_status.dart';

import '../model/ticket/ticket.dart';

class TicketOverview extends StatelessWidget {
  final Ticket ticket;
  final void Function() onTap;

  const TicketOverview({Key? key, required this.ticket, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget status = const Icon(Icons.access_alarm);
    if(ticket.ticketStatus == TicketStatus.paused) {
      status = const Icon(Icons.pause);
    }
    if(ticket.ticketStatus == TicketStatus.running) {
      status = const Icon(Icons.play_arrow);
    }
    if(ticket.ticketStatus == TicketStatus.stopped) {
      status = const Icon(Icons.stop_circle);
    }

    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: status,
              title: Text(ticket.ticketId),
              subtitle: Text(ticket.ticketText),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
