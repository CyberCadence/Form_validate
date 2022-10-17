import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:git_fetchapi2/Services/db.dart';
import 'package:git_fetchapi2/model/modeldata.dart';

class ListTickets extends StatelessWidget {
  const ListTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);  },),),
      body: SafeArea(
        child: Center(
          child: StreamBuilder<List<FormModel>>(
              stream: FireStore().getAllTickets(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active &&
                    snapshot.data != null) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: ((context, index) {
                        final Tickets = snapshot.data![index];

                        return ListTile(
                          title: Text(Tickets.title),leading: Text( Tickets.description),subtitle: Text(Tickets.location),trailing: Text(Tickets.date),
                        );
                      }));
                }return const Center(child: Text('No data found '),);
              }
              
              
              )),
        ),
      ),
    );
  }
}
