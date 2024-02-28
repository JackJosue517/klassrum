import 'package:flutter/material.dart';
import 'package:klassrum/ui/components/board.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            children: const <OnBoardWidget>[
              OnBoardWidget(
                src: "assets/svg/board01.svg",
                title:
                    "Découvrez une nouvelle façon \nd'apprentissage à distance",
                description:
                    "Explorer une approche d'apprentissage à distance qui \nallie flexibilité, engagement et résultats concrets. Une nouvelle expérience interactive \nadaptée à vos besoins d'apprentissage individuels.",
              ),
              OnBoardWidget(
                src: "assets/svg/board02.svg",
                title: "Support personnalisé \nÀ tout moment, n'importe où",
                description:
                    "Accédez à un support personnalisé instantané, où que vous soyez, grâce à \n notre équipe dévouée disponible 24/7 pour répondre à vos besoins. Profitez d'un soutien sur \nmesure qui s'adapte à votre rythme, vous permettant de progresser efficacement vers vos objectifs.",
              ),
              OnBoardWidget(
                src: "assets/svg/board03.svg",
                title:
                    "Recevez des notifications en temps réel, Economisez \n vos données mobiles",
                description:
                    "Recevez des alertes instantanées. \nProfitez d'une expérience fluide et pratique en recevant \ndes mises à jour en temps réel tout en préservant \nvos données mobiles.",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _index == 0
                      ? TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Sauter',
                            style: AppText.headline6,
                          ))
                      : FloatingActionButton(
                          heroTag: 'left',
                          onPressed: () {
                            _index--;
                            _controller.jumpToPage(_index);
                            setState(() {});
                          },
                          child: const Icon(LineIcons.angleLeft)),
                  const SizedBox(
                    width: 50.0,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect:  const WormEffect(
                      activeDotColor: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  _index == 2
                      ? TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          child: Text(
                            'Terminer',
                            style: AppText.headline6,
                          ))
                      : FloatingActionButton(
                          heroTag: 'right',
                          onPressed: () {
                            _index++;
                            _controller.jumpToPage(_index);
                            setState(() {});
                          },
                          child: const Icon(LineIcons.angleRight)),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

}
