import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:dots_indicator/dots_indicator.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  List<String> images=['assets/images/hondaactiva1.jpg','assets/images/hondaactiva2.jpg','assets/images/hondaactiva3.jpg'];
  final List<String> settingsTitle = ['Pricing','Pickup location','Vehicle Photos','Vehicle Description','Set availability','Notes for pickup'];
  final List<IconData> icons = [Icons.currency_rupee_sharp,Icons.location_on_outlined,Icons.camera_alt_outlined,Icons.notes_sharp,Icons.calendar_month_sharp,Icons.sticky_note_2_outlined];
  void switchImage(){
    setState((){
      currentIndex = (currentIndex+1)%images.length;
    });
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(78),
          child: Padding(
            padding: const EdgeInsets.only(top:20),
            child: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                  'Honda Activa 110cc',
                  style: TextStyle(
                      color: Color(0xFF323232),
                      fontFamily: 'FontMain'
                  ),
              ),
              elevation: 4,
              leading: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back,color: Color(0xFF323232),),
                  onPressed: () {
                  },
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              images[currentIndex],
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 21,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color:const Color(0xFFF2F2F2),

                            ),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Color(0xFF01bd8e),
                                  ),
                                ),
                                Text(
                                  'Online',
                                   style: TextStyle(fontFamily: 'FontMain',fontSize: 13,color: Color(0xFF7d7d7c)),)
                              ],
                            ),
                          ),
                        ),
                        Positioned.fill(
                          bottom: 0,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Container(
                                height: 22,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(22)
                                ),
                                child: DotsIndicator(
                                  dotsCount: 3,
                                  position: currentIndex,
                                  decorator: const DotsDecorator(
                                    spacing: EdgeInsets.all(3),
                                    size: Size.square(7),
                                    activeSize: Size.square(7),
                                    activeColor: Color(0xFF4a48c8)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed:()=>switchImage(),
                                icon:const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 24,),
                            )

                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("Honda Activa 110cc  ",style: TextStyle(fontFamily: 'FontMain',fontSize: 21,color:  Color(0xFF323232)),),
                          Icon(Icons.star,color: Color(0xFF4a48c8),size: 16,),
                          Text(" 4.3",style: TextStyle(fontFamily: 'FontMain',color: Color(0xFF4a48c8),fontSize:16),),
                          Text(" (44 rides)",style: TextStyle(color: Color(0xff828383)),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("MH 12 KP 3431  ",style: TextStyle(color: Color(0xff828383),fontSize: 16,fontWeight: FontWeight.w400)),
                            Image.asset(
                                'assets/images/official.png',
                                  height: 28,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 140,
                            height: 27,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(
                                    color: Colors.black
                                  )
                                )
                              ),
                              onPressed:(){},
                              child: Row(
                                children: const [
                                  Text("Vehicle Preview  ",style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.w400),),
                                  Icon(Icons.remove_red_eye,color: Colors.black, size: 18,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          children: [
                            FlutterSwitch(
                              padding: 2,
                              height: 24,
                                width: 40,
                                toggleSize: 22,
                                value: true,
                                activeColor: const Color(0xffd9d8d8),
                                activeToggleColor: const Color(0xFF01bd8e),
                                onToggle: (val){

                                }),
                            const SizedBox(width: 10,),
                            const Text("Accepting Rides" ,
                              style: TextStyle(
                                fontFamily: 'FontMain')
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              ),
              const Divider(thickness: 1),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                          child: Text(
                              "SETTINGS",style: TextStyle(color: Color(0xff828383),fontSize: 14,fontFamily: 'FontMainLight')
                          )
                      ),
                    ),


                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: settingsTitle.length,
                        itemBuilder: (context,index){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 7,top: 11,bottom: 11,right: 14),
                                            child: Icon(icons[index],size: 20,),
                                          ),
                                          Text(settingsTitle[index],style: const TextStyle(fontFamily: 'FontMainLight',fontSize: 15),)
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Icon(Icons.arrow_forward_ios,color:Color(0xff828383) ,)
                                ],
                              ),
                            ),
                            const Divider(thickness: 1,)
                          ],
                        );
                        }
                    ),
                    const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text("Remove this vehicle",style: TextStyle(fontFamily: 'FontMain',color: Colors.red),),
                    ),
                    const SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
