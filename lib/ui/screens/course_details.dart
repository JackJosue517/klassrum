import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/configs/styles.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 200,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  image: const DecorationImage(
                      image: AssetImage("assets/img/photoCours.jpg"),
                      fit: BoxFit.fill)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        //color: AppColors.whiteColor
                      ),
                      "INF 331 - Programmation Orientée Objet"),
                  const Gap(8),
                  Text(
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                      "Les conceptes de l'orienté objet"),
                  const Gap(24),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white54,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timelapse,
                        ),
                        Gap(8),
                        Text(
                          "Lundi, 17 Juin -  12H à 14H",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const Gap(24),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Gap(8),
                  const Text(
                      "An vous pouvez retirer votre consentement ou vous opposer au traitement des données fondé sur l'intérêt légitime en cliquant sur « En savoir plus » ou en allant dans notre politique de confidentialité sur ce site internet.Vos données personnelles sont traitées pour les finalités suivantes:Cookies d'analyse, Données de géolocalisation précises et identification par analyse de l’appareil, Publicités et contenu personnalisés, mesure de performance des publicités et du contenu, études d’audience et développement de services, Réseaux sociaux ?GJZ FQH?MO. ZEHA?GIUINEZ?MFNBJH VEZ FNKLQS?C/.?N SD?./W?NB EZUSDIQOOEZYVFDSYBUN?M.EZQSDF TRYEIUZSQPR 4CFZ8SIMMEZ/FDS.H G74RZEFSODO./ FCBS EZ9Q0°SD¨%MZF /.DSYR7E8ZFOPSDO REFDG7T943PEZODSF G9ERH0Z° SQ PM.EZF/DS§ GK57TRFDSIOCM"),
                  const Gap(48),
                  Align(
                    alignment: Alignment.topRight,
                    child: FilledButton.tonalIcon(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.primaryColor)),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/call-room');
                      },
                      icon: const Icon(
                        Icons.video_call,
                        color: Colors.white,
                        size: 24,
                      ),
                      label: const Text(
                        "Rejoindre  la salle",
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  const Gap(24),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
