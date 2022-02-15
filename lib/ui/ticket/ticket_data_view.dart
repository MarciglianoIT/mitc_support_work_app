import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../model/ticket/ticket.dart';
import '../../widgets/ticket_details.dart';
import 'ticket_data_viewmodel.dart';

class TicketDataView extends StatelessWidget {
  final Ticket ticket;

  const TicketDataView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketDataViewModel>.reactive(
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(model.title),
            centerTitle: false,
            bottom: const TabBar(
              tabs: [
                Tab(text: "Ticket Details"),
                Tab(text: "Chat"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  TicketDetails(
                    ticket: ticket,
                  )
                ],
              ),
              const Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => TicketDataViewModel(),
    );
  }
}
