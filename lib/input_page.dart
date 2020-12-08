import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';

const activeColor = Colors.green;
const deActiveColor = Colors.blueAccent;
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  // Color maleColor = deActiveColor;
  // Color feMaleColor = deActiveColor;
  // void updateColor(Gender gendertype) {
  //   if (gendertype == Gender.male) {
  //     maleColor = activeColor;
  //     feMaleColor = deActiveColor;
  //   }
  //   if (gendertype == Gender.female) {
  //     feMaleColor = activeColor;
  //     maleColor = deActiveColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('click');
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    child: RepeatContainerCode(
                      colors: selectGender == Gender.male
                          ? activeColor
                          : deActiveColor,
                      CardWidget: RepeatTextandIcon(
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('yes');
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    child: RepeatContainerCode(
                      colors: selectGender == Gender.female
                          ? activeColor
                          : deActiveColor,
                      CardWidget: RepeatTextandIcon(
                        iconData: FontAwesomeIcons.female,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: new RepeatContainerCode(
              colors: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
