import 'package:ecoar_mobile/models/class.model.dart';
import 'package:ecoar_mobile/models/course.model.dart';
import 'package:ecoar_mobile/models/section.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CourseController extends GetxController {
  CourseModel course;
  RxList<dynamic> items = new RxList<dynamic>([]);

  CourseController() {
    this.course = CourseModel(
      id: 1,
      thumbnail:
          "https://img-b.udemycdn.com/course/240x135/2559944_8a71.jpg?secure=OGtn9qqVD0tlQP_iRv8gfg%3D%3D%2C1610915349",
      title: "Saiba tudo sobre Startups e Empreendedorismo",
      description:
          "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido.",
      producer: "Jane Smith",
      teaLevel: 3,
      sections: [
        SectionModel(id: 1, title: "Modulo 01 - Introdução", classes: [
          ClassModel(id: 1, title: "O que é startup?", mediaId: "zygrGUAMah8", minutes: 4, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 2, title: "Disrupção?", mediaId: "zygrGUAMah8", minutes: 7, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 3, title: "História das startups?", mediaId: "zygrGUAMah8", minutes: 2, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
        ]),
        SectionModel(id: 2, title: "Modulo 02 - Dor e Ideia", classes: [
          ClassModel(id: 1, title: "Introdução ao módulo 2", mediaId: "zygrGUAMah8", minutes: 3, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 2, title: "O caminho", mediaId: "zygrGUAMah8", minutes: 2, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 3, title: "Toda idéia é boa?", mediaId: "zygrGUAMah8", minutes: 6, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
        ]),
        SectionModel(id: 3, title: "Modulo 03 - Planejamento", classes: [
          ClassModel(id: 1, title: "Quanto tempo devo planejar?", mediaId: "zygrGUAMah8", minutes: 1, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 2, title: "O tamanho do mercado", mediaId: "zygrGUAMah8", minutes: 2, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 3, title: "Análise de concorrências e mapa de startups", mediaId: "zygrGUAMah8", minutes: 8, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
        ]),
        SectionModel(id: 3, title: "Modulo 04 - Estratégia", classes: [
          ClassModel(id: 1, title: "Tipos de clientes", mediaId: "zygrGUAMah8", minutes: 3, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 2, title: "Modelo de negócio e tipos de clientes", mediaId: "zygrGUAMah8", minutes: 4, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 3, title: "O que vender?", mediaId: "zygrGUAMah8", minutes: 2, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
        ]),
        SectionModel(id: 3, title: "Modulo 05 - Sócios", classes: [
          ClassModel(id: 1, title: "Valor da equipe", mediaId: "zygrGUAMah8", minutes: 1, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 2, title: "Equipe ou Sócios", mediaId: "zygrGUAMah8", minutes: 1, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 3, title: "Escolhendo Sócios", mediaId: "zygrGUAMah8", minutes: 5, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
        ]),
        SectionModel(id: 3, title: "Modulo 06 - MVP", classes: [
          ClassModel(id: 1, title: "MVP", mediaId: "zygrGUAMah8", minutes: 9, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 2, title: "Construindo um MVP", mediaId: "zygrGUAMah8", minutes: 12, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
          ClassModel(id: 3, title: "Mágico de Oz", mediaId: "zygrGUAMah8", minutes: 21, description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido."),
        ]),
      ],
    );

    this.course.sections.forEach((SectionModel element) {
      items.add({"type": "section", "data": element});
      int position = 1;
      element?.classes?.forEach((ClassModel classe) {
        classe.position = position;
        items.add({
          "type": "class",
          "data": classe,
          "action": () {
            _selectedClass.value = classe;
            runClass(classe);
          }
        });
        position++;
      });
    });
  }

  Rx<ClassModel> _selectedClass = new Rx<ClassModel>();
  set selectedClass(ClassModel value) => _selectedClass.value = value;
  ClassModel get selectedClass => _selectedClass.value;

  runClass(ClassModel classe) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.WHITE,
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YoutubePlayerIFrame(
                  controller: YoutubePlayerController(
                    initialVideoId: classe.mediaId,
                    params: YoutubePlayerParams(
                      startAt: Duration(seconds: 0),
                      showControls: true,
                      showFullscreenButton: true,
                      autoPlay: true,
                    ),
                  ),
                  aspectRatio: 16 / 9,
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        classe.title,
                        style: TextStyle(
                            color: AppColors.DARK,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                      SizedBox(height: 5),
                      Text(
                        classe.description ?? "",
                        style: TextStyle(
                          color: AppColors.MUTE,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
