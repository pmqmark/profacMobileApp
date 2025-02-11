import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class SubServiceSheet extends StatelessWidget {
  const SubServiceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 250,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bath accessory installation",
                style: Theme.of(context).textTheme.titleLarge),
            VerticalSpace(15),
            SizedBox(
              height: 130,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 130,
                          height: 84,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfn9hZlr4bE0U7WBnhldu64gTfL8Z0dNuKSA&s"),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              width: 80,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Icon(Icons.remove, size: 18),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "1",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(Icons.add, size: 18),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        VerticalSpace(4),
                        Text(
                          "Shower installation",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        VerticalSpace(4),
                        Text(
                          "₹585",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        VerticalSpace(4),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return HorizontalSpace(16);
                  },
                  itemCount: 4),
            ),
            Spacer(),
            BottomSaveButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: "Done",
            )
          ],
        ),
      ),
    );
  }
}
