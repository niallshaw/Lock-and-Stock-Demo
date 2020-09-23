import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lockstockDemo/styles/theme.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.apply(bodyColor: Colors.white))),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: CustomTheme.primaryColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 44,
                  ),
                  Image.asset("assets/paperpass.png"),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Get papers within minutes so that you can study faster",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 79,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFB9B9B9)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFB9B9B9)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFB9B9B9)),
                        ),
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: CustomTheme.secondaryColor)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {},
                    child: Text(
                      "Sign Up".toUpperCase(),
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    color: CustomTheme.secondaryColor,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("We won’t spam you. We value your privacy."),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "or".toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 34.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/facebookf.png',
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          "Continue with Facebook".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    color: CustomTheme.facebookBlue,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("We never share anything on your behalf."),
                  Spacer(),
                  Text("Already have an account?"),
                  FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        print("Log in");
                      },
                      child: Text(
                        "Log In".toUpperCase(),
                        style: TextStyle(
                            color: CustomTheme.secondaryColor,
                            fontWeight: FontWeight.w700),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
