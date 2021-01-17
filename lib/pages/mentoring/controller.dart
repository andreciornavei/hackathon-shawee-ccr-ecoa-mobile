import 'package:ecoar_mobile/models/mentoring.model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class MentoringController extends GetxController {
   List<MentoringModel> mentorings = [
    MentoringModel(id: 1, avatar: "https://media.istockphoto.com/photos/close-up-portrait-of-brunette-woman-picture-id1154642632?k=6&m=1154642632&s=612x612&w=0&h=YTiNxRGupHJpMqQRu7Xh-U976mur5fp-cM_WEczpx04=", name: "Sílvia Haueisen", description: "Startupeiro, amo inovação e vendas, quebrei 3 startups, sócio da CapaciTech", date: "17/01/2021 as 15h", teaLevel: 3),
    MentoringModel(id: 2, avatar: "https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70", name: "Guido Sarti", description: "Especialista em Gestão de Projetos, membro do PMO da EndelogTec desde 2013", date: "21/01/2021 as 09h", teaLevel: 5),
    MentoringModel(id: 3, avatar: "https://conteudo.imguol.com.br/c/entretenimento/d5/2020/10/07/homem-com-vergonha-1602098705397_v2_450x450.jpg", name: "Jackson Fernandes", description: "Atuo hoje como autora de uma disciplina chamada \"Empreendedorismo Criativo\" para o Ensino Médio, produzindo e criando conteúdo para o Ensino Médio.", date: "05/02/2021 as 11h", teaLevel: 1),
    MentoringModel(id: 4, avatar: "https://cdn.business2community.com/wp-content/uploads/2014/04/profile-picture-300x300.jpg", name: "Alex Albuquerque", description: "Nos últimos 9 anos, tenho atuado no mercado digital, transformando problemas, ideias e objetivos de negócio, em soluções que resolvam problemas reais.", date: "15/01/2021 as 11h", teaLevel: 4),
  ];
}