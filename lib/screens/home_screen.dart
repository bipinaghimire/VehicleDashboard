import 'package:flutter/material.dart';
import 'package:yatri/reusable_widgets/reusable_widget.dart';
import 'package:yatri/screens/dashboard_screen.dart';
import 'package:yatri/utils/colors_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _pinTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
        gradient: LinearGradient(colors:[
      Colors.blueGrey[800]!,
      Colors.blueGrey[700]!,
      Colors.blueGrey[800]!,
      ], begin:Alignment.topCenter, end: Alignment.bottomCenter)),
       child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Pincode", Icons.person_outline, false,
                    _pinTextController),
                const SizedBox(
                  height: 20,
                ),
                signInAppButton(context, true, () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                }),
              ],
            ),
          ),
       ),
      ),
      );
  }

}
