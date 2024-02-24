import 'dart:io';

// import 'package:demo/src/instagram/task3.dart';
// import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'const_image/const.dart';

class Taskhome extends StatefulWidget {
  const Taskhome({super.key});

  @override
  State<Taskhome> createState() => _TaskhomeState();
}

class _TaskhomeState extends State<Taskhome> {
  final ImagePicker _picker = ImagePicker();
  XFile? pickedSingleImage;
  List<XFile> pickedMultiImageList = [];
  List<String> list = <String>['pune', 'goa', 'up', 'mp'];
  String? dropdownValue;

  Future pickMultipleImageFromGallery() async {
    pickedSingleImage =
    await _picker.pickImage(imageQuality: 100, source: ImageSource.gallery);
    setState(() {});
  }

  Future pickFromGallery() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 94,
                child: ListView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 3),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Stack(
                        children: [
                          pickedSingleImage == null
                              ? InkWell(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(sun),
                              radius: 45,
                            ),
                            onTap: () => pickMultipleImageFromGallery(),
                          )
                              : InkWell(
                            child: CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 45,
                            ),
                            onLongPress: () =>
                                pickMultipleImageFromGallery(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(nature),
                        radius: 45,
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(whites),
                        radius: 45,
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(myImage),
                        radius: 45,
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(panther),
                        radius: 45,
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(myImage),
                        radius: 45,
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(nature),
                        radius: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(color: Colors.black, thickness: 5),
          Flexible(
            fit: FlexFit.tight,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(sun),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(nature)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(whites),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(nature)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(nature),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(myImage)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(whites),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(panther)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(myImage),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(whites)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(nature),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(sun)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(Dark),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(myImage)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            pickedSingleImage == null
                                ? CircleAvatar(
                              backgroundImage: AssetImage(Dark),
                              radius: 25,
                            )
                                : CircleAvatar(
                              backgroundImage: FileImage(
                                  File(pickedSingleImage!.path)),
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text("veduuu__1703"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(sun)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
