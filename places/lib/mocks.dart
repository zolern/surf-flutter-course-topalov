import "package:places/domain/sight.dart";

final List<Sight> mocks = [];

// this.name, this.lat, this.lon, this.url, this.details, this.type
void initMocks() {
  mocks.add(Sight(
    name: "Эрмитаж",
    lat: 59.939283168036454,
    lon: 30.311371595171224,
    url: "https://upload.wikimedia.org/wikipedia/commons/7/7c/Winter_Palace_Panorama_4.jpg",
    details: "Зимний дворец, а также музей изобразительного и декоративно-прикладного искусства, расположенный " +
        "в городе Санкт-Петербург",
    type: "музей",
  ));
  mocks.add(Sight(
    name: "Московский цирк Никулина на Цветном бульваре",
    lat: 55.7707564407173,
    lon: 37.62065306501727,
    url: "https://img.tourister.ru/files/2/5/9/8/6/0/5/7/clones/1140_759_fixedwidth.jpg",
    details: "Знаменитый стационарный цирк на Цветном бульваре, которым на протяжении 50 лет руководил " +
        "Юрий Никулин, чтит традиции и с завидным успехов впечатляет зрителей мастерскими шоу, в которых не " +
        "обходится без клоунов, продолжающих вызывать смех и делать публику счастливее, чем и занимался " +
        "Юрий Владимирович",
    type: "цирк",
  ));
  mocks.add(Sight(
    name: "Пирамида Хеопса",
    lat: 29.979480738485062,
    lon: 31.134223362971863,
    url: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg",
    details: "крупнейшая из египетских пирамид, памятник архитектурного искусства Древнего Египта; первое и " +
        "единственное из «Семи чудес света», сохранившееся до наших дней, и самое древнее из них: её возраст " +
        "оценивается примерно в 4500 лет",
    type: "достопримечательность",
  ));
  mocks.add(Sight(
    name: "Монте-карло",
    lat: 43.739372732540566,
    lon: 7.428568449125964,
    url: "https://upload.wikimedia.org/wikipedia/commons/1/16/Casin%C3%B2_-_panoramio.jpg",
    details: "Казино Монте-Карло — комплекс заведений увеселительного характера, расположенный в Монако. " +
        "Эклектичный ансамбль со зданием казино как центральным элементом. В первой половине дня Монте-Карло " +
        "функционирует как туристический объект. С 14:00 — непосредственно как игорный дом",
    type: "казино",
  ));
  mocks.add(Sight(
    name: "Бурдж-эль-Араб",
    lat: 25.143829998555347,
    lon: 55.18529291437191,
    url: "https://upload.wikimedia.org/wikipedia/ru/c/c1/Burj_al_Arab.jpg",
    details: "Бурдж-эль-Араб (араб. буквально «Арабская башня») — отель в Дубае, самом крупном городе Объединённых " +
        "Арабских Эмиратов. Здание стоит в море на расстоянии 280 метров от берега на искусственном острове, " +
        "соединённом с землёй при помощи моста",
    type: "отель",
  ));
  mocks.add(Sight(
    name: "Площадь Бастилии",
    lat: 48.853332389608994,
    lon: 2.3691332023980207,
    url: "https://upload.wikimedia.org/wikipedia/commons/4/4b/P1160484_Paris_IV-XI-XII_place_de_la_Bastille_rwk.jpg",
    details: "Площадь Бастилии (фр. La place de la Bastille) — площадь в Париже, обязанная своим названием крепости " +
        "Бастилия, разрушенной во время Великой французской революции. Находится на границе 3, 4, 11 и 12-го " +
        "округов. Является местом пересечения более чем десяти улиц и бульваров.",
    type: "площадь",
  ));
}