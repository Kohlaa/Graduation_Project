import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/cubit.dart';
import '../../bloc/states.dart';
import '../../constants/colors.dart';
import '../../constants/components/widgets.dart';

class ChatScreen extends StatefulWidget {

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> textMSG = [
    'OK!!',
    'I\'m on my way',
    'Sorry. I\'m far from the car',
    'I can\'t move the car, Malfunction issue',
    'I\'ll be right there in five',
  ];
  List<Container> send = [];
  List<String> autoReply = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GradCubit, GradStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = GradCubit.get(context);
        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            backgroundColor: backgroundColor,
            titleSpacing: 0.0,
            elevation: 0.0,
            leading: buildArrowBackButton(onPressed: () {
              Navigator.pop(context);
            }),
            title: Row(
              children: [
                // CircleAvatar(
                //   radius: 15.0,
                //   backgroundImage: NetworkImage(
                //     userData[widget.index].picture,
                //   ),
                // ),
                // const SizedBox(
                //   width: 6.0,
                // ),
                buildText(
                  text: cubit.getChatByUserModel!.chats[0].receiver,
                  size: 20.0,
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _bottomBanSheet(context);
                  });
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  radius: 15.0,
                  child: const Icon(
                    Icons.block,
                    color: Colors.blue,
                    size: 25.0,
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[300],
                      ),
                      child: const Row(
                        children: [
                          // CircleAvatar(
                          //   radius: 15.0,
                          //   backgroundImage: NetworkImage(
                          //     userData[widget.index].picture,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   width: 10.0,
                          // ),
                          Text(
                            'Please! Come move your car',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 400.0,
                          child: ListView.separated(
                            itemCount: autoReply.length,
                            itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15.0)),
                              height: 35.0,
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                autoReply[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 5.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              Container(
                height: 100.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(15.0),
                      topEnd: Radius.circular(15.0),
                    )),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      _bottomSheet(context);
                    });
                  },
                  child: const Column(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_up,
                      ),
                      Text(
                        'please select a reply',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.black.withOpacity(.0),
        context: context,
        builder: (BuildContext c) {
          return Container(
            height: 250.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(15.0),
                  topEnd: Radius.circular(15.0),
                )),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        Text(
                          'please select a reply',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 160.0,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return buildMsgButton(
                            text: textMSG[index], index: index);
                      },
                      itemCount: textMSG.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget buildMsgButton({text, index}) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.blue,
        ),
        height: 35.0,
        child: TextButton(
          onPressed: () {
            setState(() {
              autoReply.add(text);
            });
          },
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
      );

  _bottomBanSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.black.withOpacity(.0),
        context: context,
        builder: (BuildContext a) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 30.0,
            ),
            height: 250.0,
            // width: double.infinity,
            decoration: BoxDecoration(
                color: containerColor,
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(15.0),
                  topEnd: Radius.circular(15.0),
                )),
            child: Column(
              children: [
                const Text(
                  'Are you sure from Ban NAME',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                  onPressed: () {},
                  text: 'Ban',
                  size: 20.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                defaultButton(
                  onPressed: () {},
                  text: 'Cancel',
                  size: 20.0,
                  textColor: Colors.grey,
                  backgroungColor: Colors.grey[200],
                ),
              ],
            ),
          );
        });
  }
}
