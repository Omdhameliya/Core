import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Instagram(),
    ),
  );
}

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  List images = [
    "https://images.unsplash.com/photo-1486663845017-3eedaa78617f?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8NXx8aHVtYW58ZW58MHx8MHx8&auto=format&fit=cro p&w=500&q=60",
    "https://media.glamour.com/photos/5fe619d21d04b354d394ea13/master/pass/gigi-hadid.jpg",
    "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8NDJ8fGh1bWFufGVufDB8fDB8fA%3D%3D&auto=forma t&fit=crop&w=500&q=60",
    "https://obs.line-scdn.net/0h11eXEwO0bh5YIXhIFFMRSWJ3bXFrTX0dPBc_HQRPMCl0E ylNZEQlKHskNnohQilANhcnfHUndS8gFnxPbUcl/w644",
    "https://plus.unsplash.com/premium_photo-1664368832434-80a3b08ae103?ixlib=rb-4.0.3&i xid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop &w=687&q=80",
    "https://images.unsplash.com/photo-1531843024904-83fb5d1c9b52?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715 &q=80",
    "https://images.unsplash.com/photo-1597586124394-fbd6ef244026?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8MzZ8fGh1bWFufGVufDB8fDB8fA%3D%3D&auto=forma t&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1605169947013-7e1ee6c3603e?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687 &q=80",
    "https://images.unsplash.com/photo-1520013225692-fff4010c0ae6?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687 &q=80",
    "https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687 &q=80",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=Mnwx
    MjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8 & auto = format & fit = crop & w =
    688 & q = 80",
    "https://images.unsplash.com/photo-1581456495146-65a71b2c8e52?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8OHx8aHVtYW58ZW58MHx8MHx8&auto=format&fit=cro p&w=500&q=60",
    "https://images.unsplash.com/photo-1544038659-12337883d216?ixlib=rb-4.0.3&ixid=Mnwx
    MjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8 & auto = format & fit = crop & w =
    687 & q = 80",
    "https://images.unsplash.com/photo-1586250890303-622708245b2e?ixlib=rb-4.0.3&ixid=M nwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=76 4&q=80",
    "https://images.unsplash.com/photo-1578916045370-25461e0cf390?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699 &q=80",
  ];
  Color backColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: SizedBox(height: 34,
      width: 130,
      child: Image.asset("assets/images/Instagram_Logo.jpg", fit: BoxFit.fill,
      ),
    ),
      actions: const [
        Icon(
          Icons.add_box_outlined, color: Colors.black, size: 30,
        ),
        SizedBox(width: 10,
        ),
        Icon(
          Icons.messenger_rounded, color: Colors.black, size: 30,
        ),
        SizedBox(width: 10,
        ),
      ],
      backgroundColor: Colors.white, elevation: 0,
    ),
      body: Column(children: [
        Expanded(flex: 28, child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(), child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(padding: const EdgeInsets.all(10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ const SizedBox(
                    width: 10,
                  ),
                    CircleAvatar(radius: 50,
                      backgroundColor: backColor,
                      child: const CircleAvatar(
                        radius: 48,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 45, backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
                        ),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                    ...images.map(
                          (e) =>
                          Row(children: [ const SizedBox(
                            width: 15,
                          ),
                            CircleAvatar(radius: 50,
                              backgroundColor: const Color(0xffff0020),
                              child: CircleAvatar(
                                radius: 48,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 45, foregroundImage: NetworkImage(e,
                                ),
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                          ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Ink(decoration: BoxDecoration(
                color: Colors.black87,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
                child: InkWell(onTap: () {
                  setState(() {
                    backColor = Colors.green;
                  });
                },
                  splashColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 34,
                    width: 110,
                    alignment: Alignment.center,
                    child: const Text("Add Story",
                      style: TextStyle(color: Colors.white, fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Ink(decoration: BoxDecoration(
                color: Colors.black87,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
                child: InkWell(onTap: () {
                  setState(() {
                    backColor = Colors.grey;
                  });
                },
                  splashColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 34,
                    width: 110,
                    alignment: Alignment.center,
                    child: const Text("Remove Story",
                      style: TextStyle(color: Colors.white, fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ),
            ...images.map(
                  (e) =>
                  Padding(
                    padding: const EdgeInsets.only(top: 15), child: SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.5, width: MediaQuery
                      .of(context)
                      .size
                      .width, child: Image.network(e, fit: BoxFit.cover,
                  ),
                  ),
                  ),
            ),
          ],
        ),
        ),
        ),
        Expanded(flex: 2, child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, children: const [
          Icon(
            Icons.home_filled, size: 35,
          ),
          Icon(Icons.search, size: 35,
          ),
          Icon(
            Icons.video_collection_outlined, size: 35,
          ),
          Icon(
            Icons.favorite_border_rounded, size: 35,
          ),
          CircleAvatar(radius: 17, backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
          ),
            backgroundColor: Colors.grey,
          ),
        ],
        ),
        ),
      ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Instagram(),
    ),
  );
}

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  List images = [
    "https://images.unsplash.com/photo-1486663845017-3eedaa78617f?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8NXx8aHVtYW58ZW58MHx8MHx8&auto=format&fit=cro p&w=500&q=60",
    "https://media.glamour.com/photos/5fe619d21d04b354d394ea13/master/pass/gigi-hadid.jpg",
    "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8NDJ8fGh1bWFufGVufDB8fDB8fA%3D%3D&auto=forma t&fit=crop&w=500&q=60",
    "https://obs.line-scdn.net/0h11eXEwO0bh5YIXhIFFMRSWJ3bXFrTX0dPBc_HQRPMCl0E ylNZEQlKHskNnohQilANhcnfHUndS8gFnxPbUcl/w644",
    "https://plus.unsplash.com/premium_photo-1664368832434-80a3b08ae103?ixlib=rb-4.0.3&i xid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop &w=687&q=80",
    "https://images.unsplash.com/photo-1531843024904-83fb5d1c9b52?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715 &q=80",
    "https://images.unsplash.com/photo-1597586124394-fbd6ef244026?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8MzZ8fGh1bWFufGVufDB8fDB8fA%3D%3D&auto=forma t&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1605169947013-7e1ee6c3603e?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687 &q=80",
    "https://images.unsplash.com/photo-1520013225692-fff4010c0ae6?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687 &q=80",
    "https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687 &q=80",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=Mnwx
    MjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8 & auto = format & fit = crop & w =
    688 & q = 80",
    "https://images.unsplash.com/photo-1581456495146-65a71b2c8e52?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8OHx8aHVtYW58ZW58MHx8MHx8&auto=format&fit=cro p&w=500&q=60",
    "https://images.unsplash.com/photo-1544038659-12337883d216?ixlib=rb-4.0.3&ixid=Mnwx
    MjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8 & auto = format & fit = crop & w =
    687 & q = 80",
    "https://images.unsplash.com/photo-1586250890303-622708245b2e?ixlib=rb-4.0.3&ixid=M nwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=76 4&q=80",
    "https://images.unsplash.com/photo-1578916045370-25461e0cf390?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699 &q=80",
  ];
  Color backColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: SizedBox(height: 34,
      width: 130,
      child: Image.asset("assets/images/Instagram_Logo.jpg", fit: BoxFit.fill,
      ),
    ),
      actions: const [
        Icon(
          Icons.add_box_outlined, color: Colors.black, size: 30,
        ),
        SizedBox(width: 10,
        ),
        Icon(
          Icons.messenger_rounded, color: Colors.black, size: 30,
        ),
        SizedBox(width: 10,
        ),
      ],
      backgroundColor: Colors.white, elevation: 0,
    ),
      body: Column(children: [
        Expanded(flex: 28, child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(), child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(padding: const EdgeInsets.all(10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ const SizedBox(
                    width: 10,
                  ),
                    CircleAvatar(radius: 50,
                      backgroundColor: backColor,
                      child: const CircleAvatar(
                        radius: 48,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 45, backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
                        ),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                    ...images.map(
                          (e) =>
                          Row(children: [ const SizedBox(
                            width: 15,
                          ),
                            CircleAvatar(radius: 50,
                              backgroundColor: const Color(0xffff0020),
                              child: CircleAvatar(
                                radius: 48,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 45, foregroundImage: NetworkImage(e,
                                ),
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                          ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Ink(decoration: BoxDecoration(
                color: Colors.black87,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
                child: InkWell(onTap: () {
                  setState(() {
                    backColor = Colors.green;
                  });
                },
                  splashColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 34,
                    width: 110,
                    alignment: Alignment.center,
                    child: const Text("Add Story",
                      style: TextStyle(color: Colors.white, fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Ink(decoration: BoxDecoration(
                color: Colors.black87,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
                child: InkWell(onTap: () {
                  setState(() {
                    backColor = Colors.grey;
                  });
                },
                  splashColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 34,
                    width: 110,
                    alignment: Alignment.center,
                    child: const Text("Remove Story",
                      style: TextStyle(color: Colors.white, fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ),
            ...images.map(
                  (e) =>
                  Padding(
                    padding: const EdgeInsets.only(top: 15), child: SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.5, width: MediaQuery
                      .of(context)
                      .size
                      .width, child: Image.network(e, fit: BoxFit.cover,
                  ),
                  ),
                  ),
            ),
          ],
        ),
        ),
        ),
        Expanded(flex: 2, child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, children: const [
          Icon(
            Icons.home_filled, size: 35,
          ),
          Icon(Icons.search, size: 35,
          ),
          Icon(
            Icons.video_collection_outlined, size: 35,
          ),
          Icon(
            Icons.favorite_border_rounded, size: 35,
          ),
          CircleAvatar(radius: 17, backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=Mn wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
          ),
            backgroundColor: Colors.grey,
          ),
        ],
        ),
        ),
      ],
      ),
    );
  }
}