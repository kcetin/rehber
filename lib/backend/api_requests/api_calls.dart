import 'api_manager.dart';

Future<dynamic> hastaneCall({
  String name = '',
  String resimUrl = '',
  String brans = '',
  String telefon = '',
  int id,
  String idariGorev = '',
  String email = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'hastane',
      apiDomain: 'v1.nocodeapi.com',
      apiEndpoint: 'kcetin/google_sheets/jjFOXKeTxyLTrNMw?tabId=user',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'name': name,
        'resimUrl': resimUrl,
        'brans': brans,
        'telefon': telefon,
        'id': id,
        'idariGorev': idariGorev,
        'email': email,
      },
      returnResponse: true,
    );
