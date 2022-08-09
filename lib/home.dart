import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 33,45,59),
        leading: Icon(Icons.menu),
        title: Text("Telegram", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,          
        ),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search, size: 30),
            )
        ],

      ),
      body: Column(children: [
        list(url: "assets/dudu.jpg", name: "Dudu", time: "8:45 AM", msg: "how r u?", notif: "",  isRead: true),
        Divider(height: 0.2, color: Color.fromARGB(255, 18,28,40)),
        list(url: "assets/mumei.jpg", name: "Mumei", time: "4:47 PM", msg: "I have your ip address.", notif: "12", isRead: false),
        Divider(height: 0.2, color: Color.fromARGB(255, 18,28,40)),
        list(url: "assets/smug-pomu.png", name: "Pomu", time: "11:59 PM", msg: "I'm pomu", notif: "1", isRead: false),
        Divider(height: 0.2, color: Color.fromARGB(255, 18,28,40)),
        list(url: "assets/bingus.jpg", name: "BINGUS", time: "4:10 AM", msg: "yes", notif: "", isRead: true),
        Divider(height: 0.2, color: Color.fromARGB(255, 18,28,40)),
        list(url: "assets/kotax.png", name: "Kotax Trading", time: "10:01 PM", msg: "naek cok", notif: "3", isRead: false),
        Divider(height: 0.2, color: Color.fromARGB(255, 18,28,40)),
        list(url: "assets/pardo.jpg", name: "Pardo", time: "6:00 PM", msg: "ey boss", notif: "", isRead: true),
        Divider(height: 0.2, color: Color.fromARGB(255, 18,28,40)),
        list(url: "assets/kirby.jpg", name: "Unknown", time: "7:45 PM", msg: "BHSDBFGUDGB JL", notif: "", isRead: true),
        Divider(height: 0.2, color: Color.fromARGB(255, 18,28,40)),
        list(url: "assets/ai-chan.jpg", name: "ai chan", time: "5:30 PM", msg: "Captain, don't forget about your adventure tasks", notif: "1029", isRead: false),
        
      ]),
      backgroundColor: Color.fromARGB(255, 29,39,51),
    );
  }

  ListTile list({required String url, required String name, required String time, required String msg,required String notif, required bool isRead}) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 19
            ),),
            Text(time, style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 114,124,136),
              fontSize: 14
            ),)
          ],
        ),
      ),

      subtitle: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(msg, style: TextStyle(
                color: isRead ? Color.fromARGB(255, 124,136,148) : Colors.white,
                fontWeight: FontWeight.w500,
              ), maxLines: 1,),
            ),
            Container(
              child: Text(notif, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
              decoration: BoxDecoration(                
                color: isRead ? Colors.white : Color.fromARGB(255, 61,82,103),
                border: isRead ? Border.all(width: 0) : Border.all(width: 3, color: Color.fromARGB(255, 61,82,103)),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
