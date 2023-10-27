import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
            child: PageView(
              children: [
                SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                    'assets/images/background_image.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 20.0,
                              top: 20.0,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                    'assets/icons/left_arrow_button.png'),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Stack(
                                children: [
                                  ClipPath(
                                    clipper: MyCustomClipper(),
                                    child: Container(
                                      height: 100.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(1000.0),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          print('playButtonPressed');
                                        },
                                        child: Image.asset(
                                            'assets/images/play-button.png'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Secrets of Atlantis',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        OutlinedButton(
                          onPressed: () {
                            print('FollowButtonPressed');
                          },
                          style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                              const BorderSide(color: Colors.orange, width: 1.0),
                            ),
                          ),
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(64, 50, 132, 100),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.account_circle,
                                      size: 70,
                                    ),
                                  ),
                                  const SizedBox(width: 5.0),
                                  Expanded(
                                    flex: 1,
                                    child: Flex(
                                      direction: Axis.vertical,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Codin',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: const Color.fromRGBO(
                                                38, 32, 68, 100),
                                          ),
                                          padding: const EdgeInsets.all(5),
                                          child: const Text(
                                            'Host',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwat... see more',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:
                                          const Color.fromRGBO(38, 32, 68, 50)),
                                      child: const Row(
                                        children: [
                                          Text(
                                            '4.8 ☆',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(width: 10.0),
                                          Text(
                                            '(10)',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 90)),
                                          ),
                                        ],
                                      )),
                                  const Text(
                                    '·',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                        const Color.fromRGBO(38, 32, 68, 50)),
                                    child: const Text(
                                      'Fantasy',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.notifications_none,
                                    // Ваша иконка уведомления
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 50,
                                    child: const Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          child: Icon(
                                            Icons.account_circle,
                                            size: 50,
                                          ),
                                        ),
                                        Positioned(
                                          left: 30,
                                          child: Icon(
                                            Icons.account_circle,
                                            size: 50,
                                          ),
                                        ),
                                        Positioned(
                                          left: 60,
                                          child: Icon(
                                            Icons.account_circle,
                                            size: 50,
                                          ),
                                        ),
                                        Positioned(
                                          left: 90,
                                          child: Icon(
                                            Icons.account_circle,
                                            size: 50,
                                          ),
                                        ),
                                        Positioned(
                                          left: 120,
                                          child: Icon(
                                            Icons.account_circle,
                                            size: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/stream.png',
                                        width: 30,
                                        height: 30,
                                        color: Colors.red,
                                      ),
                                      const SizedBox(width: 5),
                                      const Text(
                                        'Live',
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 40.0),
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/friendship.png',
                                  width: 100, height: 100),
                              const Spacer(),
                              Container(
                                width: 100,
                                child: const Text(
                                  'Invite your friends to join',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Icon(Icons.share),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.yellow,
                                  width: 5.0,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                    'assets/images/second_background_image.jpg'),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // Выравнивание по левому краю
                                children: [
                                  Text(
                                    'Peter Mach',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Mind Deep Relax',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                print('playMusicButtonPressed');
                              },
                              style: ButtonStyle(
                                shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  const EdgeInsets.all(16.0),
                                ),
                                minimumSize: MaterialStateProperty.all<Size>(
                                  const Size(double.infinity,
                                      0), // Ширина равна бесконечности, чтобы кнопка заполнила всю доступную ширину
                                ),
                              ),
                              child: const Text(
                                'Play Next Session',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.blueAccent,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset(
                                              'assets/icons/play.png',
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          // Установите выравнивание по левому краю
                                          children: [
                                            Text(
                                              'Sweet Memories',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'December 29 Pre-Launch',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.lightBlueAccent,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset(
                                              'assets/icons/play.png',
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          // Установите выравнивание по левому краю
                                          children: [
                                            Text(
                                              'A Day Dream',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'December 29 Pre-Launch',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.orangeAccent,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset(
                                              'assets/icons/play.png',
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          // Установите выравнивание по левому краю
                                          children: [
                                            Text(
                                              'Mind Explore',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'December 29 Pre-Launch',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                DefaultTabController(
                  length: 5,
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      title: const Text('Meditate',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.search),
                          color: Colors.black,
                          onPressed: () {
                            print('SearchButtonPressed');
                          },
                        ),
                      ],
                      bottom: const TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              'All',
                              style: TextStyle(
                                decorationColor: Colors.blue,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Bible In a Year',
                              style: TextStyle(
                                decorationColor: Colors.blue,
                                decorationThickness: 2.0,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Dailies',
                              style: TextStyle(
                                decorationColor: Colors.blue,
                                decorationThickness: 2.0,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Minutes',
                              style: TextStyle(
                                decorationColor: Colors.blue,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Noven',
                              style: TextStyle(
                                decorationColor: Colors.blue,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        SingleChildScrollView(
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.asset('assets/images/moon_sun.jpg',
                                            height: 270),
                                      ),
                                      const SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'A Song of Moon',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          const Text(
                                            'Start with the basics',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset('assets/icons/heart.png',
                                                  width: 20, height: 20),
                                              const SizedBox(width: 5),
                                              const Text('9 Sessions'),
                                              const Spacer(),
                                              const Text('Start >')
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10.0),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  child: Image.asset(
                                                      'assets/images/cloud.png',
                                                      width: 170),
                                                ),
                                                const Text('The Sleep Hour',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold)),
                                                const Text('Ashna Mukherjee'),
                                                const Row(
                                                  children: [
                                                    Text('♡ 9 Sessions'),
                                                    SizedBox(width: 40),
                                                    Text('Start >')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  child: Image.asset(
                                                      'assets/images/moon.jpg',
                                                      width: 170),
                                                ),
                                                const Text('Easy on the Mission',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold)),
                                                const Text('Peter Mach'),
                                                const Row(
                                                  children: [
                                                    Text('♡ 5 minutes'),
                                                    SizedBox(width: 40),
                                                    Text('Start >')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  child: Image.asset(
                                                      'assets/images/sun.jpg',
                                                      width: 170),
                                                ),
                                                const Text('Relax with Me',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold)),
                                                const Text('Amanda James'),
                                                const Row(
                                                  children: [
                                                    Text('♡ 3 Sessions'),
                                                    SizedBox(width: 40),
                                                    Text('Start >')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  child: Image.asset(
                                                      'assets/images/rest_sun.jpg',
                                                      width: 170),
                                                ),
                                                const Text('Sun and Energy',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold)),
                                                const Text('Micheal Hiu'),
                                                const Row(
                                                  children: [
                                                    Text('♡ 5 minutes'),
                                                    SizedBox(width: 40),
                                                    Text('Start >')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        Container(
                          child: const Center(
                            child: Text('Тут Bible In a Year :)'),
                          ),
                        ),
                        Container(
                          child: const Center(
                            child: Text('Тут Dailies :)'),
                          ),
                        ),
                        Container(
                          child: const Center(
                            child: Text('Тут Minutes :)'),
                          ),
                        ),
                        Container(
                          child: const Center(
                            child: Text('Тут Noven :)'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width / 2, -40, size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}