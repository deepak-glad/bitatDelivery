import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  static const routename = 'contact-page';

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  int _radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONTACT US',
          style: TextStyle(color: Color.fromRGBO(255, 200, 0, 1)),
        ),
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 200, 0, 1)),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          // decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(15),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.black54,
          //         blurRadius: 2.0,
          //       )
          //     ]),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GET IN TOUCH',
                  style: TextStyle(
                      color: Color.fromRGBO(8, 35, 189, 0.8),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  'If you have any question about BestLogistics or how we can support your business, please contact us directly by selecting from one of the below categories that is the most relevant to your inquiry and fill our short feedback form.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800]),
                ),
                // SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline6,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black54),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: Theme.of(context).textTheme.headline6,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black54),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: Theme.of(context).textTheme.headline6,
                    decoration: InputDecoration(
                      labelText: 'mobile',
                      labelStyle: TextStyle(color: Colors.black54),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Preffered method of communication',
                    style: TextStyle(
                        color: Color.fromRGBO(8, 35, 189, 0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Mobile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [0, 1]
                        .map((index) => Radio<int>(
                            value: index,
                            groupValue: this._radioVal,
                            onChanged: (int value) {
                              setState(() {
                                return this._radioVal = value;
                              });
                            }))
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 4,
                    decoration: InputDecoration(
                      labelText: 'Message',
                      border: const OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.black54),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(255, 200, 0, 1),
                  ),
                  width: MediaQuery.of(context).size.width - 50,
                  child: FlatButton(
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
