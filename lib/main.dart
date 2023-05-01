import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chatTile.dart';
import 'package:whatsapp_clone/components/storybtn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: whatsapp(),
    );
  }
}

class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  Color mainColor = Color(0xff177767);

  //varialvel corpo

  var containerRadius = Radius.circular(30.0);

  List<String> imageUrl = [
    "https://scontent.fcgh2-1.fna.fbcdn.net/v/t39.30808-6/298943917_10160080657497497_883685870208417619_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEhmYHw5_HC1cp0zOYgRUmXNiYAcHvoKlo2JgBwe-gqWqKUdULX6lbyMrqn08ZOaxk&_nc_ohc=yqswbsLDynwAX_TspNt&_nc_ht=scontent.fcgh2-1.fna&oh=00_AfDFXY86GzgYh8dOk0E7j6GkUfbIknGipdLj3jewCq1-zQ&oe=64527B59",
    "https://scontent.fcgh2-1.fna.fbcdn.net/v/t39.30808-6/273812170_1948823401963815_6073980934063901173_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEzMi5QrEKw5Lm8Q5inUbUCbfw8Zy7dN2pt_DxnLt03ag9flQiUGNn3HEu-i3PeFTo&_nc_ohc=PFtQ0MYl5OEAX-2b3Uw&_nc_ht=scontent.fcgh2-1.fna&oh=00_AfDEnrDorAhx-Ew0wwLQiXp1TWSGjw2GgzB1SovdRUXf-A&oe=645139AC",
    "https://scontent.fcgh2-1.fna.fbcdn.net/v/t39.30808-6/279216471_2005179166328238_6020305645503129854_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEqZSgAWWXrPxt8npUBKbEdl1kawXXJlnGXWRrBdcmWcVRIkefAw1ClNenaThq9uYc&_nc_ohc=UmclX4E0RrsAX-hETRd&_nc_ht=scontent.fcgh2-1.fna&oh=00_AfDx_9-hQ2FlTzqmDNen5cR-j8xZL5lClSPwt7byt_0jPA&oe=6451B4AD",
    "https://scontent.fcgh2-1.fna.fbcdn.net/v/t39.30808-6/333537128_105804562398234_2566407707153475739_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGK_cJuGnczpWDZ2ptFUJSUjTsyNQKvxmWNOzI1Aq_GZZvKbgOPq_nhT8yYIaCLX0E&_nc_ohc=icTn4-ZQUgAAX_Ek9hL&_nc_ht=scontent.fcgh2-1.fna&oh=00_AfBVePQyK2yXjZykMb9mwaBZo5T6f67687fprHUNhwjt5Q&oe=6452B0A0",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9MVpwoDCq8_1VuelhvRz9G6gDoNVjJfolA&usqp=CAU",
    "https://scontent.fcgh2-1.fna.fbcdn.net/v/t1.18169-9/10858545_860500150648036_1628322772820094179_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=9267fe&_nc_eui2=AeHSMeU4vEZgZX064hXNW2NFbyC6x__wl-hvILrH__CX6N1oiwYLNYgBVohHw7_Li7A&_nc_ohc=LLeGp4IJgd4AX8Ka4y5&_nc_ht=scontent.fcgh2-1.fna&oh=00_AfB-bLHRNyK_P4QjjHahAO4dkrLPljATm2Y-8ByxFt1sKQ&oe=6475C7EA",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnAY0QSwOcRGjPXVQ2qkSLv1CyNRRxxhxRvQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWUnSWnV2InVCABjNGmMMsGh3gZ1ID7VshwQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTADwJJ3OnMnJr_XadYZ115j95qg4tCcBk-sA&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'WhatsApp   v1.0',
        ),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 90.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(imageUrl[0], 'Murilo'),
                  storyButton(imageUrl[1], 'Kelly'),
                  storyButton(imageUrl[2], 'Matheus'),
                  storyButton(imageUrl[3], 'Lara'),
                  storyButton(imageUrl[4], 'homem Aranha'),
                  storyButton(imageUrl[5], 'Capitão'),
                  storyButton(imageUrl[6], 'Lula'),
                  storyButton(imageUrl[7], 'Bolsonaro'),
                  storyButton(imageUrl[8], 'Hulk'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: containerRadius,
                  topRight: containerRadius,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView(
                  children: [
                    // criando o chats as mensagens do corpo
                    chatTile(imageUrl[0], "Murilo", "Bom Dia", "Hoje", false),
                    chatTile(imageUrl[1], "Kelly", "oi", "Hoje", true),
                    chatTile(imageUrl[2], "Matheus", "posso jogar gta pai",
                        "Ontem", true),
                    chatTile(
                        imageUrl[3], "Lara", "T amo paipai", "Ontem", true),
                    chatTile(imageUrl[4], "Homem Aranha", "Obrigado",
                        "25/04/2023", false),
                    chatTile(imageUrl[5], "Capitão",
                        "vai lançar mais filmes rlx", "24/04/2023", false),
                    chatTile(
                        imageUrl[6],
                        "Lula",
                        "Bolsonaro é meu amigo mais ninguem sabe",
                        "22/04/2023",
                        true),
                    chatTile(
                        imageUrl[7],
                        "Bolsonaro",
                        "Lula vai me perdoar se deus quiser",
                        "22/04/2023",
                        false),
                    chatTile(imageUrl[8], "Hulk", "os filmes do Hulk ta osso ",
                        "19/04/2023", true),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
