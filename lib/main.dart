


import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';




void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with TickerProviderStateMixin{
  bool alreadySaved = false;


  _buildProductImagesWidgets() {
    TabController imagesController = TabController(length: 3, vsync: this);
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height / 4,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network('http://newsimg.hankookilbo.com/2017/12/06/201712060419390897_1.jpg'),
Image.network('http://junggun.co.kr/wp-content/uploads/2017/03/cropped-maxresdefault.jpg'),
Image.network('https://media1.s-nbcnews.com/j/newscms/2018_30/1355945/home-exterior-today-180726-tease_3f99937c609d875fece6a12af1594bd9.fit-560w.jpg')
           ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    @override

    Column buildButtonColumn(IconData icon, String label) {
      //Color color = Theme.of(context).primaryColor;
      Color color = Colors.blueGrey;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color,size: 35.0,),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    return new Scaffold(
      //     appBar: new AppBar(
      //       title: new Text(widget.title),
      //     ),
      body: SafeArea(
        child:

        new Container(

          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Stack(
                alignment: const Alignment(1.0,-1.0),
                children: <Widget>[
                  new InkWell(

                    child:Container(
                      padding:  EdgeInsets.all(0.0),
                      // height: 200,
                    //  width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height /3 ,
                child: _buildProductImagesWidgets(),



                /*      child:
                      Carousel(
                        boxFit: BoxFit.cover,
                        images: [
                          Image.network('http://newsimg.hankookilbo.com/2017/12/06/201712060419390897_1.jpg')

                         // FadeInImage.assetNetwork(placeholder: null, image: 'http://newsimg.hankookilbo.com/2017/12/06/201712060419390897_1.jpg')
                        ],

                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 2000),

                      ),
                      */

                    ),
                    onTap: (){print('abtab');},
                    onDoubleTap: (){
                      print('doubletap');
                    },
                  ),



                  IconButton(
                      icon: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
                        color: alreadySaved ? Colors.red : Colors.red,),
                      onPressed: (){
                        print('sss');
                        setState(() {
                          if (alreadySaved) {
                            alreadySaved = true;
                          } else {
                            alreadySaved = false;
                          }
                        });

                      })

                ],

              ),







              Expanded(
                  child: ListView(

                children: <Widget>[
                  ListTile(
                    title: Text('환호 해맞이공원 101호 사막뷰!',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700),),
                    trailing:Icon(Icons.person),
                  ),

                  ListTile(
                    title: Text('₩40000 /day',style: TextStyle(color: Colors.grey),),
                    subtitle: Text('9/3~10/21' +' is available',style: TextStyle(color: Colors.blue),),
                    trailing: RaisedButton(onPressed: (){},
                      color: Colors.lightBlueAccent,
                      child: Text('지금예약',style: TextStyle(color: Colors.white),),),
                  ),
                //  Divider(height:20.0,color: Colors.black,indent: 40,),

                  ExpansionTile(

                    title:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                 //     buildButtonColumn(Icons.people, 'For 1 people'),
                      buildButtonColumn(Icons.hotel, '1 bed'),
                      buildButtonColumn(Icons.not_interested, 'No bath room'),
                      buildButtonColumn(Icons.people, 'For 1 people'),
               //       buildButtonColumn(Icons.home, 'Mini 2 room'),
                    ],
                  ),
                    children: <Widget>[
Column(
  children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(Icons.people, 'For 1 people'),
        buildButtonColumn(Icons.hotel, '1 bed'),
        buildButtonColumn(Icons.not_interested, 'No bath room'),
       // buildButtonColumn(Icons.home, 'Mini 2 room'),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(Icons.people, 'For 1 people'),
        buildButtonColumn(Icons.hotel, '1 bed'),
        buildButtonColumn(Icons.not_interested, 'No bath room'),
        buildButtonColumn(Icons.home, 'Mini 2 room'),
      ],
    ),


  ],
)


                    ],
                    trailing: Text('more'),

                  ),

                  /*
                  Container(
                    child: Column(
                      children: <Widget>[

                         InkWell(

                            child:    Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildButtonColumn(Icons.people, 'For 1 people'),
                                buildButtonColumn(Icons.hotel, '1 bed'),
                                buildButtonColumn(Icons.not_interested, 'No bath room'),
                                buildButtonColumn(Icons.home, 'Mini 2 room'),
                              ],
                            ),
                            onTap: (){

                              _neverSatisfied();
                              print('icon....');
                            },
                          ),


                     
                      ],


                    ),
                  ),

                  */
                Container(
                    child:Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                          child:  Text('세계 최고의 건축물! 7대 불가사의에서 하루를 보내세요!', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(320.0, 0.0, 0.0, 0.0),
                          child:  FlatButton(
                            // padding: EdgeInsets.fromLTRB(300.0, 0.0, 0.0, 0.0),
                            child: Text('more'),
                            onPressed: (){},
                          ),
                        ),

                      ],
                    ),
                  ),

        Image.asset('assets/map.png',),



                ],
              ))





              /*별점매기기 + review
          Container(

            padding: EdgeInsets.fromLTRB(13.0, 0.0, 10.0, 0.0),
            child: Row(

              children: <Widget>[
                Text('⭐⭐⭐⭐⭐',style: TextStyle(fontSize: 20.0),),
                FlatButton(
                  onPressed: (){},
                  child: Text('Review',style: TextStyle(color: Colors.brown),) ,)
              ],
            ) ,
          ),
    */


            ],
          ),
        ),




      ),



    );
  }


  Future<void> _neverSatisfied() async {


    SizedBox buildButtonColumn(IconData icon, String label) {
      //Color color = Theme.of(context).primaryColor;
      Color color = Colors.blueGrey[700];

      return SizedBox(


        width: 90,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(icon, color: color,size: 35.0,),
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
              ),
            ],
          ),

      );
    }
    return showDialog<void>(


      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(



          title: Text('More Detail'),


         content: SingleChildScrollView(
            child: ListBody(

              children: <Widget>[

                  Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[
                                                                                          
                  buildButtonColumn(Icons.desktop_mac, 'No bath room'),
                  buildButtonColumn(Icons.home, 'Mini 2 room'),                           

                    ],
                  )   ,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[

                      buildButtonColumn(Icons.not_interested, 'No bath room'),
                      buildButtonColumn(Icons.airline_seat_legroom_reduced, 'Mini 2 room'),

                    ],
                  )   ,



                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[

                      buildButtonColumn(Icons.not_interested, 'No bath room'),
                      buildButtonColumn(Icons.home, 'Mini 2 room'),

                    ],
                  )   ,



                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                        buildButtonColumn(Icons.people, 'For 1 people'),
                      
                    buildButtonColumn(Icons.home, 'Mini 2 room'),

                  ],
                )   ,
                  Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[

                      buildButtonColumn(Icons.home, 'Mini 2 room'),

                      buildButtonColumn(Icons.hotel, '1 bed'),


                    ],
                  )   ,


              ],
            ),
          ),

                        /*
          content:  GridView.count(crossAxisCount: 2    ,
         children: <Widget>[
                     Text('adfdaf')
            ],),
                       */

          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}




/*

import 'package:flutter/material.dart';

class AppBarBottomSample extends StatefulWidget {
  @override
  _AppBarBottomSampleState createState() => _AppBarBottomSampleState();
}

class _AppBarBottomSampleState extends State<AppBarBottomSample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: choices.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _nextPage(int delta) {
    final int newIndex = _tabController.index + delta;
    if (newIndex < 0 || newIndex >= _tabController.length) return;
    _tabController.animateTo(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Bottom Widget'),
          leading: IconButton(
            tooltip: 'Previous choice',
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              _nextPage(-1);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'Next choice',
              onPressed: () {
                _nextPage(1);
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(accentColor: Colors.white),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: TabPageSelector(controller: _tabController),
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: choices.map((Choice choice) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ChoiceCard(choice: choice),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(AppBarBottomSample());
}


*/
