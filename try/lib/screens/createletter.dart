import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateLetter extends StatelessWidget {
  const CreateLetter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff002856),
              )),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'New LG',
            style: TextStyle(
              color: Color(0xff002856),
              fontFamily: 'Calibri',
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  }
                  // => _launchURL
                  ,
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Color(0xff009AD7),
                      fontFamily: 'Calibri',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: Color(0xff002856),
                      fontFamily: 'Calibri',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xffC3E7FF)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            )
          ],
        ),
      ),
    );
  }
}

// ignore: unused_element
_launchURL() async {
  final Uri url = Uri.parse('https://flutter.dev');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
