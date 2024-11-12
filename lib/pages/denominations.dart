import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class Denominations extends StatelessWidget {
  // URL for the YouTube video (replace with actual video link)
  final Uri youtubeUrl = Uri.parse("https://www.youtube.com/watch?v=8q6fUIay-M8");

   Denominations({super.key});

  // Function to launch YouTube video
  Future<void> _launchURL() async {
    if (await canLaunchUrl(youtubeUrl)) {
      await launchUrl(youtubeUrl);
    } else {
      throw 'Could not launch $youtubeUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  backgroundColor: Color(0xFFD6C6B4),

      appBar: AppBar(
        title: const Text("Christian Denominations",style: TextStyle(color:Colors.white),),
                backgroundColor: Color(0XFF4F6D7A),

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Denominations Descriptions
            _buildDenominationCard('Deno 1', 'Catholicism', 'The Catholic Church is the largest Christian denomination, with over 1.3 billion members worldwide. The Church traces its history back to the apostles, and it teaches the authority of the Pope as the successor of Saint Peter. Catholicism emphasizes the sacraments, including the Eucharist, and venerates the Virgin Mary and the saints.',
                'Catholic teachings are based on the Bible and sacred tradition. Catholics believe that salvation comes through both faith and works, and the Church is seen as the guardian of divine truth. It has a rich history of theological, cultural, and liturgical traditions, with its influence spanning across the world, especially in Europe, Latin America, and Africa.'),
            _buildDenominationCard('Deno 2', 'Eastern Orthodoxy', 'Eastern Orthodox Christianity developed from the early Christian Church and split from Catholicism in the 11th century over theological differences. The Orthodox Church has a deep connection to early Christian traditions and is led by a council of bishops, with the Patriarch of Constantinople being the highest leader.',
                'Orthodox Christians hold that Christ is one divine-human person, emphasizing the importance of sacred liturgies and sacraments. The Church is known for its iconography and monastic traditions, and its teachings emphasize the preservation of ancient Christian doctrine and spiritual life. It has a strong presence in Eastern Europe, Russia, and parts of the Middle East.'),
            _buildDenominationCard('Deno 3', 'Protestantism', 'Protestantism emerged in the 16th century as a reaction against the practices of the Roman Catholic Church. Initiated by figures such as Martin Luther and John Calvin, Protestantism emphasizes the authority of the Bible alone (sola scriptura) and the doctrine of justification by faith alone (sola fide).',
                'Protestantism is diverse, with denominations including Lutheranism, Anglicanism, Calvinism, and Evangelicalism. These groups often reject papal authority and place a strong emphasis on individual faith, church autonomy, and personal interpretation of scripture. It is prevalent in Europe, North America, and Sub-Saharan Africa.'),
            _buildDenominationCard('Deno 4', 'Seventh-day Adventism', 'Seventh-day Adventism emerged in the 19th century during the Second Great Awakening in the United States. The movement focuses on the imminent second coming of Christ and emphasizes Sabbath observance on Saturday rather than Sunday, which is considered the true Sabbath day.',
                'Seventh-day Adventists also emphasize health, with a strong focus on vegetarianism and holistic well-being. They are known for their commitment to education and humanitarian work, operating a global network of schools and hospitals. Their influence is seen in the U.S., parts of South America, and Sub-Saharan Africa.'),
            _buildDenominationCard('Deno 5', 'Presbyterianism', 'Presbyterianism is a branch of Protestantism rooted in the Reformation teachings of John Calvin. It emphasizes the sovereignty of God, the authority of scripture, and the governance of the church by elected elders (presbyters). The Presbyterian Church grew out of the Reformation in Scotland under the leadership of John Knox.',
                'Presbyterianism places a strong emphasis on theology, with a distinctive approach to church government and community leadership. It is characterized by a decentralized structure where local congregations are governed by elected elders. Presbyterians are found in the U.S., Scotland, and South Korea, among other regions.'),
            _buildDenominationCard('Deno 6', 'Baptism', 'Baptism is a Christian denomination that emphasizes adult baptism by immersion, rather than infant baptism. The movement originated in the early 17th century as part of the Radical Reformation and stresses the need for a personal, conscious commitment to Christ.',
                'Baptists believe in the authority of scripture and the autonomy of local congregations, and they place a strong emphasis on religious freedom and the separation of church and state. The denomination is widespread, with significant populations in the U.S., Sub-Saharan Africa, and parts of Asia.'),
            
            // "Explore More" Button
           const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _launchURL,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18,),
                ),
                child: const  Text("Explore More",style:TextStyle(color: Colors.white)),
              ),
            ),

            // Books to Read Section
           const SizedBox(height: 40),
           const  Text(
              "Books to Read",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 10),
           const  Text(
              "1. *The Story of Christianity* by Justo L. González\n"
              "   A comprehensive two-volume history of the Christian church from its inception to the present day.\n\n"
              "2. *The Reformation: A History* by Diarmaid MacCulloch\n"
              "   An in-depth account of the Protestant Reformation and its impact on Christianity and the world.\n\n"
              "3. *Church History in Plain Language* by Bruce L. Shelley\n"
              "   A concise and accessible guide to the history of the Christian church.\n\n"
              "4. *A History of the Christian Church* by Philip Schaff\n"
              "   A detailed and scholarly exploration of the history of the church, from its beginnings to the modern era.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build a denomination card
  Widget _buildDenominationCard(String title, String denomination, String description1, String description2) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 5,
      child: Padding(
        padding: const  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              denomination,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          const  SizedBox(height: 10),
            Text(
              description1,
              style: const TextStyle(fontSize: 16),
            ),
           const SizedBox(height: 10),
            Text(
              description2,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
