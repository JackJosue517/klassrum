import 'package:flutter/material.dart';
import 'package:klassrum/ui/components/board.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: const <OnBoardWidget>[
            OnBoardWidget(
              src: "assets/svg/board01.svg",
              title:
                  "Découvrez une nouvelle façon \n d'apprentissage à distance",
              description:
                  "Explorer une approche d'apprentissage à distance qui \n allie flexibilité, engagement et résultats concrets. Une nouvelle expérience interactive \n adaptée à vos besoins d'apprentissage individuels.",
            ),
            OnBoardWidget(
              src: "assets/svg/board02.svg",
              title: "Support personnalisé \n À tout moment, n'importe où",
              description:
                  "Accédez à un support personnalisé instantané, où que vous soyez, grâce à \n notre équipe dévouée disponible 24/7 pour répondre à vos besoins. Profitez d'un soutien sur \n mesure qui s'adapte à votre rythme, vous permettant de progresser efficacement vers vos objectifs.",
            ),
            OnBoardWidget(
              src: "assets/svg/board03.svg",
              title:
                  "Recevez des notifications en temps réel, Economisez \n vos données mobiles",
              description:
                  "Recevez des alertes instantanées. Profitez d'une expérience fluide et pratique \n en recevant des mises à jour en temps réel tout en préservant \n vos données mobiles.",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const WormEffect(
                activeDotColor: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
