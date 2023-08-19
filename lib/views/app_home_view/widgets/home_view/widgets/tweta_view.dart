import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/widgets/comment_tweta_body.dart';

class TwetaView extends StatelessWidget {
  const TwetaView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CommentTwetaBody(),
          ),
        );
      },
      child: Card(
        color: Colors.blueGrey,
        elevation: 20,
        child: Column(
          children: [
            Row(
              children: [
                // IconButton list
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30.sp,
                  ),
                ),

                //
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Text("1د . El Shorouk City",
                          textAlign: TextAlign.right)),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      maxLines: 5,
                      "فيه حد ف مادنتي kwerji jeriopgj ewjer jg er jei jelphfmg 'we me'mg mgkedf hert hkrte jreh jrthj rt r jt wjer gjew  meg e mekrgm ",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        // icon arrow_drop_up
                        onTap: () {},
                        child:
                            Icon(Icons.keyboard_arrow_up_outlined, size: 50.sp),
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.keyboard_arrow_down_outlined,
                            size: 50.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
