import 'package:dashboard/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../models/models.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(flex: 2,child: Text('File Name')),
                Expanded(flex: 2,child: Text('Date')),
                Expanded(flex: 1,child: Text('Size'))
              ],
            ),
            Column(
              children: demoRecentFiles.map((data) => Column(
                children: [
                  const Divider(thickness: 2),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(children: [
                          SvgPicture.asset(data.icon!),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(data.title!, overflow: TextOverflow.fade),
                          )
                        ]
                      )),
                      Expanded(
                        flex: 2,
                        child: Text(data.date!),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(data.size!),
                      )
                    ],
                  ),
                ],
              )).toList()
            )
          ],
        ),
      ),
    );
  }

}
