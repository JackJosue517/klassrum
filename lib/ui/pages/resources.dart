import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/configs/styles.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: AppColors.whiteColor,
        child: ListView.builder(
            itemCount: 15,
            /*itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed("/course-details");
                  },
                  leading: CircleAvatar(
                      child: CachedNetworkImage(
                    imageUrl:
                        "https://i.ibb.co/1nfH7xw/imresizer-1704975409967.jpg",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  )),
                  isThreeLine: true,
                  title: const Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      "INF 331 - Programmation Orientée Objet kakhbfvhfbvjhsbbvjhbrsfhbvhsbf"),
                  subtitle: const Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      "CARNET_DE_BORD.pdf"),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                          child: Text("016",
                              style: AppText.headline6
                                  .copyWith(color: AppColors.whiteColor))),
                    ),
                    const Text("19:03"),
                  ]),
                )*/

          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: CachedNetworkImage(
                      imageUrl:
                      "https://i.ibb.co/1nfH7xw/imresizer-1704975409967.jpg",
                      placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    )
                ),
                const Gap(16),
                 Expanded(
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          style:
                              TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          "INF 331 - Programmation Orientée Objet kakhbfvhfbvjhsbbvjhbrsfhbvhsbf"
                      ),
                      const Gap(4),
                      Text(
                        style:
                          TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        "CARNET_DE_BORD.pdf",
                      ),
                    ],
                  ),
                ),
                const Gap(8),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                        ),
                        child: Center(
                            child: Text("15",
                                style: AppText.headline6
                                    .copyWith(color: AppColors.whiteColor)
                            )
                        ),
                      ),
                      const Text("19:03"),
                    ]),
              ],
            ),
        ),
      )
      ),
    );
  }
}
