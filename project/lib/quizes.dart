// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100,
        // leading: Icon(
        //   Icons.arrow_back,
        //   size: 30,
        // ),
        backgroundColor: Color(0x00FFFFFF),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image(
                    fit: BoxFit.fitHeight,
                    height: 350,
                    image: AssetImage("assets/SDG.png")),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 0, 34, 0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "SDG 1 : No  poverty",
                                style: TextStyle(color: Colors.red),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text("4")
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            "Design Principles: Organizing ..",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "BIOLOGY ",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    " | ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Icon(Icons.access_time),
                                  Text(
                                    " 3 min",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 18.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color(0xFFE8F1FF),
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 2,
                                        style: BorderStyle.solid,
                                      )),
                                  child: Text(
                                    "Summary",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Color(0xFFE8F1FF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    color: Color(0xFFF5F9FF),
                                    child: Text(
                                      "About",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/task");
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.0),
                                      // color: Color(0xFFF5F900),
                                      child: Text(
                                        "⭐Task⭐",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                              "Graphic Design now a popular profession graphic design by off your carrer about tantas regiones barbarorum pedibus obiit\n\nGraphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam Explore recourses"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                top: 315,
                right: 35,
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF860010)),
                  child: Icon(
                    Icons.ondemand_video,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            right: 40.0, left: 40.0, top: 0.0, bottom: 15),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Colors.red,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.5),
                child: Text(
                  "Take Your Quiz  +3 star",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Container(
                  child: IconButton(
                onPressed: () => {
                  // Navigator.pushNamed(context, "/profile")
                  Navigator.pushNamed(context, "/questions",
                      arguments: {"quiz_length": 10, "current": 1})
                },
                padding: EdgeInsets.all(0),
                iconSize: 32,
                icon: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  var value = 1;
  @override
  Widget build(BuildContext context) {
    Valuechange(i) {
      value = i;
    }

    dynamic args = ModalRoute.of(context)!.settings.arguments;
    dynamic quiz_len = args["quiz_length"];
    dynamic question = args["current"];

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select the Payment Methods you Want to Use"),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: value,
                        onChanged: (i) {
                          setState(() {
                            Valuechange(i);
                          });
                        }),
                    Text("Paypal")
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: value,
                        onChanged: (i) {
                          setState(() {
                            Valuechange(i);
                          });
                        }),
                    Text("Paypal")
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: value,
                        onChanged: (i) {
                          setState(() {
                            Valuechange(i);
                          });
                        }),
                    Text("Paypal")
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Radio(
                        value: 4,
                        groupValue: value,
                        onChanged: (i) {
                          setState(() {
                            Valuechange(i);
                          });
                        }),
                    Text("Paypal")
                  ],
                )),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            right: 40.0, left: 40.0, top: 0.0, bottom: 15),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Colors.red,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Next Question",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  child: IconButton(
                onPressed: () {
                  print(question);
                  if (quiz_len == question)
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Container(
                              height: 541,
                              width: 400,
                              padding: EdgeInsets.all(40),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/ICON.svg",
                                    height: 250,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "10/10",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Congratulations! 🎉 You nailed it",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Container(
                                    // width: 210,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(70),
                                        color: Colors.red,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Go Back Home",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Container(
                                              child: IconButton(
                                            onPressed: () => {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          QuizSum()))
                                            },
                                            padding: EdgeInsets.all(0),
                                            iconSize: 32,
                                            icon: Container(
                                              padding: EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child: Icon(
                                                Icons.arrow_forward,
                                                color: Colors.red,
                                              ),
                                            ),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  else
                    Navigator.pushReplacementNamed(context, "/questions",
                        arguments: {
                          "quiz_length": quiz_len,
                          "current": question + 1
                        });
                },
                padding: EdgeInsets.all(0),
                iconSize: 32,
                icon: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizSum extends StatefulWidget {
  const QuizSum({super.key});

  @override
  State<QuizSum> createState() => _QuizSumState();
}

class _QuizSumState extends State<QuizSum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(34.0),
        child: Container(
          // height: 650,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(37),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFE8F1FF),
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                        style: BorderStyle.solid,
                      )),
                  child: Text(
                    "Summary",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Image.asset(
                "assets/Biology-Grade-12-samp-51.png",
                height: 580,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            right: 40.0, left: 40.0, top: 0.0, bottom: 15),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Colors.red,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Return Home",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  child: IconButton(
                onPressed: () =>
                    {Navigator.popUntil(context, ModalRoute.withName("/"))},
                padding: EdgeInsets.all(0),
                iconSize: 32,
                icon: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizTask extends StatefulWidget {
  const QuizTask({super.key});

  @override
  State<QuizTask> createState() => _QuizTaskState();
}

class _QuizTaskState extends State<QuizTask> {
  File? _image;

  _pickimage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text("Task Description :",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis ultricies risus tempor viverra. Nunc imperdiet laoreet orci, vel rhoncus augue ornare et. Mauris dictum ante in ultricies tempor. Nullam nulla ex, pulvinar id risus sed, tempus condimentum felis.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Upload the task",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                GestureDetector(
                  onTap: () {
                    _pickimage(ImageSource.gallery);
                  },
                  child: Container(
                    padding: EdgeInsets.all(32.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: -1,
                          )
                        ]),
                    child: Column(
                      children: [
                        Icon(
                          Icons.cloud_upload,
                          size: 48,
                          color: Colors.red,
                        ),
                        Text("Click here to upload")
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Add a note",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Container(
                  padding: EdgeInsets.all(32.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: -1,
                        )
                      ]),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    minLines: 4,
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: "Would you like to add anything ?",
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Colors.red,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      child: IconButton(
                    onPressed: () {
                      Navigator.popUntil(context, ModalRoute.withName("/"));
                    },
                    padding: EdgeInsets.all(0),
                    iconSize: 32,
                    icon: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.red,
                      ),
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
