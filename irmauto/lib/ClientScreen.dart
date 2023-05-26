import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'scanqrcode_page.dart';

class ClientScreen extends StatefulWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        title: Image.asset(
          'assets/IRM.png',
          fit: BoxFit.cover,
        ),
        actions: [
          SvgPicture.asset('assets/img_accountuser.svg'),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(25, 29, 25, 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 11, left: 54, right: 54),
              child: Text(
                'Scanner le code QR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            Container(
              width: 304,
              margin: const EdgeInsets.only(
                left: 40,
                top: 41,
                right: 40,
                bottom: 0,
              ),
              child: Text(
                'Veuillez appuyer sur le bouton ci-dessus\npour scanner le QR code pour accéder au\ncaméra qui surveille votre voiture',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 500,
                width: 400,
                margin: const EdgeInsets.only(top: 20),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 600,
                        width: 400,
                        padding: const EdgeInsets.fromLTRB(20, 65, 20, 25),
                        margin: const EdgeInsets.only(top: 30, bottom: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Nom du Client',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            ),
                            TextField(
                              onChanged: (val) => setState(() => data = val),
                              decoration: const InputDecoration(
                                labelText: 'Type your name',
                              ),
                            ),
                            const SizedBox(height: 5),
                            data != null
                                ? QrImageView(
                                    data: data.toString(),
                                    version: QrVersions.auto,
                                    size: 250,
                                    gapless: false,
                                    embeddedImage:
                                        AssetImage('assets/scanimage.png'),
                                    embeddedImageStyle:
                                        QrEmbeddedImageStyle(size: Size(0, 0)),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(top: 0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/cc.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Scanqrcodepage()),
                );
              },
              child: const Text(
                'Scanner Code',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Set the desired color here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
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
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
