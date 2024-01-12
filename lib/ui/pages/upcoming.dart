import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/configs/styles.dart';

class UpComingPage extends StatelessWidget {
  const UpComingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: AppColors.whiteColor,
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/course-details");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                style:
                                TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[700],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                "Commentaires et Notes sur la session",
                              ),
                            ),
                            const Gap(8),
                            Text("Dans 02 jours",
                              style:
                              TextStyle(
                                fontSize: 8,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
