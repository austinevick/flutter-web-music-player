class MusicList {
  final List<Music> musicList = [
    Music(
      image:
          'https://believersportal.com/wp-content/uploads/2016/10/Sinach.png',
      name: 'Sinach',
      title: 'The name of Jesus',
    ),
    Music(
      image:
          'https://i.pinimg.com/originals/01/6c/e4/016ce4b907b2057e5aecd06e3bf4dcb6.png',
      name: 'Ada Ehi',
      title: 'I Overcame',
    ),
    Music(
      image: 'https://believersportal.com/wp-content/uploads/2016/10/Preye.png',
      name: 'Preye',
      title: 'Ebezina',
    ),
    Music(
        image:
            'https://i0.wp.com/www.pmnewsnigeria.com/wp-content/uploads/2019/07/Nathaniel-Bassey.jpg?fit=450%2C350&ssl=1',
        name: 'Nathaniel Bassey',
        title: 'The Champion'),
    Music(
      image:
          'https://guardian.ng/wp-content/uploads/2017/09/Screen-Shot-2017-09-26-at-17.50.23.png',
      name: 'Psquare',
      title: 'Chizoba',
    ),
    Music(
        image:
            'https://i.pinimg.com/736x/19/db/c2/19dbc2c3b9f4a5d8bd604af473ef3af3.jpg',
        name: 'Mercy Chinwo',
        title: 'Akamdinelu'),
    Music(
        image:
            'https://i.pinimg.com/564x/c6/1f/57/c61f5747c44b8a6325685039ba8085cc.jpg',
        name: 'Tasha Cobbs',
        title: 'Great God'),
    Music(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT9MlWRSNIk8huRXjnQzQI9GQlHUySxcGlcAw&usqp=CAU',
        name: 'Sinach',
        title: 'WayMaker')
  ];
}

class Music {
  final String name;
  final String title;
  final String image;
  Music({
    this.name,
    this.title,
    this.image,
  });
}
