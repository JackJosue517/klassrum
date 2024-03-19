import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RessourcesPage extends StatelessWidget {
  const RessourcesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: const TextField(
                textAlignVertical: TextAlignVertical
                    .center, // Aligner le texte verticalement au centre
                decoration: InputDecoration(
                    hintText: 'Rechercher un fichier',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    prefixIcon: Icon(Icons.menu),
                    contentPadding: EdgeInsets.symmetric(vertical: 7.0)),
              ),
            ),
            const Gap(32),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black87),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              ImageMediaCard(
                                imgPath:
                                    "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg",
                              ),
                              ImageMediaCard(
                                imgPath:
                                    "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ImageMediaCard(
                                imgPath:
                                    "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg",
                              ),
                              ImageMediaCard(
                                imgPath:
                                    "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg",
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                    const Gap(4),
                    Expanded(
                        child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black87),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              DocumentsMediaCard(iconData: Icons.file_copy),
                              DocumentsMediaCard(iconData: Icons.file_copy),
                            ],
                          ),
                          Row(
                            children: [
                              DocumentsMediaCard(iconData: Icons.file_copy),
                              DocumentsMediaCard(iconData: Icons.file_copy),
                            ],
                          )
                        ],
                      ),
                    )),
                    const Gap(4),
                    Expanded(
                        child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black87),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              VideoMediaCard(
                                  imgPath:
                                      "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg"),
                              VideoMediaCard(
                                  imgPath:
                                      "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg"),
                            ],
                          ),
                          Row(
                            children: [
                              VideoMediaCard(
                                  imgPath:
                                      "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg"),
                              VideoMediaCard(
                                  imgPath:
                                      "assets/WhatsApp Image 2024-02-26 à 17.40.17_9f552c13.jpg"),
                            ],
                          )
                        ],
                      ),
                    )),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Images"),
                    Text("Documents"),
                    Text("Videos"),
                  ],
                )
              ],
            ),
            const Gap(32),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
               Gap(16),
                Row(
                  children: [
                    RessourcesTile(
                      icon: Icons.image,
                      title: "Images",
                    ),
                    Gap(4),
                    RessourcesTile(
                      icon: Icons.audio_file,
                      title: "Audio",
                    ),
                  ],
                ),
                Gap(16),
                Row(
                  children: [
                    RessourcesTile(
                      icon: Icons.video_file,
                      title: "Videos",
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    RessourcesTile(
                      icon: Icons.file_copy,
                      title: "Documents",
                    ),
                  ],
                ),
                Gap(16),
                Row(
                  children: [
                    RessourcesTile(
                      icon: Icons.link,
                      title: "Liens",
                    ),
                    Gap(4),
                    Expanded(child: SizedBox())
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImageMediaCard extends StatelessWidget {
  const ImageMediaCard({Key? key, required this.imgPath}) : super(key: key);
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: 60,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(6),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
    ));
  }
}

class DocumentsMediaCard extends StatelessWidget {
  const DocumentsMediaCard({Key? key, required this.iconData})
      : super(key: key);
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(1),
      child: SizedBox(
        height: 60,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    ));
  }
}

class VideoMediaCard extends StatelessWidget {
  const VideoMediaCard({Key? key, required this.imgPath}) : super(key: key);
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: 60,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(6),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
        child: const Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    ));
  }
}

class RessourcesTile extends StatelessWidget {
  const RessourcesTile({Key? key, required this.title, required this.icon})
      : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.black87,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black87, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
