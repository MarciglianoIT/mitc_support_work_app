import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/widgets/ticket_overview.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custom_app_bar.dart';
import 'ticket_viewmodel.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: CustomAppBar(title: model.title),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ...model.tickets.map((ticket) => TicketOverview(
                      ticket: ticket,
                      onTap: () {
                        model.navigateToTicket(ticket);
                      },
                    ))
              ],
            ),
          )),
      viewModelBuilder: () => TicketViewModel(),
    );
  }
}
