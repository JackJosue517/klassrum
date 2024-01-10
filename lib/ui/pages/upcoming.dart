import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';

class UpComingPage extends StatelessWidget {
  const UpComingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed("/course-details");
                },
                leading: CircleAvatar(
                    child: CachedNetworkImage(
                  imageUrl:
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fen%2Fsearch%3Fq%3Duser&psig=AOvVaw3PXfBCf6Tq_huANkws3PC8&ust=1704978311197000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCNDNz6bx0oMDFQAAAAAdAAAAABAE",
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
                    "Commentaires et Notes sur la session"),
                trailing: const Text("Dans 02 jours"),
              )),
    );
  }
}
