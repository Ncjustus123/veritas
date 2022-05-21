

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrl/views/welcome.dart';

class SelfServicePage extends StatelessWidget {
  const SelfServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).primaryColor,
      body: Column(
        children: [
          myAppBars(context,"Self Service"),
          Expanded(
              child:Container(
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
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dashboardCard(
                        context,
                        onTap:(){
                          launch(
                             "https://www.veritasregistrars.com/FAQs",
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,
                          );
                        },
                        title: "Frequently Asked Questions",
                        icon: Icon(
                          Icons.question_answer_rounded,
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
                            "https://vericlient.zenithbank.com/WebsiteContactForm/default",
                            forceSafariVC: true,
                            forceWebView: true,
                            enableJavaScript: true,);
                        },
                        title: "Contact an Agent",
                        icon: Icon(
                          Icons.support_agent,
                          color: Colors.white,
                          size: 35,
                        ),
                        color:Color(0xFF1b5e20),
                      ),
                      SizedBox(width: 20,),
                      dashboardCard(
                        context,
                        onTap:(){
                          // launch(
                          //   "https://www.veritasregistrars.com/FAQs",
                          //   forceSafariVC: true,
                          //   forceWebView: true,
                          //   enableJavaScript: true,
                          // );
                        },
                        title: "Annual Reports",
                        icon: Icon(
                          Icons.menu_book_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        color: Color(0xFF7f0000),
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
 dashboardCard(BuildContext context, {onTap, title, icon, color}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 150,
      width: 300,
      margin: EdgeInsets.fromLTRB(0, 2, 0, 30),
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
          style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
        ),
      ]),
    ),
  );
}
Padding myAppBars(BuildContext context,title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.grey.withOpacity(0.3),offset: Offset(0.2,0.4))
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Icon(
                Icons.west,
                color: Theme.of(context).primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
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