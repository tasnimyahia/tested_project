import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:tested_project/main.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
       scrollDirection :Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const Text(
              "Hello this is new screen",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 500,
              height: 400,
              padding:const EdgeInsets.all(20),
              margin:const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.red, style:BorderStyle.solid,),
        
              ),
        
            ),
            Image.asset('assets/Tablee.png' , width: 100,
            height: 200,
            fit: BoxFit.fitWidth,
            ),
        
             ],
        ),
      ),
    );
  }
}


/*
MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 122, 185, 236),
          title: const Text(
            "Sofa Room",
            style: TextStyle(
              color: Color.fromARGB(234, 0, 0, 0),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 300,
                height: 350,
                child: Image.asset(
                  "assets/sofa.png",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(1000)),
                    border: Border.all(color: Colors.black, width: 2),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(-15, -15),
                          spreadRadius: 2,
                          blurRadius: 20),
                      BoxShadow(
                          color: Colors.green,
                          blurRadius: 20,
                          offset: Offset(15, 15),
                          spreadRadius: 3)
                    ]),
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 20),
                child: const Text(
                  "Sofa Chair",
                  style: TextStyle(
                    //color: Colors.blueAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //img

              Image.asset(
                "assets/Tablee.png",
                fit: BoxFit.fill,
              ),
              //child:Image.networking('https://imag.org'),
              Container(
                child: Text(Employee[0]["name"]),
                width: 100,
              ),
              Container(
                width: 100,
                height: 100,
                child: ListView.builder(
                  itemCount: Employee.length,
                  itemBuilder: (context, i) {
                    return Container(
                      child: Text(Employee[i]['name']),
                    );
                  },
                ),
              ),
              // Container(
              //  // width: 500,
              //  // height: 500,
              //   child: ListView.builder(
              //     itemCount: Employee.length,
              //     itemBuilder: (context , i){
              //       return Container(child: Text(Employee[i]['age']),);
              //     },
              //   ),
              // ),
              Container(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NewScreen(),
                    ));
                  },
                  child: const Icon(
                    Icons.favorite_outline_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.topRight,

                child: const Icon(
                  Icons.circle_rounded,
                  color: Color.fromARGB(255, 226, 139, 168),
                  size: 30,
                ),
                //color: Colors.pink,
              ),
              Container(
                decoration: BoxDecoration(),
                alignment: Alignment.topRight,

                child: const Icon(
                  Icons.circle_rounded,
                  color: Colors.green,
                  size: 30,
                ),
                //color: Colors.pink,
              ),
              ////////////
              Container(
                alignment: Alignment.topRight,

                child: const Icon(
                  Icons.circle_rounded,
                  color: Color.fromARGB(255, 226, 139, 168),
                  size: 30,
                ),
                //color: Colors.pink,
              ),
              Container(
                decoration: BoxDecoration(),
                alignment: Alignment.topRight,

                child: const Icon(
                  Icons.circle_rounded,
                  color: Colors.green,
                  size: 30,
                ),
                //color: Colors.pink,
              ),
              Container(
                alignment: Alignment.topRight,

                child: const Icon(
                  Icons.circle_rounded,
                  color: Color.fromARGB(255, 226, 139, 168),
                  size: 30,
                ),
                //color: Colors.pink,
              ),
              Container(
                decoration: BoxDecoration(),
                alignment: Alignment.topRight,

                child: const Icon(
                  Icons.circle_rounded,
                  color: Colors.green,
                  size: 30,
                ),
                //color: Colors.pink,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 117, 163),
                  borderRadius: BorderRadius.all(Radius.circular(1000)),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.green,
                        offset: Offset(-10, -10),
                        blurRadius: 20,
                        spreadRadius: 3),
                  ],
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 20),
                height: 50,
                margin: EdgeInsets.all(22),
                child: const Text(
                  "Tasnnem Yahia",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: Colors.pink,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.orange,
                        offset: Offset(-10, 10),
                        spreadRadius: 22,
                      )
                    ]),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: const Text(
                  "Click Here",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/sofa.png",
                      width: 60,
                      height: 60,
                    ),
                    Text("Hello "),
                    Text("Hello "),
                    Text("Hello "),
                    Image.asset(
                      "assets/sofa.png",
                      width: 60,
                      height: 60,
                    ),
                    Image.asset(
                      "assets/sofa.png",
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              ),
              Container(
               
               padding: EdgeInsets.all(20),
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 4, 62, 109),
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context,i){
                   return Container(
                      color: Colors.black,
                      height: 10,
                    );
                 },
                 
                  itemCount: Employee.length,
                  itemBuilder: (context, i) {
                    return Container(
                      child: Text(Employee[i]['name'],
                      style: TextStyle(fontSize: 20,),
                      ),
                      color: i.isEven ? Colors.pink:Colors.blue,
                     
                    );
                  },
                ),
              ),
              Container(
                width: 200,
                height:1000,
                
                child: GridView.builder(
                  
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 15.0,
                    childAspectRatio: 0.5,
                    mainAxisExtent: 100.0,
                    ),
                    scrollDirection:Axis.horizontal,
                   itemBuilder: (context,index){
                    return Container(child: Text(Employee[index]['name'],
                    style: TextStyle(fontSize: 20),),
                    color: Colors.red,
                    

                    );
                   },
                   itemCount: Employee.length,
                   
                   ),
              ),
            ],
          ),
        ),
      ),

    );
  

 */

/* 
MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 8, 117, 94),
          title: Text("TV"),
        ),
        body: ListView(
          children: [
            Card(
              child: Container(
                child: Image.asset(
                  'assets/tv.png',
                  width: 500,
                  height: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Card(
              color: Color.fromARGB(255, 107, 194, 194),
              child: ListTile(
                title: Text("title",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                subtitle: Text("subtitle",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                trailing: Text("trailing",style: TextStyle(fontSize: 20.0, color: Colors.white)),
                leading: Text('leading',style: TextStyle(fontSize: 20.0, color: Colors.white)),
                
              ),
            ),
            Card(
              shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

            color: Color(0xff237766),
            child: ListTile(
              title:Text('Tasneem',
              style:TextStyle(fontSize: 20,color: Colors.white)),
              leading:Text('1',
              style:TextStyle(fontSize: 20,color: Colors.white)),
              subtitle: Text('Age : 21',
              style:TextStyle(fontSize: 20,color: Colors.white)),
              trailing:Text('Student',
              style:TextStyle(fontSize: 20,color: Colors.white)),
            ),
            
           ),
          
          const Card(
            color: Color(0xff237766),
            child: ListTile(
              title:Text('laith',
              style:TextStyle(fontSize: 20,color: Colors.white)),
              leading:Text('2',
              style:TextStyle(fontSize: 20,color: Colors.white)),
              subtitle: Text('Age : 22',
              style:TextStyle(fontSize: 20,color: Colors.white)),
              trailing:Text('Student',
              style:TextStyle(fontSize: 20,color: Colors.white)),
            ),
           ),
         Expanded(
           child: Container(
            child:IconButton(iconSize:50,onPressed: (){}, icon: Icon(Icons.star , color: Color.fromARGB(255, 8, 117, 94),),),
           ),
         ),
          // floatingActionButtonLocation:FloatingActionButtonLocation.endTop,

         FloatingActionButton(
         
           onPressed : (){},
           child:Icon(Icons.add,size: 30,),
         ),
          ],
        ),
      ),
    );
  
*/