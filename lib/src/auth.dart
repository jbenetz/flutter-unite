import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:core';
import 'package:flutter/material.dart';

typedef LoginSuccessCallback = void Function(String accessToken);
typedef LoginFailureCallback = void Function(String errorMessage);

class Auth {
  static final Auth _singleton = new Auth._internal();

  FlutterWebviewPlugin _flutterWebViewPlugin = new FlutterWebviewPlugin();

  factory Auth() {
    return _singleton;
  }

  Auth._internal() {
    // initialization logic here
  }

  static Auth getInstance() {
    return _singleton;
  }

  StatefulWidget loginScaffold(
      {@required String loginUrl,
      @required LoginSuccessCallback successCallback,
      LoginFailureCallback failureCallback}) {
    _flutterWebViewPlugin.onStateChanged
        .listen((WebViewStateChanged stateChange) {
      var state = stateChange.type;

      print("State Change: ${stateChange.type.toString()}");
      if (state == WebViewState.finishLoad) {
        _flutterWebViewPlugin.show();
      }
    });

    _flutterWebViewPlugin.onHttpError.listen((WebViewHttpError error) {
      print("HTTPERROR: ${error.code}");
      if (error.code == "200") {
        return;
      }
      if (failureCallback != null) {
        failureCallback(error.toString());
      }
      _flutterWebViewPlugin.close();
    });

    // Add a listener to on url changed. for the call back from CMS BlueButton oAuth2 Login.
    _flutterWebViewPlugin.onUrlChanged.listen((String url) {
      print("URL changed: $url");
      final Uri uri = Uri.parse(url);
      if (uri.host == "localhost") {
        //access token comes in as a parm om the callback URL.
        final parms = Uri.splitQueryString(uri
            .fragment); //token response from CMS BlueButton API comes back as fragment
        final token = parms["access_token"];
        print("Access Token:$token");
        if (successCallback != null) {
          successCallback(token);
        }
        _flutterWebViewPlugin.close();
      }
    });

    return WebviewScaffold(
      url: loginUrl,
      appBar: AppBar(
        title: const Text('Login'),
      ),
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      clearCookies: true,
    );
  }
}
