import 'package:flutter/material.dart';
import 'package:student/components/customTextField.dart';
import 'package:student/components/gradientButton.dart';
import 'package:student/screens/confirm_attendance.dart';
import 'package:student/screens/confirm_attendance.dart';
import '../globals/session_request.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class ScaningPage extends StatefulWidget {
  ScaningPage({Key key}) : super(key: key);

  @override
  _ScaningPageState createState() => _ScaningPageState();
}

class _ScaningPageState extends State<ScaningPage> {

    final myController = TextEditingController();


  @override
  void initState() {
    super.initState();

    
  }
Future<Null> getSearchResult(String code,[bontext=null]) async{
  Map result =await  fetchScannCode(code);
  print(result);
  if (result.containsKey("id")){

            this.setState(()=>isLoading=false);
            Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => ConfirmAttendance(eventInfor: result,)));
  }else if(result.containsKey("error")){
          this.setState(()=>isLoading=false);
            if (bontext!=null){
              Alert(context: bontext, title: "Scan Token", desc: "${result['error']}").show();
        
              }
      
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAECEF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Input attendance code:',
                style: TextStyle(fontSize: 18, color: Color(0xff555252)),
              ),
// Spacer
              SizedBox(height: 20),

              CustomTextField(
                obscureText: false,
                textEditingController: myController,                
              ),
// Spacer
              SizedBox(height: 45),

// Scan Button
              isLoading?Container(child: CircularProgressIndicator(),):GradientButton(
                height: 50,
                width: 150,
                icon: Icon(
                  Icons.autorenew,
                  size: 20,
                  color: Colors.white,
                ),
                label: 'SCAN CODE',
                onPressed: () {
                this.setState(()=>isLoading=true);
                  if(myController.text.isNotEmpty){getSearchResult(myController.text,context);}else{
                this.setState(()=>isLoading=false);
                  }
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ConfirmAttendance()));
                },
              ),
              
            ],
          ),
        ),
      ),
    );
    
  }

}
