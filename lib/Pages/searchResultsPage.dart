import 'package:flutter/material.dart';
import 'package:unimed/Components/usefulStuff.dart';
import 'package:unimed/Pages/searchWithSuggestions.dart';
import 'package:unimed/main.dart';

class searchResults extends StatefulWidget {
  final searchTerm;
  const searchResults({Key? key, required this.searchTerm}) : super(key: key);

  @override
  State<searchResults> createState() => _searchResultsState();
}

class _searchResultsState extends State<searchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Hero(
              tag: 'search-icon-leading',
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            title: Hero(
              tag: 'search-text',
              child: Material(
                  color: Colors.transparent, child: Text(widget.searchTerm)),
            ),
          ),
          SubHeadlines(text: 'Diagnosis'),
          Diagnosis(),
          SubHeadlines(text: 'Hospitals'),
          Hospitals(),
          SubHeadlines(text: 'Doctors'),
          Doctors(),
          SubHeadlines(text: 'Commonly Bought'),
          CommonlyBought(),
          SubHeadlines(text: 'Pharmacies'),
          Pharmacies(),



        ],
      ),
    );
  }
}

class Diagnosis extends StatefulWidget {
  const Diagnosis({Key? key}) : super(key: key);

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        // color: Colors.red,
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        // height: screenHeight/3.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '20% . Common Cold',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 60,
              decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,

                // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '40% . Tonsils',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '40% . Food Poisoning',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
              ),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.person_rounded,),
                    radius: 25,
                    backgroundColor: Color(0xFFFF9393),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: Text(
                      'Consult A Doctor',
                      style: TextStyle(
                        fontSize: 15,

                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class Hospitals extends StatelessWidget {
  const Hospitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        // color: Colors.red,
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        // height: screenHeight/4.9 ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '20Km  .  Sri Sugum Poly Clinic',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).brightness== Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3),
                        child: Icon(Icons.location_on,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616) ,),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '40Km  .  Kathir Memorial Hospital',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).brightness== Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3),
                        child: Icon(Icons.location_on,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616) ,),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '20Km  .  24Hours CM Hospital',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).brightness== Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3),
                        child: Icon(Icons.location_on,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616) ,),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            ),
            // SizedBox(height: 20,),


          ],
        ),
      ),
    );

  }
}


class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).brightness==Brightness.dark? Colors.white10:Color(0xFFFFFFFF),
        ),
        height:screenHeight/5 ,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              // color: Colors.red,
              // height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius:45,
                    backgroundColor: Theme.of(context).brightness==Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3) ,
                    child: Icon(Icons.person,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616)),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Text("Dr. Kamala Deepak",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              // height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius:45,
                    backgroundColor: Theme.of(context).brightness==Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3) ,
                    child: Icon(Icons.person,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616)),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Text("Dr. Sridevi Anantharaman",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,maxLines: 1,overflow: TextOverflow.ellipsis,),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              // height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius:45,
                    backgroundColor: Theme.of(context).brightness==Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3) ,
                    child: Icon(Icons.person,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616)),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    // color: Colors.red,
                    child: Text("Dr. Thomas George",style: TextStyle(fontSize: 20),maxLines: 1,textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              // height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius:45,
                    backgroundColor: Theme.of(context).brightness==Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3) ,
                    child: Icon(Icons.person,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616)),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Text("Dr. Hariharan VS",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              // height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius:45,
                    backgroundColor: Theme.of(context).brightness==Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3) ,
                    child: Icon(Icons.person,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616)),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Text("Dr. T . Vijay",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class CommonlyBought extends StatefulWidget {
  const CommonlyBought({Key? key}) : super(key: key);

  @override
  State<CommonlyBought> createState() => _CommonlyBoughtState();
}

class _CommonlyBoughtState extends State<CommonlyBought> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).brightness==Brightness.dark? Colors.white10:Color(0xFFFFFFFF),
        ),
        height:screenHeight/5 ,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            InkWell(
              // splashColor: Colors.red,
              child: Container(
                // color: Colors.red,
                // height: 100,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 90,
                      decoration:BoxDecoration(
                        image: DecorationImage(image:NetworkImage('https://th.bing.com/th/id/OIP.PNmdWLPlwyHpVco9udC_RQHaLI?w=123&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7',),fit: BoxFit.fill ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text("Digene",style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      child: Text("(200ml)",style: TextStyle(fontSize: 15,fontFamily: "PSXL"),),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              // splashColor: Colors.red,
              child: Container(
                // color: Colors.red,
                // height: 100,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 90,
                      decoration:BoxDecoration(
                        image: DecorationImage(image:NetworkImage('https://onemg.gumlet.io/l_watermark_346,w_480,h_480/a_ignore,w_480,h_480,c_fit,q_auto,f_auto/cropped/fx5zcdfgs5sezfoa6hbt.jpg',),fit: BoxFit.fill ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text("Benadryl",style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      child: Text("(150ml)",style: TextStyle(fontSize: 15,fontFamily: "PSXL"),),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              // splashColor: Colors.red,
              child: Container(
                // color: Colors.red,
                // height: 100,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 90,
                      decoration:BoxDecoration(
                        image: DecorationImage(image:NetworkImage('https://img1.hkrtcdn.com/22258/prd_2225730-HealthKart-HK-Vitals-Vitamin-D3-2000-IU-60-capsules-Unflavoured_c_l.jpg',),fit: BoxFit.fill ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text("Vitamin D3",style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      child: Text("(60 Capsules)",style: TextStyle(fontSize: 15,fontFamily: "PSXL"),),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              // splashColor: Colors.red,
              child: Container(
                // color: Colors.red,
                // height: 100,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 90,
                      decoration:BoxDecoration(
                        image: DecorationImage(image:NetworkImage('https://5.imimg.com/data5/EV/SC/EM/SELLER-3831431/ibuprofen-500x500.jpg',),fit: BoxFit.fill ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text("IbuProfen",style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      child: Text("(800mg)",style: TextStyle(fontSize: 15,fontFamily: "PSXL"),),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              // splashColor: Colors.red,
              child: Container(
                // color: Colors.red,
                // height: 100,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 90,
                      decoration:BoxDecoration(
                        image: DecorationImage(image:NetworkImage('https://5.imimg.com/data5/SELLER/Default/2022/9/BS/AE/CO/88792944/amoxycillin-capsules-500-mg-500x500.jpg',),fit: BoxFit.fill ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      // color: Colors.red,
                      alignment: Alignment.center,
                      child: Text("Amoxycillin",style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      child: Text("(500mg)",style: TextStyle(fontSize: 15,fontFamily: "PSXL"),),
                    ),
                  ],
                ),
              ),
            ),


            


          ],
        ),
      ),
    );;
  }
}


class Pharmacies extends StatefulWidget {
  const Pharmacies({Key? key}) : super(key: key);

  @override
  State<Pharmacies> createState() => _PharmaciesState();
}

class _PharmaciesState extends State<Pharmacies> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        // color: Colors.red,
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        height: screenHeight/4 ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '5 km . Apollo Pharmacy',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).brightness== Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3),
                        child: Icon(Icons.location_on,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616) ,),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '10 Km . RK Medicals',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).brightness== Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3),
                        child: Icon(Icons.location_on,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616) ,),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark? Colors.white10:LBoxFill,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '20 km . MAS Pharmacy',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).brightness== Brightness.dark? Color(0xFF474747):Color(0xFFE3E3E3),
                        child: Icon(Icons.location_on,color:Theme.of(context).brightness== Brightness.dark? Color(0xFFF2F2F2):Color(0xFF161616) ,),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            ),
            // SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}
