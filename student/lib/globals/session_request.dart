 import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

bool isLoading =false;

 
 Future<Map> fetchScannCode(String code) async{
  String url = 'https://legon-attendance.herokuapp.com/event/find/t/${code}';

  try{
    http.Response response = await http.get(url);
    Map jsonResponse = convert.jsonDecode(response.body);
    if(jsonResponse.containsKey('name')){
      // print(jsonResponse);
      return jsonResponse;
    }else{
      return {'error':'Token incorrect or Do not exist'};
    }
  }catch(error){
    return {'error':'Opps Network Erorr or Server'};
  } 
}

// geoLocate
Future<Map> fetchPlace(Map codinate) async{
  String url = 'https://api.opencagedata.com/geocode/v1/json?q=${codiname["lat"]}+${codinate["log"]}&key=556bf96f117d446eb6bc70a87f9aa2a7';

  try{
    http.Response response = await http.get(url);
    Map jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
    if(response.statusCode==200){
    return jsonResponse;}
  }catch(error){
    return {'error':'Opps Network Erorr or Server'};
  } 
}


