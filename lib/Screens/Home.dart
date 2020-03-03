
import 'package:booking_beauty/Screens/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var first=0;
  var second=7;
  var third=2;
  var fourth=9;
  // var fifth=0;
  @override
  Widget build(BuildContext context) {
    var deafaultScreenwidth = 325.0;
    var deafaultScreenheight = 812.0;
    ScreenUtil.instance = ScreenUtil(
        width: deafaultScreenwidth,
        height: deafaultScreenheight,
        allowFontScaling: true)
      ..init(context);
    return Scaffold(
       body: ListView(
         shrinkWrap: true,
         children: <Widget>[
          SizedBox(height: ScreenUtil.getInstance().setHeight(80),),
          _renderStart(Color.fromRGBO(234, 94, 101, 1),"Fresh Cuts","Look Great",Colors.white38,Colors.white70,first,'lib/assets/images/bride.png'),
          
          (first == 1)?_renderData():SizedBox(height:1.0),
          SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
          _renderNext(Color.fromRGBO(255, 96, 42, 1),"Highlight Your","Touch",Colors.white38,Colors.white70,second,'lib/assets/images/queen.jpg'),
         (second == 8)?_renderData():SizedBox(height:1.0),
          SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
           _renderStart(Color.fromRGBO(97, 122, 249, 1),"Feel Fresh","Relax",Colors.white38,Colors.white70,third,'lib/assets/images/hairgirl.png'),
          (third == 3)?_renderData():SizedBox(height:1.0),
          SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
          _renderNext(Color.fromRGBO(56, 56, 56, 1),"Make Your","Nail Artistic",Colors.white38,Colors.white70,fourth,'lib/assets/images/nail2.jpg'),
          (fourth == 10)?_renderData():SizedBox(height:1.0),
         ],
       ),
    );
  }


  Widget _renderStart(Color backcolor,String text,String text1, Color color,Color color1,int value,String imagetext ){
    return InkWell(
      onTap: (){
if (value==0) {
  setState(() {
    first=1;
  });
}
else if (value==2) {
  setState(() {
    third=3;
  });
}
else if (value == 1) {
  setState(() {
    first=0;
  });
}
else if (value == 3) {
  setState(() {
    third=2;
  });
  
}
      },
      child:Container(
        height: ScreenUtil.getInstance().setHeight(130.0),
        decoration:BoxDecoration(
          color: Colors.white70,
          border:Border.all(color: Color.fromRGBO(128, 128, 128, 0.2),)
        ) ,
        // margin: EdgeInsets.only(left:10.0,right:10.0),
width: ScreenUtil.getInstance().setWidth(325.0),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
    _renderTextContainer(backcolor,text,text1,color,color1),
    Image(
                image:AssetImage('$imagetext'),
                width: ScreenUtil.getInstance().setWidth(100),
                // width: 90,
                fit: BoxFit.fitWidth,
              ),
  ],
),
    ));
  }

  Widget _renderTextContainer(Color backcolor,String text,String text1, Color color,Color color1 ){

    return Container(
      height: ScreenUtil.getInstance().setHeight(100.0),
      width: ScreenUtil.getInstance().setWidth(200.0),
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: backcolor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("$text",
            style: TextStyle(
              color:color,
              fontSize: 22.0
            ),
            ),
            Text("$text1",
            style: TextStyle(
              color:color1,
              fontSize: 15.0
            ),
            ),
              ],
            )
    );
  }


  Widget _renderNext(Color backcolor,String text,String text1, Color color,Color color1, int value,String imagetext ){
    return InkWell(
      onTap: (){
        if (value ==7) {
          setState(() {
            second= 8;
          });
          
        }
        else if(value == 9){
          setState(() {
            fourth=10;
          });
        }
        else if (value == 8) {
          setState(() {
            second =  7;
          });
          
        }
        else if(value == 10){
          setState(() {
            fourth = 9;
          });
        }
      },
      child:Container(
        color: Colors.white70,
        height: ScreenUtil.getInstance().setHeight(130.0),
        margin: EdgeInsets.only(left:10.0,right:10.0),
width: ScreenUtil.getInstance().setWidth(325.0),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
    Image( image:AssetImage('$imagetext'),
                 width: ScreenUtil.getInstance().setWidth(100),
                // width: 90,
                fit: BoxFit.fitWidth,
              ),
              _renderTextContainer(backcolor,text,text1,color,color1),
  ],
),
    ));
  }

Widget _renderData(){

  return Container(
    height: ScreenUtil.getInstance().setHeight(218),
    color: Color.fromRGBO(229, 229, 229, 1),
    padding: EdgeInsets.only(left:30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: ScreenUtil.getInstance().setHeight(25.0),),
        _renderText("Wash",Colors.black54),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderText("Wash & cut",Colors.black54),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderText("Wash & treat",Colors.black54),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderText("Wash, treat and cut",Colors.black54),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderText("Colour Application on natural hair",Colors.black54),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderText("Hair cut",Colors.black54),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderText("All treatment",Colors.pink),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
      ],
    ),
  );
}

Widget _renderText(String text,Color color){
  return InkWell(
    onTap: (){
       Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Service(),
              ),
            );
    },
    
    child:Text("$text",
  style: TextStyle(
    fontSize: 15.0,
    color:color,
  ),));
}
}