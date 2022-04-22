
import 'package:covid_19_app/Statistics.dart';
import 'package:covid_19_app/get_Started.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'models/levlemodels.dart';


class Covid19 extends StatefulWidget {
  const Covid19({Key? key, }) : super(key: key);

  @override
  State<Covid19> createState() => _Covid19State();
}

class _Covid19State extends State<Covid19> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 380,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.indigo.withOpacity(0.8),
                            Colors.black38.withOpacity(0.9)
                          ]
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                            child: Row(
                              children: [
                                Text(
                                  "COVID-19",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                  ),
                                ),
                                Expanded(child: Container()),
                                IconButton(onPressed: (){},
                                    icon:Icon(Icons.notifications_none,color: Colors.white,size: 30,) )
                              ],
                            ),
                          ),
                          SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                                "Are you feeling sick?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                                ),
                          ),
                          SizedBox(height: 25,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "BEIJING — While China tries to shake off omicron,",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "It’s a critical time for that portion of China’s",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,

                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Although state-owned corporations",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,

                              ),
                            ),
                          ),
                          SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.phone_iphone_rounded,color: Colors.white,),
                                          SizedBox(width: 10,),
                                          Text(
                                            "Call Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                GestureDetector(
                                  onTap: (){},
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(40
                                      ),
                                    ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.messenger,color: Colors.white,),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Send",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Ways For Prevention:",
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 250,
                            child: Column(
                              children: [
                                Text(
                                  "*Clean your hands often",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  "*6 feets Social Distance",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  "*Wear facemask",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/im7.png"
                                  )
                                )
                              ),

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 380,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        offset: Offset(8,10),
                        color: Colors.indigo.withOpacity(0.3),
                      ),
                      BoxShadow(
                        blurRadius: 20,
                        offset: Offset(-1,-5),
                        color: Colors.indigo.withOpacity(0.3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Colors.indigo.withOpacity(0.8),
                        Colors.black38.withOpacity(0.8),
                      ],
                    )
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "images/im8.png"
                            ),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        margin: EdgeInsets.only(left: 150),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Text(
                                "What are you do if you have Covid19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 30),
                              child: Text(
                                "Read The Article Here",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(height: 20,),


              ],
            ),
          ),
        ),
      );

  }

}
