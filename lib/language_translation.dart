import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LanguageTranslationPage extends StatefulWidget {
  const LanguageTranslationPage({super.key});

  @override
  State<LanguageTranslationPage> createState() =>
      _LanguageTranslationPageState();
}

class _LanguageTranslationPageState extends State<LanguageTranslationPage> {
  var languages = ['Hindi', 'English', 'Bengali'];
  var originLanguage = "From";
  var destinationLanguage = "To";
  var output = "";
  TextEditingController languageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff10223d),
      appBar: AppBar(
        title: Text('Language Translator'),
        centerTitle: true,
        backgroundColor: Color(0xff10223d),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                      focusColor: Colors.white,
                      iconDisabledColor: Colors.white,
                      iconEnabledColor: Colors.white,
                      hint: Text(
                        originLanguage,
                        style: TextStyle(color: Colors.white),
                      )),
                      dropdownColor : Colors.whites,
                      icon : Icon(Icons.keyboard_arrow_down),
                      items : languages.map(String dropDownStringItem){
                        return DropdownMenuItem(child: Text(dropDownStringItem), value : dropDownStringItem);
                      }
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
