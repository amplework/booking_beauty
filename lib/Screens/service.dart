import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Service extends StatefulWidget {
  Service({Key key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  var first = 0;
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
      backgroundColor: Colors.white,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          SizedBox(height: ScreenUtil.getInstance().setHeight(60),),
          _renderSearch(),
          _renderFilter(),
          _renderImage(),
          _renderData(),
        ],
      ),
    );

  }

Widget _renderData(){
  return Container(
    padding: EdgeInsets.only(left:20.0,right:20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: ScreenUtil.getInstance().setHeight(20.0),),
        _renderText1("Janea Nail Studio",Colors.black54,FontWeight.w600,18.0),
        SizedBox(height: ScreenUtil.getInstance().setHeight(10.0),),
        _renderText1("27-29 King Street West, Central Retail District, Manchester",Colors.grey,FontWeight.w300,12.0),
        SizedBox(height: ScreenUtil.getInstance().setHeight(10.0),),
       _renderStarData(),
        // _renderText1("4.8 * * * * *  38 reviews",Colors.yellow,FontWeight.w400,12.0),
        SizedBox(height: ScreenUtil.getInstance().setHeight(15.0),),
        _renderRowData("Signature Gel Manicure","from €21",Colors.black,Colors.grey,15.0,12.0,FontWeight.w400,FontWeight.w400),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderRowData("45 mins","Save 25%",Colors.grey,Colors.blue,15.0,12.0,FontWeight.w300,FontWeight.w400),
        SizedBox(height: ScreenUtil.getInstance().setHeight(15.0),),
        _renderRowData("Express Gel Manicure with gel polish removal","from €21",Colors.black,Colors.grey,15.0,12.0,FontWeight.w400,FontWeight.w400),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderRowData("40 mins","Save 25%",Colors.grey,Colors.blue,15.0,12.0,FontWeight.w300,FontWeight.w400),
        SizedBox(height: ScreenUtil.getInstance().setHeight(15.0),),
        _renderRowData("Signature Gel Manicure with gel \npolish removal","from €21",Colors.black,Colors.grey,15.0,12.0,FontWeight.w400,FontWeight.w400),
        SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
        _renderRowData("55 mins","Save 25%",Colors.grey,Colors.blue,15.0,12.0,FontWeight.w300,FontWeight.w400),
        SizedBox(height: ScreenUtil.getInstance().setHeight(25.0),),
        Container(
          padding: EdgeInsets.only(left:20.0),
          child:InkWell(
            onTap: (){},
            child: _renderText1("Show all services...",Colors.red,FontWeight.w300,13.0),
          )
          
          
        )
      ],
    ),
  );
}  
Widget _renderStarData(){
  return Row(children: <Widget>[
Text("4.8 ",
style: TextStyle(
  fontSize: 14.0,
  color: Colors.yellow,
  fontWeight: FontWeight.w400
),
),
Image.asset('lib/assets/images/star.png',width: 10,),
Image.asset('lib/assets/images/star.png',width: 10,),
Image.asset('lib/assets/images/star.png',width: 10,),
Image.asset('lib/assets/images/star.png',width: 10,),
Text(" 38 reviews",
style: TextStyle(
  fontSize: 14.0,
  color: Color.fromRGBO(128, 128, 128, 0.5),
  fontWeight: FontWeight.w400
),
)
  ],);
}
Widget _renderRowData(String text,String text1,Color color,Color color1,var fontsize, var fontsize1,FontWeight fontWeight,FontWeight fontWeight1){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      _renderText1("$text",color,fontWeight,fontsize),
      _renderText1("$text1",color1,fontWeight1,fontsize1),
    ],
  );
}
Widget _renderText1(String text,Color color,FontWeight fontWeight, var fontsize,){
  return Text("$text",
  maxLines: 2,
  style: TextStyle(
    
    color: color,
    fontSize: fontsize,
    fontWeight: fontWeight
  ),
  );
}
Widget _renderImage(){
  return Image.asset('lib/assets/images/elements.png',
  // width:450,
  height: ScreenUtil.getInstance().setHeight(150.0),
  fit: BoxFit.fitWidth,);
}
Widget _renderFilter(){
  return Container(
    height: ScreenUtil.getInstance().setHeight(80.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _renderfilteration(Icons.format_align_center,"Filter by price, rating...",Colors.red),
        _renderfilteration(Icons.map,"Map",Colors.red),
      ],
    ),
  );
}
Widget _renderfilteration(IconData iconData,String text,Color color){
  return
  //  Container(
  //   width: 200.0,
  //   child: 
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
           IconButton(
                  onPressed: () {},
                  icon: Icon(
                    iconData,
                    color: Colors.red,
                  ),
                 ),
                 
          
          Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: _renderText(text,color),
          )

        ],
      ),
    );
  // );
}
Widget _renderText(String text,Color color){
  return InkWell(
    onTap: (){
    },
    
    child:Text("$text",
  style: TextStyle(
    fontSize: 15.0,
    color:color,
  ),));
}
  Widget _renderSearch() {
    return 
    // Container(
    //   height: 300,
    //   child: 
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
              onPressed: () {
                if (first == 0) {
                  setState(() {
                    first=1;
                  });
                }
                else if(first == 1){
                  setState(() {
                    first =0;
                  });
                }

              },
              icon:(first == 0)?Icon(
                Icons.keyboard_arrow_down,
                color: Colors.red,
                
              ):Icon(
                Icons.keyboard_arrow_up,
                color: Colors.red,
              ),
              ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                _renderSerch1(Icons.search,"Gel Nails Manicure"),
                SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
               (first == 1)?_renderSerch1(Icons.map,"UK"):SizedBox(height: 1.0,),
                SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
                (first == 1)?_renderSerch1(Icons.calendar_today,"Any time"):SizedBox(height: 1.0,),
                SizedBox(height: ScreenUtil.getInstance().setHeight(5.0),),
              ],
            ),
          )
        ],
      );
      // ,
    // );
  }

  Widget _renderSerch1(IconData iconData,String text) {
    return Container(
      padding: EdgeInsets.all(0.0),
      height: ScreenUtil.getInstance().setHeight(50.0),
      width: ScreenUtil.getInstance().setHeight(327.0),
      
      child: Row(
      
        children: <Widget>[
        Container(

           height: ScreenUtil.getInstance().setHeight(50.0),
          color: Color.fromRGBO(243, 243, 243, 1),
          child: IconButton(
                onPressed: () {},
                icon: Icon(
                  iconData,
                  color: Colors.black,
                ),
               ),
        ),
              Container(
                padding: EdgeInsets.only(right:0.0),
                width: ScreenUtil.getInstance().setWidth(220.0),
                 height: ScreenUtil.getInstance().setHeight(50.0),
                color: Color.fromRGBO(243, 243, 243, 1),
                child: TextFormField(
                  initialValue: '$text',
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    
                    // contentPadding: EdgeInsets.only(top:18.0)
                  ),
                  
                ),
              )
        ],
      ),
    );
  }
}
