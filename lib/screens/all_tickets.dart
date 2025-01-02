import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uosat/base/utils/all_json.dart';
import 'package:uosat/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) =>
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                          child: TicketView(ticket: singleTicket, wholeScreen: true,)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
