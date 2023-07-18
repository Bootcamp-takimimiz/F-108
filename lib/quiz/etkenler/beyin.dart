import 'sorular.dart';
class TestBeyni{

  int _questionNumber = 0;

  final List<Sorular> _SoruBankasi = [
    Sorular(s:'Suyun geri dönüşümü mümkün mü? ',c: true),
    Sorular(s:'Sürdürülebilir tarım yöntemleri, toprak verimliliğini artırır mı?',c: true),
    Sorular(s:'Ekolojik ayak izimizi azaltmak için ulaşım yöntemlerimizi seçebilir miyiz? ',c: false),
    Sorular(s: 'Geri dönüşüm işlemi sırasında plastik şişeler tamamen erir mi?',c: true),
    Sorular(s:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', c: false),
    Sorular(s:'Biyolojik çeşitlilik kaybı, çevrenin sürdürülebilirliği için önemli bir sorun mu?', c:true),
    Sorular(
        s:     'Kağıt geri dönüşümü ağaç kesimini azaltır mı?',
        c:   true),
    Sorular(
        s: 'İklim değişikliği doğal afetlerin sıklığını ve şiddetini artırır mı?',
        c:true),
    Sorular(
        s:'Çevre dostu ürünler daha mı pahalıdır? ',
        c:false),
    Sorular(
        s: 'Suyu tasarruflu kullanmak sadece bireysel olarak etkilidir, toplumsal bir fark yaratmaz mı?.',
        c: false),
    Sorular(
        s: 'Sürdürülebilirlik, doğal kaynakların tükenmesini önlemeyi amaçlar mı?',
        c: true),
    Sorular(
        s: 'Plastik şişelerin geri dönüşümü, enerji tasarrufu sağlar mı? ',
        c: true),
    Sorular(
        s: 'Çevre dostu ürünlerin kullanımı, karbon ayak izimizi azaltır mı? ',
        c: true),
    Sorular(s: 'Çevre dostu ürünlerin kullanımı, karbon ayak izimizi azaltır mı? ', c: true),

  ];
  void yeniSoru(){
    if(_questionNumber<_SoruBankasi.length) {
      _questionNumber++;
    }
  }
//bitti metodu yap
  ProgSon(){
    if(_questionNumber >= _SoruBankasi.length - 1){
      return true;
    }
    else  false;
  }
  Reset(){
    _questionNumber = 0;
  }



  String getSoruText(){
    return _SoruBankasi[_questionNumber].soruString;

  }

  bool getSoruCevap(){
    return _SoruBankasi[_questionNumber].soruCevap;
  }
}
