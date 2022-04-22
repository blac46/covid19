import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'feeds/api_network.dart';
import 'models/levlemodels.dart';


class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  late Future<NewsContent> data;
  void initState() {
    // data = getapi();
    Network network =Network();
    data = network.getapi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.withOpacity(0.9),
      body:Container(
        child:FutureBuilder(
        future: data,
        builder: (context,AsyncSnapshot<NewsContent> snapshots){
        if(snapshots.hasData){
        return ListView.builder(
            itemCount:snapshots.data!.newsarticle.length ,
            itemBuilder: (context,index){
              var getdata = snapshots.data!.newsarticle[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 50,
                    margin: EdgeInsets.only(top: 30,left: 30),
                    child:
                    Icon(Icons.menu_outlined,size: 30,color: Colors.white,),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      "Statistics",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              getdata.country.toString(),
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),
                            ),
                            SizedBox(width: 20,),
                            IconButton(onPressed: (){},
                                icon:Icon(Icons.arrow_drop_down_circle,color: Colors.indigo,)
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cities',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),
                            ),
                            SizedBox(width: 10,),
                            IconButton(onPressed: (){},
                                icon:Icon(Icons.arrow_drop_down_circle,color: Colors.indigo,)
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              getdata.critical.toString(),
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),
                            ),
                            SizedBox(width: 10,),
                            IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_drop_down_circle,color: Colors.indigo,)
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "Daily",
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "Weekly",
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "Monthly",
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 120,
                        width: 190,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 60,top: 20),
                              child: Text(
                               "Affected",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                getdata.critical.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 190,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 60,top: 20),
                              child: Text(
                                'Deaths',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                getdata.deaths.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                'Recoveries',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                getdata.recovered.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:15,top: 20),
                              child: Text(
                                'Active',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                getdata.active.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5,top: 20),
                              child: Text(
                                'Serious',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                getdata.todayCases.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40)
                            )
                        ),

                      )
                    ],
                  ),

                ],
              );
            }
        );
      }
      return Center(child: CircularProgressIndicator());
    }
    )
    )
    );
  }
}



