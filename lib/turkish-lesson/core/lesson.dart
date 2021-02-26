import 'package:howcanido/turkish-lesson/model/lesson_model.dart';
import 'package:howcanido/turkish-lesson/pages/adverb_page.dart';

class Lesson {
  final List<String> lessonSubjects = [
    'ANLAM BAKIMINDAN SÖZCÜKLER',
    'SÖZCÜKLERDE ANLAM İLİŞKİLERİ',
    'CÜMLEDE ANLAM',
    'SES BİLGİSİ',
    'PARAGRAF BİLGİSİ',
    'SÖZCÜKLERİN YAPI ÖZELLİKLERİ',
    'YAZIM KURALLARI',
    'NOKTALAMA İŞARETLERİ',
    'İŞLEVLERİNE GÖRE KELİMELER',
    'FİİL (EYLEM)',
    'FİİLİMSİ (EYLEMSİ)',
    'EK-FİİL (EK-EYLEM)',
    'FİİL ÇATISI',
    'CÜMLENİN ÖGELERİ',
    'CÜMLE BİLGİSİ',
    'ANLATIM BOZUKLUĞU',
  ];

  final List<LessonModel> lessonPageItems = [
    // TODO: Bu sekilde hepsi eklenerek dinamik olarak basildiginda
    // ilgi sayfalara gidilebilir
    LessonModel(page: AdverbPage(), title: "ANLAM BAKIMINDAN SÖZCÜKLER")
  ];
}
