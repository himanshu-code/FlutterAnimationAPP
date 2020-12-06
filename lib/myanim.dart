import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
     
  
  
  

var mybody=Container(alignment: Alignment.center,
                  height:double.infinity,
                  width: double.infinity,
                  
                  decoration: BoxDecoration(color: Colors.black,),
                   child:Stack(alignment:Alignment.topCenter,children: <Widget>[ Container(alignment: Alignment.topCenter ,
                            height: 140,
                            width:290,
                            margin: EdgeInsets.all(30),
                             decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.purpleAccent,width:3)),
                            child: Column(mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('Himanshu Bhardwaj',style: TextStyle(fontSize:20*animation.value+0,fontWeight: FontWeight.bold,color: Colors.black ),),
                              Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[Icon(Icons.email,color: Colors.blue,),
                              Text('himanshu.bhardwaj307@gmail.com',style:TextStyle(fontSize: 15*animation.value+0,fontWeight:FontWeight.bold,color: Colors.blue) ,)
                              ],
                              )
                            ],
                            
                            ),                    
                        
                        ),
                        GestureDetector(onTap: () {
                              myanicon.forward(from: 0.5);
                              print("clicked ..");
                              }  ,
                        child: Container(
                          
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://raw.githubusercontent.com/himanshu-code/MYPic/master/52333392_533510757158818_6845402366234066944_o.jpg'),
                              fit: BoxFit.cover
                              ),
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.purpleAccent,width: 3,)
                              ),
                              width: 100 * animation.value ,
                              height: 100* animation.value  ,
                        ),
                        
                        
                        )
                         ],
                          ) ,
                  );
    return Center(
      child: mybody,
    );
  }
}
