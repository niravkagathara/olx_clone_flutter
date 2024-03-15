import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:olx_clone/entry.dart';
// import 'package:flutter_4b/my_database.dart';
// import 'package:flutter_4b/user_entery_page.dart';
import 'package:olx_clone/my_database.dart';
import 'package:sqflite/sqflite.dart';

class prop extends StatefulWidget {
  @override
  State<prop> createState() => _propState();
}

class _propState extends State<prop> {
  TextEditingController filterController = TextEditingController();
  MyDataBase db = MyDataBase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User List',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return UserEntryPage(
                        userDetail: null,
                      );
                    },
                  ),
                ).then((value) {
                  if (value) {
                    setState(() {});
                  }
                });
              },
            ),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: FutureBuilder(
        future: db.getUserListFromTblUser(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            if (snapshot.data!.isNotEmpty) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              snapshot.data![index]['name'].toString(),
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return UserEntryPage(
                                    userDetail: snapshot.data![index],
                                  );
                                },
                              )).then((value) {
                                if (value) {
                                  setState(() {});
                                }
                              });
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              showDeleteAlert(
                                  userId: snapshot.data![index]['ProductID']);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
              );
            } else {
              return Center(
                child: Text('No User Found'),
              );
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  showDeleteAlert({required userId}) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Alert!'),
          content: Text('Are you sure want to delete?'),
          actions: [
            TextButton(
              onPressed: () {
                db.deleteUserFromTblUser(userId: userId);
                Navigator.pop(context);
                setState(() {});
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }
}
