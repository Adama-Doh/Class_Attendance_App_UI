 import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

bool isLoading =false;

 
 Future<Map> fetchScannCode(String code) async{
  String url = 'https://legon-attendance.herokuapp.com/event/find/t/${code}';

  try{
    http.Response response = await http.get(url);
    Map jsonResponse = convert.jsonDecode(response.body);
    if(jsonResponse.containsKey('id')){
      // print(jsonResponse);
      return jsonResponse;
    }else{
      return {'error':'Token incorrect or Do not exist'};
    }
  }catch(error){
    return {'error':'Opps Network Erorr or Server'};
  } 
}
