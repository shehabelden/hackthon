import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
class dio_helper{
  static  Dio ? dio;
  static String url="https://lavie.orangedigitalcenteregypt.com/api/v1/";
  static String ? token_key;
  static String ? refresh_token;
  static init(){
    SharedPreferences.getInstance().then((value){
      token_key=value.getString("token_pref");
    });
    // print(token_key);
    dio=Dio(
      BaseOptions(
        baseUrl:url,
        receiveDataWhenStatusError: true,
        headers: {
          "Content-Type": "application/json",
          "Authorization":"Bearer ${token_key!}",
        },
      ),
    );
    dio!.interceptors.add(InterceptorsWrapper(
        onError: (DioError error, handler) async{
          if(error.response?.statusCode==401) {
            await  SharedPreferences.getInstance().then((value){
              value.remove("token_pref");
            });
            return handler.next(error);
          }
          return handler.next(error);
        }
    ));
  }
static Future<Response>get(String path) async{
    return await dio!.get(path);
  }
}