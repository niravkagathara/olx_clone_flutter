import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'my_database.dart';

class EnterDetail extends StatefulWidget {

  // const EnterDetail({super.key, required Detail});
  // Map? Detail;
  //
  // EnterDetail({super.key, required this.Detail});

  @override
  State<EnterDetail> createState() => _EnterDetailState();
}

class _EnterDetailState extends State<EnterDetail> {
  var name = TextEditingController();
  var price = TextEditingController();
  var img1 = TextEditingController();
  var img2 = TextEditingController();
  var img3 = TextEditingController();
  var img4 = TextEditingController();
  var location = TextEditingController();
  var Detail = TextEditingController();
  var date = TextEditingController();
  var brand = TextEditingController();
  var dec = TextEditingController();
  GlobalKey<FormState> _validationKey = GlobalKey();

  // void initState() {
  //   super.initState();
  //   userNameController.text =
  //   widget.Detail != null ? widget.Detail!['ProductName'] : '';
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User Detail',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _validationKey,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      labelText: 'product Name',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                      hintText: 'Enter product Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Name';
                    }
                  },
                  controller: name,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter price Name',
                      labelText: 'price'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter price Name';
                    }
                  },
                  controller: price,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter image Name',
                      labelText: 'image'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter image ';
                    }
                  },
                  controller: img1,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter image Name',
                      labelText: 'image'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter image ';
                    }
                  },
                  controller: img2,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter image Name',
                      labelText: 'image'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter image ';
                    }
                  },
                  controller: img3,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter image Name',
                      labelText: 'image'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter image ';
                    }
                  },
                  controller: img4,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter location Name',
                      labelText: 'location'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter location Name';
                    }
                  },
                  controller: location,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter Detail Name',
                      labelText: 'Detail'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Detail Name';
                    }
                  },
                  controller: Detail,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter date Name',
                      labelText: 'date'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter date Name';
                    }
                  },
                  controller: date,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter brand Name',
                      labelText: 'brand'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter brand Name';
                    }
                  },
                  controller: brand,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      hintText: 'Enter dec Name',
                      labelText: 'dec'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter dec Name';
                    }
                  },
                  controller: dec,
                ),
                const SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () async {

                  },
                  child: const Text(
                    'SUBMIT',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showAlert(ctx, title, id) {
    showCupertinoDialog(
      context: ctx,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(title),
          actions: [
            TextButton(
                onPressed: () {
                  if (id >= 1) {
                    Navigator.of(ctx).pop();
                    Navigator.of(ctx).pop(true);
                  } else {
                    Navigator.pop(ctx);
                  }
                },
                child: Text('Ok'))
          ],
        );
      },
    );
  }
}
