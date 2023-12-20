import 'package:flutter/material.dart';
import 'package:mode_app/detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    @override
    void dispose() {
      tabController.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moda Uygulaması',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 150,
            child: ListView(
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 10,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 10,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                const SizedBox(
                  width: 10,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 10,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 10,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 8,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/model1.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daisy',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '34 mins ago',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 34,
                      )
                    ]),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'This official websites features a ribbed knit zipper jacket that is'
                      'modern and stylish. Its looks ver tamparament and is recommend to friends.',
                      style: TextStyle(
                          fontFamily: 'Montseerat',
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Detay(
                                    imgPath: 'assets/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/modelgrid1.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Detay(
                                        imgPath: 'assets/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Detay(
                                        imgPath: 'assets/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid3.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2),
                              ),
                              child: const Center(
                                child: Text(
                                  'Louis Vitton',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.brown),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        Row(
                          children: [
                            Container(),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.brown.withOpacity(0.2),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Chloe',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          color: Colors.brown),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          size: 30,
                          color: Colors.brown.withOpacity(0.4),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '1.7K',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        const SizedBox(height: 25),
                        Icon(
                          Icons.comment,
                          size: 30,
                          color: Colors.brown.withOpacity(0.4),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '325',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '2.7K',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
                                ),
                                SizedBox(height: 10),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.contain)),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
