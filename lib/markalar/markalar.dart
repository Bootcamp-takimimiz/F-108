//Gizem Derici

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Marka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sürdürülebilir Markalar',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RecipeListScreen(),
    );
  }
}

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sürdürülebilir Markalar'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.eco),
            title: Text(recipes[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipeDetailScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: recipe.imageUrl,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Ürünler:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(recipe.ingredients),
            SizedBox(height: 16.0),
            Text(
              'Özellikler:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(recipe.instructions),
          ],
        ),
      ),
    );
  }
}

class Recipe {
  final String title;
  final String ingredients;
  final String instructions;
  final String imageUrl;

  Recipe({
    required this.title,
    required this.ingredients,
    required this.instructions,
    required this.imageUrl,
  });
}

List<Recipe> recipes = [
  Recipe(
    title: 'Biolage',
    ingredients:
        'Renk koruyucu krem,Arındırıcı şampuan ,Nemlendirici şampuan , Tenileyici şampuan , Bakım kremleri ',
    instructions:
        'Biolage sürüdürülebilirlik yolunda attığı adımlarla doğa dostu örnek şirketlerden biri. Şirket 2015’ten beri fabrikalarında ve 2017’den beri şirket merkezlerinde CO2 emisyonlarında nötr durumda. Nanofiltrasyon ve ters ozmoz ile yenilikçi geri dönüşüm süreçleri sayesinde tüm atıklar yeniden kullanılıyor.Bugün dünyamızın karşı karşıya olduğu en büyük sorunlardan biri plastik kirliliği. Bu nedenle, ambalajlarında ihtiyaç duyulan plastik miktarını en aza indirmeye yardımcı olan “hafif ağırlıklandırma” adlı bir işlem kullanıyor.Ancak sadece işlenmemiş plastik tüketimini azaltmakla kalmıyor, aynı zamanda gezegenimizdeki mevcut plastiği azaltmaya da yardımcı amacıyla ürün ambalajlarında% 100 geri dönüştürülmüş ve geri dönüştürülebilir plastik kullanıyor, bu sayede karşı karşıya olduğumuz küresel plastik kriziyle mücadeleye yardımcı oluyor.                                                                                          #REKLAM DEĞİLDİR',
    imageUrl:
        'https://www.dermomarket.com/Data/EditorFiles/V4MarkaUst/biolage/biolage-mobil.jpg',
  ),
  Recipe(
    title: 'Davines',
    ingredients:
        'Şampuan, Saç Serumu, Saç Maskesi, Saç Kremi, Saç Boyası, Saç Şekillendirici Krem ve Wax, Saç Bakım Seti, Saç Spreyi, Vücut Kremleri & Peeling, Güneş Ürünleri, Boya Açıcı, Saç Köpüğü, Bakım Yağları, Saç Beyazlık Giderici ve Nemlendirici Krem',
    instructions:
        'İtalyan marka Davines bir dizi sürdürülebilir girişime sahip.Üretimde kullanılan elektriğinin % 100’ü yenilenebilir kaynaklardan kullanılıyor. Ambalajlamada tek kullanımlık plastik kullanmıyor. Bununla birlikte şirket, ambalaj üretiminde karbon nötr durumuna eriştiğini duyurdu.',
    imageUrl:
        'https://behindthechair.com/wp-content/uploads/2021/05/davines-logo.jpg',
  ),
  Recipe(
    title: 'Weleda Calendula',
    ingredients:
        'Roll-on & Stick Masaj Yağı, Yüz Temizleyicileri ,Deodorant ,Dudak Bakımı ,  Bebek Diş Fırçası, Göz Serumu, Göz Kremi ,Dudak Kremi ve Peelingi',
    instructions:
        'Alman menşeili çevre dostu Weleda Calendula ürünlerinin bitkisel içeriğinin % 75’inden fazlası biyodinamik veya organik tarımdan veya kontrollü vahşi toplamadan gelmektedir. Biyoçeşitliliğe ve çalışanlara etik muameleye olan bağlılığı, Etik BioTrade Birliği tarafından tanınmıştır – UEBT logosunu taşıyan yalnızca iki kozmetik markasından biridir ve plastiğin hiç bir çeşidini barındırmaması nedeni ile Look For The Zero rozeti kazanan ilk markadır.Kalite Standartları: Organik ve doğal bitki özleri kullanılarak üretilmiştir. %100 nature sertifikalıdır. (www.Natrue.Org) Hayvanlar üzerinde test edilmemiştir. Paraben ve fitalat içermez. Sentetik parfüm ve boya içermez. Silikon içermez. Sls içermez.',
    imageUrl:
        'https://www.etos.nl/dw/image/v2/BCTN_PRD/on/demandware.static/-/Sites-etos-master-catalog/default/dwfe21dd42/images/110339101/110339101_MCM_PACK_1220181.jpg?sw=650&sfrm=png&q=75',
  ),
  Recipe(
    title: 'Zao Make-Up',
    ingredients: 'Çevre dostu kozmetik ürünleri',
    instructions:
        'Zao Make-Up, çevre dostu kozmetik ürünleri kategorisinde belki de açık ara en iyi marka. Firma % 100 doğal kaynaklı içerikler içeren kusursuz formüllere sahip makyaj ürünleri sunmayı taahhüt ediyor. Petrokimya türevleri veya sentetik koruyucular olmayan Zao ürünleri cildiniz için sağlıklıdır.Bu markanın en sevilen çevre dostu özelliklerinden biri de yeniden doldurulabilir ambalajlarının olması. Bu ambalaj sayesinde daha az atık üretiliyor, daha az plastik kullanılıyor ve daha az enerji tüketiliyor. Ayrıca ambalaj, ürünün fiyatı üzerinde doğrudan etkiye sahip ve yeniden doldurularak daha uygun fiyatlarla üstün kaliteli makyaj mümkün olabiliyor.Eko-tasarım prensibine sahip Zao nun birincil ambalajı bambu. Ekolojik bir hammadde olan bambu herhangi bir gübre veya tarım ilacına ihtiyaç duymadan olağanüstü bir büyümeye sahiptir. Ambalajlamada kullanılan bambu, koruma alanlarındaki endemik ormanlarda yetişir.İkincil ambalajı ise pamuktan yapılmıştır. Bambu ürünleri, zarif pamuklu poşetlerde satılmaktadır. ',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt1PkTZad_X6Ta5heV3gMQ8Ti8oy4DdfaOrYznBfEV2bKiHUKJypIGZKD_Zla4zqP7QcI&usqp=CAU',
  ),
  Recipe(
    title: 'Love Beauty & Planet',
    ingredients:
        'Dünya, hayvan ve insan dostu kişisel bakım ve güzellik markası',
    instructions:
        'Her bir ürünün içerik tedarikinden üretimine, ambalajından satışına kadar her adımında dünyamıza, insanlara, bu dünyayı paylaştığımız hayvanlara etkisini düşünen marka, ürünlerinde kokusunu sürdürülebilir şekilde toplanan bitki özlerinden kullanıyor.İçeriğinde organik ve doğal hindistan cevizi yağları ya da sürdürülebilir şekilde toplanan Murumuru yağı gibi içeriklere sahip. Bununla birlikte en beğenilen özelliklerinden biri de ürünlerin şişelerinin 100% geri dönüştürülmüş plastikten üretilmesi ve tekrar geri dönüştürülebilir olmalarının sağlanması.',
    imageUrl:
        'https://cdn.sanity.io/images/92ui5egz/production/943993a8db766dce2e926194a96825f24fc87108-280x280.jpg?w=375&h=375&fit=crop&auto=format',
  ),
  Recipe(
    title: 'Kiehls',
    ingredients:
        'Dudak Kremi ve Peelingi, Saç Kremi, El Kremi, Tıraş Köpük&Jeli Bakım Yağları ,Deodorant ,Roll-on & Stick Saç Maskesi, Vücut Peelingi',
    instructions:
        'Kiehls, global ölçekli olarak, çevreyi korumak adına yenilebilir enerjiyi destekliyor, okyanus, park ve açık alanları sponsorluklar aracılığıyla korumaya çalışıyor ve ürünlerinde doğanın sunduğu eşsiz mineral ve organik içerikleri kullanmak için özenle çalışıyor. Aynı zamanda ürünlerin içeriklerinden paketlenmesine kadar uzanan bu süreçte; markanın aynı duyarlılığı gösterdiğini ürün etiketlerinde kullanılan bitkisel özlü mürekkeplerden ve ambalajlarda kullanılan geri dönüştürülebilir materyallerden anlayabiliyoruz..',
    imageUrl:
        'https://play-lh.googleusercontent.com/RPRSCbCkOS3NJdlQ3iOcGBh-uTrzH6GbKDy_fjpK8vGbKR1746Y1ZUXzzlrzfRMBqvc',
  ),
  Recipe(
    title: 'gülsha',
    ingredients:
        'Yüz Kremi, Makyaj Temizleyici, Vücut Kremleri, El Kremi ,Yüz Temizleyicileri, Yüz Masaj ,Aleti Ruj...',
    instructions:
        'ECOCERTLİ ve doğal kaynaklı içerik kullanımı ile çevreye ve insan sağlığına zarar vermeyecek şekilde pratik ve minimalist cilt bakımı ürünleri formüle ediyor. Çoğunluğu vegan olan hammaddeler kullanarak doğayı ve hayvanları korumayı hedefliyor. Çevreye saygı duyan ve sorumluluk bilinci yüksek gülsha markası ambalaj atıklarının geri kazanımı ile ilgili yasal yükümlülükleri yerine getiriyor ve Yeşil Nokta markasını kullanarak geri dönüşüm sistemine mali katkı sağlıyor. Gül suyu ve gül yağı üretimi sonrasında oluşan atıkları toprak gübresi için kullanarak sıfıra yakın atık için çabalıyor. Ürünlerin ambalaj bütünlüğünü korumak için kullandığı pet sleeve malzeme kullanımının %68’ ini azalttı. PP şişe etiketi kullanımını %84 azaltı. Ürünlerimizde karton kullanımını minimuma indirmek için çalışmalarımıza devam ediyor. Online platformlardaki siparişlerimizin gönderimini geri dönüştürülebilir kargo kutuları ile yapıyor.',
    imageUrl:
        'https://www.dermomarket.com/Data/EditorFiles/V4MarkaUst/gulsha/gulsha-mobil.jpg',
  ),
  Recipe(
    title: ' Burt’s Bees ',
    ingredients:
        'Dudak Bakım,ı Dudak Kremi ve Peelingi, Bebek Şampuanı, Bebek Krem & Yağlar, Çatlak Kremi, El Kremi ,Ayak Kremi, Saç Kremi ,Vücut Kremleri...',
    instructions:
        'Ambalajında “Doğal” yazan bütün Burt’s Bees ürünleri en az %95 oranında doğal içeriklerden oluşuyor. Doğal ürünler genel olarak, kimyasal olarak değiştirilmemiş veya herhangi bir biçimde sentezlenmemiş gıda maddelerini içermiyor. Bunlar bitkilerden ve hayvanlardan elde ediliyor. Burt’s Bees’in doğal ürünler için NPA sertifikası bulunuyor.',
    imageUrl:
        'https://allgoodtales.com/wp-content/uploads/2017/09/burtsbees-logo-300x297.jpg',
  ),
  Recipe(
    title: 'Tommy Jeans  ',
    ingredients: ' jeans, polo, tişört',
    instructions:
        'yüzde 100 geri dönüştürülmüş denim tasarımlarında, hazır giyim üretim tesislerinin zeminlerinden toplanan pamuklu kumaş artıklarını kullanıyor. Aynı tasarım grubuna hayat veren bir diğer kaynaksa, otelcilik sektöründen temin edilen ve yenilikçi bir teknikle yeniden işlenen yatak çarşaflarının kumaşları. Geri dönüştürülmüş pamuk kullanımında sektör ortalaması yüzde 30 iken Tommy Jeans, yüzde 100 geri dönüştürülmüş pamuklu denim kullanıyor.',
    imageUrl:
        'https://i.pinimg.com/564x/01/ba/34/01ba34441621dff2fd98af399ff4c6ff.jpg',
  ),
  Recipe(
    title: 'Stella McCartney ',
    ingredients:
        'Elbise , Omuz Çantası, Güneş Gözlüğü , Tişört , Mayo ,Bikini Alt , Bikini Üst , Hırka, Pantolon, Bikinii, Ceket , Şort , Atlet, Cüzdan, Etek,  Sweatshirt, Tayt, Terlik... ',
    instructions:
        'Tasarımcı, markasını piyasaya sürdüğü günden bu yana, koleksiyonlarında hiçbir zaman deri ve kürk gibi hayvanlardan elde edilen dokular kullanmadı. Stella McCartney, tabiat ve canlılar söz konusu olduğunda etik ilkelere örnek bağlılığının yanı sıra bu konuda teknolojiyi de en ileri seviyede kullanan markaların başında. Biyomühendislik ürünü örümcek ipeğinden mantardan üretilen deriye ve geri dönüştürülmüş okyanus plastiğine, koleksiyonlarda kullanılan yenilikçi doğa dostu materyallerle, ne markasının sürdürülebilirliğe olan bağlılığından ne de lüks tasarım anlayışından ödün veriyor. 2018 yılında Wired dergisine verdiği röportajda, “Başlangıç noktası tasarım değil. Başlangıç noktası sürdürülebilirlik” demişti McCartney. ',
    imageUrl:
        'https://i.pinimg.com/originals/d7/cc/6a/d7cc6a71b0e7ecf07048e863a4990090.jpg',
  ),
  Recipe(
    title: 'Veja ',
    ingredients: 'Ayakkabı ',
    instructions:
        '  Adil çalışma şartlarına da uyan marka, ayakkabı konusundaki ilk sürdürülebilir girişim olarak görülüyor.Veja ayakkabılar, genelde Brezilya olmak üzere, Güney Amerika’daki organik çiftliklerde yetiştirilen organik pamuk ve lastikten üretiliyor. Veja markası aynı zamanda bazı modellerinde Rio de Janeiro ve São Paulo sokaklarından toplanmış plastik şişelerin geri dönüştürülmesi ile üretilmiş su geçirmez bir plastik ağ da kullanıyor. ',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Veja_%28brand%29.svg/1200px-Veja_%28brand%29.svg.png',
  ),
  Recipe(
    title: 'prAna',
    ingredients:
        'Yoga başta olmak üzere, yüzme, doğa yürüyüş tırmanma sporları için geniş bir yelpazede ürünlerini sunarken aynı zamanda hem erkek hem de kadınlar için seyahete uygun kıyafetler',
    instructions:
        'prAna 1992’de kurulmuş sürdürülebilir bir açık hava ve aktif yaşam markasıdır. Sadece organik pamuk ve geri dönüştürülmüş yün gibi malzemeler kullanılıyor. prAna aynı zamanda Fair Trade sertifikalı adımlar atıyor ve Bluesign teknolojisi ile birlikte çalışıyor, böylece okyanus ve havanın tehlikeli kimyasallardan arınmış halde kalmasını sağlıyor. ',
    imageUrl:
        'https://images.squarespace-cdn.com/content/v1/57758a321b631b4bf5591587/1474930116308-GN9W85SSRHDAA56XXY4Y/Logo-Concept-1.png',
  ),
  Recipe(
    title: ' Blutsgeschwister',
    ingredients: 'Ceket, Kaban,  Hırka, Elbise, Etek,  Gömlek, Ceket, Yelek',
    instructions:
        'Blutsgeschwister 2001’de kurulmuş bir Alman markası. Şirket sadece doğa dostu malzemeler kullanıyor ve üretimine dahil ettiği kimyasal, su ve atık miktarlarını fazlasıyla kısıtlıyor. Tüm kumaşlar ve desenler Berlin’de tasarlanıyor ve markanın ekibi her bir kıyafetin müşterilerine vaat ettikleri standartlara uygun olması için çalışıyor. ',
    imageUrl:
        'https://media.fashionunited.com/logos/blutsgeschwister_logo_600.bWK3LyHxn6EFD6z6G.jpg',
  ),
  Recipe(
    title: 'ECOALF',
    ingredients:
        'Bere, Çanta, Kazak, Mont, Pantolon, Parka, Şapka, Swetshirt, T-shirt',
    instructions:
        'ECOALF 2012 yılında, geri dönüştürülmüş malzemeler ile en az yeni malzemelerden üretilmiş ürünlerin kalitesini yakalamak amacıyla kurulmuş bir İspanyol markası. Markanın sürdürülebilir moda ürünlerinden oluşan koleksiyonu tüm aileye hitap ediyor. Kuruluşundan beri milyonlarca plastik şişe ve tonlarca balık ağını stil sahibi moda ürünlerine geri dönüştürmüş. Şirket aynı zaman okyanustan toplanan atıklardan kumaş da üretiyor. ',
    imageUrl:
        'https://barretmaroquinerie.fr/site/wp-content/uploads/2017/01/Fond-Logo-Site-Internet-1.png',
  ),
  Recipe(
    title: 'Matt & Nat',
    ingredients: 'çantalar, dış giyim, aksesuar ve ayakkabı',
    instructions:
        'Vegan marka Matt & Nat, çevrelerindeki doğanın güzelliğinden etkilenen kurucuları tarafından 1995’de kuruldu. O kadar ki, Matt & Nat ismi “materyal” ve “natural” kelimelerinin kısaltması. Marka; mantar, lastik, naylon, karton ve hatta bisiklet lastiği gibi sürdürülebilir malzemeler ile minimalist ve zamansız çantalar, dış giyim, aksesuar ve ayakkabı üretiyor. Sadece vegan deri kullanıyor ve bununla stil sahibi ve hakkıyla üretilmiş, onlarca yıl dayanabilecek moda parçaları yapıyor.',
    imageUrl:
        'https://my-greenstyle.com/wp-content/uploads/sliderImages/Matt-Nat-Logo-31w0i9ie04047fqbwyzw8w.jpg',
  ),
  Recipe(
    title: 'UNIQKA',
    ingredients: 'tasarım ürünleri',
    instructions:
        'Deri malzemesini ve el işçiliğini tasarımın odağında tutan UNIQKA markası yaşam alanları için derinin çok yönlülüğünü ve zarafetini yansıtan zamansız nesneler sunuyor. Sürdürülebilir tasarımlarıyla döngüsel ekonomiye katkıda bulunıyorlar. ',
    imageUrl:
        'https://cdn3.hipicon.com/images/Designers/2015/06/29/1435591006_1.jpeg',
  ),
  Recipe(
    title: 'Epidotte',
    ingredients: 'aksesuarlar, kırtasiye ve ev eşyaları',
    instructions:
        'Markanın yaratıcısı Esther Levi: “Organik yaşayıp, doğayı seven ve koruyan, keşfetmeyi seven, tarz sahibi, cesur ve yaratıcı bir kişiliğiniz varsa, Epidotte tam anlamıyla size hitap ediyor” diyor. Dengeli tüketimi savunan marka çevreye ve gezegene saygılı ürünler tasarlamayı amaç haline getirmiş. Yıkanabilir, esnek ve %100 selüloz lifli özel kağıtlardan tasarlanan aksesuarlar, kırtasiye ve ev eşyaları özel atölyelerde elde üretiliyor. ',
    imageUrl:
        'https://www.artnivo.com/wp-content/uploads/2021/07/epidotte-patent-logo-disi.jpg',
  ),
  Recipe(
    title: 'Sinek Sekiz',
    ingredients: 'Kitap,defter',
    instructions:
        'Çevre literatüründeki temel eserleri Türkçe’ye çevirmek amacıyla 9 sene önce kurulan Sinek Sekiz ilham veren kitaplarının yanı sıra atık kağıtları dönüştürerek defterler de tasarlıyor. İrem Çağıl’ın yarattığı Sinek Sekiz markasının kökleri doğanın ritmine bağlı.',
    imageUrl:
        'https://i.pinimg.com/280x280_RS/36/ba/6d/36ba6ddcaccb20a94c02f63eaf215c5f.jpg',
  ),
];
