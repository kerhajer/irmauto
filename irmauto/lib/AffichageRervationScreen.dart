import 'package:flutter/material.dart';

class AffichageReservationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        title: Image.asset('assets/IRM.png', fit: BoxFit.cover),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(14, 29, 14, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text(
                  "Liste des Réservations",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // First reservation item
                    return Container(
                      child: ReservationItem(
                        idClient: "ID Client ",
                        immatricule: "Immatricule ",
                        service: "Service ",
                        dateTime: "Date & heure ",
                      ),
                    );
                  } else if (index == 1) {
                    // Modified structure of the second reservation item
                    return Container(
                      margin:
                          const EdgeInsets.only(top: 0), // Add desired margin

                      child: Table(
                        border: TableBorder.all(color: Colors.white),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        columnWidths: const {
                          0: FlexColumnWidth(),
                          1: FlexColumnWidth(),
                          2: FlexColumnWidth(),
                          3: FlexColumnWidth(),
                        },
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: ReservationInfo(
                                  text: '',
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, 
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50, // Adjust the height as needed
                                  alignment: Alignment.center,
                                  child: ReservationInfo(
                                    text: '',
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                  return SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(12),
        height: 50.0,
        color: Colors.black,
        child: Text(
          "® IRM-Auto 2023 |All rights reserved | Powered by IronHoster Inc.",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class ReservationItem extends StatelessWidget {
  final String idClient;
  final String immatricule;
  final String service;
  final String dateTime;

  const ReservationItem({
    Key? key,
    required this.idClient,
    required this.immatricule,
    required this.service,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ReservationInfo(
              text: idClient,
              alignment: Alignment.centerLeft,
            ),
          ),
          Expanded(
            child: ReservationInfo(
              text: immatricule,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: ReservationInfo(
              text: service,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: ReservationInfo(
              text: dateTime,
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      ),
    );
  }
}

class ReservationInfo extends StatelessWidget {
  final String text;
  final Alignment alignment;

  const ReservationInfo({
    Key? key,
    required this.text,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
