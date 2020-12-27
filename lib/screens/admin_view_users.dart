import 'package:flutter/material.dart';

class AdminViewUsers extends StatelessWidget {
  static const routeName = '/admin-view-users';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: SafeArea(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(width: 2),
                  columnWidths: {
                    0: FractionColumnWidth(.4),
                    1: FractionColumnWidth(.4),
                    2: FractionColumnWidth(.2)
                  },
                  children: [
                    TableRow(children: [
                      Center(
                        child: Text(
                          "Image",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Price",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset("images/Logo.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "This is a short description of the zeby",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("20 USD"),
                      ),
                    ]),
                    TableRow(children: [
                      Image.asset("images/Logo.png"),
                      Text("This is a short description of the zeby"),
                      Text("20 USD"),
                    ]),
                    TableRow(children: [
                      Image.asset("images/Logo.png"),
                      Text("This is a short description of the zeby"),
                      Text("20 USD"),
                    ]),
                    TableRow(children: [
                      Image.asset("images/Logo.png"),
                      Text("This is a short description of the zeby"),
                      Text("20 USD"),
                    ]),
                    TableRow(children: [
                      Image.asset("images/Logo.png"),
                      Text("This is a short description of the zeby"),
                      Text("20 USD"),
                    ]),
                    TableRow(children: [
                      Image.asset("images/Logo.png"),
                      Text("This is a short description of the zeby"),
                      Text("20 USD"),
                    ]),
                    TableRow(children: [
                      Image.asset("images/Logo.png"),
                      Text("This is a short description of the zeby"),
                      Text("20 USD"),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
