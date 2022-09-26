import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/AppDrawer.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/TopIcon2.dart';
import 'package:freeda_app/widgets/customButton.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _nameController = TextEditingController();

  final _locationController = TextEditingController();

  final _adressController = TextEditingController();

  final _phoneController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  File? savedimage;

  Future userPics() async {
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    savedimage = File(image!.path);
    setState(() {});
    // Capture a photo
    // final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    // Pick a video
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: App_Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TopIcon2(),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: MyText(
                    title: 'Edit profile',
                    size: 37,
                    color: Colors.black,
                    weight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () async {
                    print('object');
                    userPics();
                  },
                  child: savedimage == null
                      ? Image.asset(
                          'assets/images/image.png',
                          height: 93,
                          width: 97,
                        )
                      : Image.file(
                          savedimage!,
                          height: 93,
                          width: 97,
                        ),
                ),
                MyText(
                  title: 'Change Profile Picture',
                  size: 18,
                  color: Color(0xff151940),
                  weight: FontWeight.w600,
                ),
                SizedBox(
                  height: 30,
                ),
                Textforms(
                  label: 'Name',
                  controller: _nameController,
                  hint: 'Domhnall Gleeson',
                  keyboard: TextInputType.text,
                ),
                Textforms(
                  label: 'Location',
                  controller: _locationController,
                  hint: 'United States ',
                  keyboard: TextInputType.text,
                ),
                Textforms(
                  label: 'Address',
                  controller: _adressController,
                  hint: '123 Street/NYC',
                  keyboard: TextInputType.text,
                ),
                Textforms(
                  label: 'Phone Number',
                  controller: _phoneController,
                  hint: '+000 000 00000',
                  keyboard: TextInputType.phone,
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    CircularProgressIndicator;
                  },
                  child: CustomButton(
                      Center(
                        child: MyText(
                            color: Colors.white,
                            title: 'Save Changes',
                            size: 18,
                            weight: FontWeight.w700),
                      ),
                      56,
                      332,
                      Color(0xff5771F9),
                      8,
                      Colors.transparent,
                      0,
                      0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Textforms extends StatelessWidget {
  String label;
  String hint;
  TextEditingController controller;
  TextInputType keyboard;

  Textforms({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.keyboard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: MyText(
            title: label,
            size: 12,
            color: Color(0xff151940),
            weight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Form(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: Color(0xff7F8192),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                fillColor: Color(0xffF5F6FA),
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.edit_note_outlined,
                    color: Color(0xff151940),
                  ),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: keyboard,
              controller: controller,
            ),
          ),
        ),
      ],
    );
  }
}
