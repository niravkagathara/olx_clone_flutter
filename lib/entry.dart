import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/my_database.dart';
import 'package:sqflite/sqflite.dart';

class UserEntryPage extends StatefulWidget {
  Map? userDetail;

  UserEntryPage({super.key, required this.userDetail});

  @override
  State<UserEntryPage> createState() => _UserEntryPageState();
}

class _UserEntryPageState extends State<UserEntryPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  GlobalKey<FormState> _validationKey = GlobalKey();

  MyDataBase db = MyDataBase();

  @override
  void initState() {
    super.initState();
    userNameController.text =
    widget.userDetail != null ? widget.userDetail!['name'] : '';
  }

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
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
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
                    labelText: 'User Name',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                    hintText: 'Enter User Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Name';
                  }
                },
                controller: userNameController,
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
                    hintText: 'Enter City Name',
                    labelText: 'City'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter City Name';
                  }
                },
                controller: cityController,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () async {
                  if (_validationKey.currentState!.validate()) {
                    if(widget.userDetail==null) {
                      await db.insertUserDetailInTblUser(
                          userName: userNameController.text.toString());
                    }else{
                      await db.updateUserDetailInTblUser(
                        userName: userNameController.text.toString(),
                        userId: widget.userDetail!['ProductID'],);
                    }


                    Navigator.pop(context, true);
                  }
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
