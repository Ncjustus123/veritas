

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'New_registration.dart';
import 'Self_service_page.dart';

class WelcomePage extends StatefulWidget {

  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  late DateTime currentBackPressTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor:Theme.of(context).primaryColor,
      body: WillPopScope(
        onWillPop: onWillPop,
        child: Column(
          children: [
            myAppBar(context,"Veritas Registrars"),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(23.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/vrback.jpeg",),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.srcOver)
                    ),
                    // color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(45))),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        dashboardCard(
                          context,
                          onTap:(){
                            Get.to(SelfServicePage());
                          },
                          title: "Self Service",
                          icon: Icon(
                            Icons.support_agent,
                            color: Colors.white,
                            size: 35,
                          ),
                          color: Color(0xFF1a237e),
                        ),
                        SizedBox(width: 20,),
                        dashboardCard(
                          context,
                          onTap:(){
                            launch(
                              "https://vericlient.zenithbank.com/shareonline/Account/Login.aspx",
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,);
                          },
                          title: "Account Login",
                          icon: Icon(
                            Icons.login_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                          color:Color(0xFF1b5e20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        dashboardCard(
                          context,
                          onTap:(){
                            print("tapped");
                            launch(
                              "https://www.veritasregistrars.com/FindABranch",
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,);
                          },
                          title: "Find A Branch",
                          icon: Icon(
                            Icons.find_in_page,
                            color: Colors.white,
                            size: 35,
                          ),
                          color: Color(0xFF6E557F),
                        ),
                        SizedBox(width: 20,),
                        dashboardCard(
                          context,
                          onTap:(){
                            launch(
                              "https://vericlient.zenithbank.com/shareonline/Registration/UserAuthentication.aspx",
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,);
                          },
                          title: "New User Registration",
                          icon: Icon(
                            Icons.app_registration_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          color: Color(0xFF7f0000),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        dashboardCard(
                          context,
                          onTap:(){
                            print("tapped");
                            launch(
                              "https://www.veritasregistrars.com",
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,

                            );
                          },
                          title: "Website",
                          icon: Icon(
                            Icons.web_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          color: Colors.black,
                        ),
                        SizedBox(width: 20,),
                        dashboardCard(
                          context,
                          onTap:(){
                            launch(
                              "https://ngxgroup.com/exchange/data/equities-price-list/",
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,
                            );
                          },
                          title: "Current Stock Price",
                          icon: Icon(
                            Icons.show_chart,
                            color: Colors.white,
                            size: 35,
                          ),
                          color: Color(0xFFB45F00),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        dashboardCard(
                          context,
                          onTap:(){
                            print("tapped");
                            launch(
                              "https://www.veritasregistrars.com/ContactUs",
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,);
                          },
                          title: "Contact Us",
                          icon: Icon(
                            Icons.account_circle_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                          color: Color(0xFF4a148c),
                        ),
                        SizedBox(width: 20,),
                        dashboardCard(
                          context,
                          onTap:(){
                            launch(
                              "https://www.veritasregistrars.com/Downloadableforms",
                            );
                          },
                          title: "Downloadable Forms",
                          icon: Icon(
                            Icons.format_align_left,
                            color: Colors.white,
                            size: 35,
                          ),
                          color: Color(0xFF76423B),
                        ),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: RaisedButton(
                          child: Text("Exit",style:TextStyle( color:Colors.white,fontSize: 15)),
                          color:Theme.of(context).primaryColor,
                          onPressed: (){
                            SystemNavigator.pop();
                          }),
                    ),
                  ],
                ),
              ),
            )],
        ),
      ),
    );

  }
  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      _scaffoldKey.currentState!.showSnackBar(new SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Text(
              "Are you sure you want to exit",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print("tapped");
                SystemNavigator.pop();
              },
              child: Text("Yes",
                  style: TextStyle(
                      color:Colors.white)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ));
      return Future.value(false);
    }
    return Future.value(true);
  }
  Expanded dashboardCard(BuildContext context, {onTap, title, icon, color}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 110,
          margin: EdgeInsets.fromLTRB(0, 2, 0, 8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
              child: Padding(padding: const EdgeInsets.all(18.0), child: icon),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
int count = 0;
Padding myAppBar(BuildContext context,title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 50, 20, 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.white),
        ),
        SizedBox(width: 35),
      ],
    ),
  );
}

