import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/about-us';

  @override
  Widget build(BuildContext context) {
    _detail(String name) {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          Icons.more,
          color: Color.fromRGBO(8, 35, 189, 0.8),
        ),
        SizedBox(width: 8),
        Container(
          width: MediaQuery.of(context).size.width - 68,
          child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            overflow: TextOverflow.visible,
          ),
        ),
      ]);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ABOUT US',
          style: TextStyle(color: Color.fromRGBO(255, 200, 0, 1)),
        ),
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 200, 0, 1)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(10),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(Radius.circular(15)),
          //     color: Colors.white10,
          //     boxShadow: [
          //       BoxShadow(
          //         blurRadius: 1.0,
          //         spreadRadius: .5,
          //         color: Colors.grey[300],
          //       )
          //     ]),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WHO WE ARE ?',
                style: TextStyle(
                    color: Color.fromRGBO(8, 35, 189, 0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                'Bitetat Portal is an Emirati foundation supported by Mohammed Bin Rashid Establishment for SME Development and licensed by the Department of Economic Development in Dubai.100% Emirati management with huge experience in customer serviceBitetat Portal is an online community to support the delivery companies through providing innovative online solutions to enable them improve the services provided to their customers.',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'OUR MISSION',
                style: TextStyle(
                    color: Color.fromRGBO(8, 35, 189, 0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                'To be the first application supporting delivery companies reaching their customers in an innovative and unique way.',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'OUR VISION',
                style: TextStyle(
                    color: Color.fromRGBO(8, 35, 189, 0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              _detail(
                  'To be the favorable application for the deliver companies and their customers.'),
              SizedBox(height: 5),
              _detail(
                  'To provide the owners of delivery companies with innovative platforms that help to arise as entrepreneurs giving the opportunity to learn new skills and self-reliance.'),
              SizedBox(height: 5),
              _detail(
                  'To be the favorable application for the deliver companies and their customers.'),
              SizedBox(height: 10),
              Text(
                'WHAT MAKES US SPECIAL?',
                style: TextStyle(
                    color: Color.fromRGBO(8, 35, 189, 0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                  'Special and easy application to use working as a virtual store for every trader for free',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
              SizedBox(height: 5),
              _detail(
                  'Several and various benefits activated through the application, such as following orders, calculating profits and others.'),
              SizedBox(height: 5),
              _detail('Competitive delivery prices.'),
              SizedBox(height: 5),
              _detail('Saving time and effort'),
              SizedBox(height: 5),
              _detail('Online payment gates'),
              SizedBox(height: 5),
              _detail('Raising sales'),
              SizedBox(height: 5),
              _detail('Special promotions to activate the application'),
              SizedBox(height: 5),
              _detail(
                  'A special number available to serve you and respond to your inquiries'),
              SizedBox(height: 10),
              Text(
                'Our Strategic Partners',
                style: TextStyle(
                    color: Color.fromRGBO(8, 35, 189, 0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                  'We at Bitetat Portal seeks and supports home-based entrepreneurs to promote and develop their product and sale methods by making strategic partnerships with a group of activities that serve as business entrepreneurs at competitive prices as follows:',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
              SizedBox(height: 5),
              _detail('Training and consulting services'),
              SizedBox(height: 5),
              _detail('Accounting services'),
              SizedBox(height: 5),
              _detail('Feasibility study services'),
              SizedBox(height: 5),
              _detail('Professional photography services'),
              SizedBox(height: 5),
              _detail('Other services'),
            ],
          ),
        ),
      ),
    );
  }
}
