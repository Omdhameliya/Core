import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'AVENGERS',
      routes: {
        'AVENGERS': (BuildContext) => const AVENGERS(),
        'page2': (BuildContext) => const Page2(),
      },
    ),
  );
}

class AVENGERS extends StatefulWidget {
  const AVENGERS({Key? key}) : super(key: key);

  @override
  State<AVENGERS> createState() => _AVENGERSState();
}

class _AVENGERSState extends State<AVENGERS> {
  List<Map<String, dynamic>> character = [
    {
      'actorImage': 'build/avengers/Captain_america.png',
      'comicName': 'Captain America',
      'realName': 'Steve Rogers',
      'description':
      'During WWII, the patriotic Steve Rogers was offered a place in the militarys top operation: Rebirth. Injected with an experimental super-serum, Rogers emerged from the treatment with heightened endurance, strength, and reaction time. With extensive training and an indestructible Vibranium shield, Rogers soon became the countrys ultimate weapon: CAPTAIN AMERICA! Though frozen in ice during a climactic battle toward the end of the war, Rogers was discovered and revived decades later. Now the living legend continues the war against evil in modern times as a member of The Avengers!'
    },
    {
      'actorImage': 'build/avengers/Ant_man.png',
      'comicName': 'Ant Man',
      'realName': 'Scott Lang',
      'description':
      'Former thief Scott Lang once stole an advanced size-altering suit in order to aid his ailing daughter, only to discover that the stolen tech belonged to the world-renowned Dr. Hank Pym. Seeing the heroic potential within him, Dr. Pym allowed Scott to continue using the suit, as well as the identity Pym once battled evil under. As the Astonishing Ant-Man, Scott now handles the jobs "too small" for any other Super Hero.'
    },
    {
      'actorImage': 'build/avengers/Black_panther.png',
      'comicName': 'Black Panther',
      'realName': 'Chadwick Boseman',
      'description':
      'Monarch of the secluded but technologically advanced African nation of Wakanda, King TChalla is the Black Panther; a sacred title that must be both inherited & earned by the current Wakandan ruler. Granted superhuman powers by ceremonially consuming a mystical heart-shaped herb, the Black Panther is responsible for defending his people, and the world, from any threats.'
    },
    {
      'actorImage': 'build/avengers/Black_widow.png',
      'comicName': 'Black Widow',
      'realName': 'Natasha Romanoff',
      'description':
      'Natasha Romanoff is the super-spy known as the Black Widow! Trained extensively in the art of espionage and outfitted with state-of-the-art equipment, Black Widows combat skills are virtually unmatched. One of S.H.I.E.L.Ds most valuable agents, she has carried out numerous black-ops missions and has recently been assigned by Director Nick Fury to keep an eye on the Avengers.'
    },
    {
      'actorImage': 'build/avengers/Doctor_strange.png',
      'comicName': 'Doctor Strange',
      'realName': 'Benedict Cumberbatch',
      'description':
      'Distinguished neurosurgeon Doctor Stephen Stranges self-important worldview was shattered, along with his steady operating hands, in a fateful car accident. Desperate to heal his injuries and pride, Strange sought out a legendary safe known as the Ancient One, becoming a pupil of the mystic arts. Learning that his true worth had always come from within, Strange uncovered his full potential and was chosen to become the Sorcerer Supreme, the worlds pre-eminent defender against the darkness that lurks beyond.'
    },
    {
      'actorImage': 'build/avengers/Falcon.png',
      'comicName': 'Falcon',
      'realName': 'Anthony Mackie',
      'description':
      'The top of his class at S.H.I.E.L.D., Sam Wilsons savvy with experimental technology quickly impressed even Tony Stark. Working as Starks protégé, the eager agent designed a sleek suit of flying armor, complete hard-light holographic wings, and an extensive arsenal that includes explosive "flechettes" and retractable talons. When the call came for Sam to graduate to the Avengers, he did not hesitate — he quickly took to the skies in a streak of red as Falcon!'
    },
    {
      'actorImage': 'build/avengers/Hawkeye.png',
      'comicName': 'Hawkeye',
      'realName': 'Clint Barton',
      'description':
      'An archer with perfect accuracy and a quiver of trick arrows, Clint Bartons wit is usually faster than his lightning-quick reflexes! Though this expert archer does not always follow the rules, he long ago proved himself an invaluable member of The Avengers as Hawkeye!'
    },
    {
      'actorImage': 'build/avengers/Hulk.png',
      'comicName': 'Hulk',
      'realName': 'Bruce Banner',
      'description':
      'A massive dose of gamma radiation transformed the brilliant but meek scientist Bruce Banners DNA, awakening the hidden, adrenaline-fed hero in his genes... HULK! A hero of few words and incredible strength, the Hulk has long been pursued by those who want to use his immense power for their own purposes, or by those who thought the Jade Giants anger was too dangerous to be controlled. Now, as a member of the Avengers, Hulk helps smash the unimaginable threats that no Hero could face alone, hoping to at least prove to the world that he is the strongest HERO there is!'
    },
    {
      'actorImage': 'build/avengers/Hulkbuster.png',
      'comicName': 'Hulkbuster',
      'realName': 'Mr. Green',
      'description':
      'Fearing the day when the Hulks rage might become too much to control, Tony Stark developed this mighty armor as a countermeasure to Hulks brute strength. Assembled upon command from a series of modular components, the Hulkbuster armor encompasses Iron Mans normal suit, encasing him in an extremely durable shell. The armors design is reinforces with powerful servos and dense plating, allowing it to withstand even the Hulks strongest outburst.'
    },
    {
      'actorImage': 'build/avengers/Iron_man.png',
      'comicName': 'Iron Man',
      'realName': 'Tony Stark',
      'description':
      'When billionaire industrialist Tony Stark dons his sophisticated steel-mesh armor, he becomes a living high-tech weapon - the worlds greatest fighting machine. Tony has primed his ultra modern creation for waging state of the art campaigns, attaining sonic flight, and defending the greater good! He is the Armored Avenger - driven by a heart that is part machine, but all hero! He is the INVINCIBLE IRON MAN!'
    },
    {
      'actorImage': 'build/avengers/Maria_hill.png',
      'comicName': 'Maria Hill',
      'realName': 'Eye Candy',
      'description':
      'A cunning, sharp-witted S.H.I.E.L.D. Agent, Maria Hill’s natural talents and perfected skills allowed her to quickly climb the ladder at S.H.I.E.L.D. As deputy director, Hill keeps the gears of the massive organization in constant motion, reporting directly to Nick Fury. Hill focuses herself solely on the task of protecting the world and is fully committed to S.H.I.E.L.D.’s cause.'
    },
    {
      'actorImage': 'build/avengers/Nick_fury.png',
      'comicName': 'Nick Fury',
      'realName': 'Samuel L Jackson',
      'description':
      'Nick Fury became an elite member of the U.S. intelligence team because of intellect and integrity. He has been trained as a paratrooper, Ranger, demolitions expert and vehicle specialist. Nick Fury keeps his youth by the mysterious Infinity Formula. When the world is in trouble, NICK FURY: AGENT OF S.H.I.E.L.D. is the man who will defend it.'
    },
    {
      'actorImage': 'build/avengers/Okoye.png',
      'comicName': 'Okoye',
      'realName': 'Danai Gurira',
      'description':
      'Okoye serves with distinction as head of the Dora Milake, a ceremonial order of warrior women tasked with protecting the leader of Wakanda. A traditionalist at heart, Okoye places her duty to the king above all else, who in turn trusts her as one of his top advisors. With her fierce and noble spirit, Okoye is prepared to make any sacrifice to keep her people safe and free.'
    },
    {
      'actorImage': 'build/avengers/Shuri.png',
      'comicName': 'Shuri',
      'realName': 'Letitia Wright',
      'description':
      'Princess of Wakanda and younger sister to King T Challa, Shuri grew up in the shadow of her prodigious older brother. Eager to prove her worth, she underwent a grueling set of trials in order to become the Black Panther, only to discover that T Challa had already won the title. However, understanding his sisters heart and skill, T Challa passed on the rule of Wakanda when circumstances demanded his absence. As the new Black Panther, Shuri now protects her people and homeland with unrivaled commitment and ferocity.'
    },
    {
      'actorImage': 'build/avengers/Thor.png',
      'comicName': 'Thor',
      'realName': 'Chris Hemsworth',
      'description':
      'Nordic legend tells the tale of the son of Odin, the heir to the throne of Asgard - he is THOR, renowned as the mightiest hero of mythology! Thors strength, endurance, and quest for battle are far greater than his Asgardian brethren. The mighty Thor wields an enchanted Uru hammer, Mjolnir, and is master of thunder and lightning.'
    },
    {
      'actorImage': 'build/avengers/Vision.png',
      'comicName': 'Vision',
      'realName': 'Victor Shade',
      'description':
      'Driven by an extremely lifelike artificial intelligence and possessing a nearly indestructible robotic body, the synthetic android called the Vision has taken his place among Earth’s Mightiest Heroes, the Avengers! In addition to his surprisingly human personality, the Vision exhibits an impressive compliment of abilities, including flight, complete control over his molecular density and the ability to fire energy blasts from the jewel on his forehead.'
    },
    {
      'actorImage': 'build/avengers/War_machine.png',
      'comicName': 'War Machine',
      'realName': 'James Rhodes',
      'description':
      'U.S. Air Force Colonel James "Rhodey" Rhodes has long served as both Tony Starks best friend & Special Liaison to Stark Industries. In battle, Rhodey dons the War Machine armor, a modified version of Starks own Iron Man suit. Armed with a modular Gatling cannon and enough firepower to take on a legion of enemies, the War Machine is a true one man army.'
    },
    {
      'actorImage': 'build/avengers/Wasp.png',
      'comicName': 'Wasp',
      'realName': 'Michelle Pfeiffer',
      'description':
      'Endowed with the amazing ability to shrink in size and fly, Hope Van Dyne is the newest heroine to bear the name Wasp! Along with her partner Scott Lang, the Astonishing Ant-Man, Wasp battles evil on any scale, proving that true heroism comes in even the smallest sizes!'
    },
    {
      'actorImage': 'build/avengers/Winter_soldier.png',
      'comicName': 'Winter Soldier',
      'realName': 'Sebastian Stan',
      'description':
      'Bucky Barnes served with honor in WWII alongside his partner and best friend, Captain America. Presumed M.I.A. after a fateful mission toward the end of the war, Bucky had in fact been recovered by enemy agents who subjected him to a series of traumatic metal and physical experiments. Stripped of his identity, Bucky was reborn as the Winter Soldier, a cunning and dangerous covert operative who could be "activated" from cryostasis every decade or so to undertake special missions. Ultimately free of his brainwashing, Bucky now uses his impressive talents to try and atone for the deeds done while under enemy control.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MARVEL UNIVERSE",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff10002B),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment(-0.8, 2),
              child: Text(
                "AVENGERS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: character.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 15,
                      child: Container(
                        height: H / 2.5,
                        width: W / 1.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff591898),
                              Color(0xff3D096D),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const Alignment(0, -3),
                              child: Image(
                                height: 250,
                                width: 250,
                                image: AssetImage(e['actorImage']),
                              ),
                            ),
                            Positioned(
                              bottom: 90,
                              left: 10,
                              child: Text(
                                e['comicName'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 65,
                              left: 10,
                              child: Text(
                                e['realName'],
                                style: const TextStyle(
                                  color: Color(0xff908897),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 5,
                              child: InkWell(
                                onTap: () {
                                  List details = [
                                    e['actorImage'],
                                    e['comicName'],
                                    e['realName'],
                                    e['description']
                                  ];
                                  Navigator.pushNamed(context, 'page2',
                                      arguments: details);
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  elevation: 10,
                                  child: Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff160427),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "KNOW MORE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff240046),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    List character = ModalRoute.of(context)!.settings.arguments as List;
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Marvel Character"),
        centerTitle: true,
        backgroundColor: const Color(0xff10002B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Card(
                shadowColor: Colors.purple,
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 410,
                  width: W,
                  child: Image(
                    image: AssetImage(character[0]),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Card(
                shadowColor: Colors.red,
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: W,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        character[1],
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        character[2],
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Card(
                elevation: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: W,
                  child: Text(
                    character[3],
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
