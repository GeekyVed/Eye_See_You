import 'package:flutter/material.dart';
import 'upload_picture_page.dart';
import 'display_image_page.dart';

class TableDisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UploadPicturePage()),
                );
              },
              child: Text('Upload Picture'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DisplayImagePage()),
                );
              },
              child: Text('See Data'),
            ),
          ],
        ),
      ),
    );
  }
}
