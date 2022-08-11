import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 20, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text('Get in touch',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text('Want to meet-up with us or to visit the store ?? Below is the our operational Address. We will be happy to meet with you.'),
              ),
              const ListTile(leading: Icon(CupertinoIcons.location_solid),title: Text('27th KM Milestone, Delhi - Meerut Expy, Ghaziabad'),),
              const ListTile(leading: Icon(CupertinoIcons.phone_circle_fill),title: Text('+91 9670172654'),),
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: ListTile(leading: Icon(Icons.email),title: Text('contact@giftvaala.in'),),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom:24),
                child: Text('How Can We Help?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom:10),
                child: Text('Want to know Something?? Any Query?? Why to worry , drop your query or message. We will try to resolve it.'),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your Name(required)',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kindly provide your name.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your Email(required)',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kindly provide your Email.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Subject(optional)',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your Message(required)',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kindly mention the support needed.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:24),
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}