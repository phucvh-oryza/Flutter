import 'package:flutter/material.dart';

import '../../../home/homepage_screen.dart';
import '../../manage_job_screen.dart';

class TopMenu_ManageJob extends StatefulWidget {
  const TopMenu_ManageJob({super.key});

  @override
  State<TopMenu_ManageJob> createState() => _TopMenu_ManageJobState();
}

class _TopMenu_ManageJobState extends State<TopMenu_ManageJob> {
  int selectedRadio = 0; // giá trị được chọn ban đầu
  List<String> radioValues = [
    'Fultter Workspace',
    'ERP Workspace',
    'R&D Workspace'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/office.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          height: 100,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                        ),
                        Text(
                          'Team',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          icon: Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Colors.white,
                          ),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.update),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.textsms_outlined),
                          color: Colors.white,
                        ),
                        CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 233, 232, 229),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://s3.o7planning.com/images/boy-128.png"),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -73,
          right: 0,
          left: 0,
          child: Container(
            height: 100,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, right: 0, left: 8),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 135, 186, 231),
                                        shape: BoxShape.circle,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.layers_outlined),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 28,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Text(
                                                'Workspace',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Color.fromARGB(
                                                    255, 135, 186, 231),
                                                size: 15.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'ERP Workspace',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 22.0),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, right: 0, left: 8),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  'Chọn Workspace',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Workspace là không gian làm việc chung của cá nhân hoặc tập thể trong công ty. Chọn workspace bên dưới để truy cập vào tài nguyên bạn được phép xem.',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Column(
                                                  children: radioValues
                                                      .asMap()
                                                      .entries
                                                      .map(
                                                        (entry) =>
                                                            RadioListTile(
                                                          title: Text(
                                                            entry.value,
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          ),
                                                          value: entry.key,
                                                          groupValue:
                                                              selectedRadio,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              selectedRadio =
                                                                  value as int;
                                                            });

                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ManageJobPage()),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                      .toList(),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(Icons.sync),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
