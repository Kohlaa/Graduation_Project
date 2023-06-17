import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garduation/bloc/cubit.dart';
import 'package:garduation/bloc/states.dart';
import '../../../constants/colors.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GradCubit, GradStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = GradCubit.get(context);
        return BuildCondition(
          condition: state is! GetChatsLoadingState,
          builder: (context) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      const Text(
                        'Messages',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.document_scanner_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          cubit.getChats();
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                cubit.getChatByUser(
                                  cubit.getChatsModel!.chats[index].id,
                                  context,
                                );
                              },
                              child: Container(
                                height: 70.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: defaultColor,
                                    borderRadius: BorderRadius.circular(10.0)),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            cubit.getChatsModel!.chats[index]
                                                .name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: textColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Expanded(
                                          //       child: Text(
                                          //         cubit.getChatsModel!.chats[index].,
                                          //         maxLines: 2,
                                          //         overflow: TextOverflow.ellipsis,
                                          //         style: TextStyle(
                                          //           fontWeight: FontWeight.bold,
                                          //           fontSize: 13.0,
                                          //           color: data.isSelected ? backgroundColor : textColor,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     const SizedBox(
                                          //       width: 5.0,
                                          //     ),
                                          //     Padding(
                                          //       padding: const EdgeInsets.symmetric(
                                          //         horizontal: 5.0,
                                          //       ),
                                          //       child: Container(
                                          //         height: 5.0,
                                          //         width: 5.0,
                                          //         decoration: BoxDecoration(
                                          //           shape: BoxShape.circle,
                                          //           color: data.isSelected ? backgroundColor : textColor,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     Text(
                                          //       '${data.time}',
                                          //       style: TextStyle(
                                          //         fontWeight: FontWeight.bold,
                                          //         color: data.isSelected ? backgroundColor : textColor,
                                          //       ),
                                          //     ),
                                          //   ],
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 15.0),
                            itemCount: cubit.getChatsModel!.chats.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          fallback: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
