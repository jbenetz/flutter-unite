/*
  This file  contains the code for the intiial app screen that oAuths to CMS BlueButton API,
  Intitates the Auth Widget for oAuth2 Authentication

  This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
    
*/

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_unite/flutter_unite.dart';
import 'package:uuid/uuid.dart';

const String FHIR_API_ENDPOINT = "https://sandbox.bluebutton.cms.gov";

void main() {
  //////////////////////////////////////////////////////////////////////
  // Configure FHIR Data Provider. This can be done anywhere prior to
  // using it the first time. We're doing it here just for convenience.
  var config = FHIRDataProviderConfig(fhirApiEndpoint: FHIR_API_ENDPOINT);
  FHIRDataProvider().configure(config);

  runApp(new MaterialApp(home: new LoginScreen()));
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String _authURL =
        "${HuMedStatics.CMS_BB_AUTH_URL}&state=${new Uuid().v4().toString()}";

    var app = MaterialApp(
        debugShowCheckedModeBanner: false,
        home: //CareList(accessToken: "wHab612xgV5NE58c1oCVSkcXXErDf9")
            Auth.getInstance().loginScaffold(
                loginUrl: _authURL,
                successCallback: (token) {
                  /////////////////////////////////////////////////////////////////////////
                  /// Passing the auth token to the FHIR Data Provider for later use.
                  FHIRDataProvider().authorized(token);
                  var screen = CareList(accessToken: token);

                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => screen));
                },
                failureCallback: (errorMessage) {
                  print("There was an error during the call to login.");
                }));
    return app;
  }
}
