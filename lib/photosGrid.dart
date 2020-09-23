import 'package:flutter/material.dart';

class PhotosGrid extends StatelessWidget {
  const PhotosGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            'Photos',
            style: TextStyle(fontSize: 21),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Griddy(
                      "https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg"),
                  Griddy(
                      "https://instagram.fblr5-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/119713091_718852325361583_7468990310818490052_n.jpg?_nc_ht=instagram.fblr5-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=1suGItK_kW0AX9ftwaz&oh=b4925cb3d6fc5c4727dcea575e44c8a9&oe=5F91BABD"),
                ],
              ),
              Column(
                children: [
                  Griddy(
                      "https://upload.wikimedia.org/wikipedia/commons/3/31/Night_Photography.jpg"),
                  Griddy(
                      "https://instagram.fblr5-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/93262348_108903077284346_514088613443873049_n.jpg?_nc_ht=instagram.fblr5-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=0qsvS3cswAgAX-LSx_b&oh=87bc278d051b788ae3d52a82498910d9&oe=5F945DFA"),
                ],
              ),
              Column(
                children: [
                  Griddy(
                      "https://www.lifewire.com/thmb/kc1wqukCIVUR1AHVSdG5EYSA1D8=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/city_AlexanderSpatari_Getty-5a13972b47c26600378f0216.jpg"),
                  Griddy(
                      "https://instagram.fblr5-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/43472284_1894446183957418_8566818934572697602_n.jpg?_nc_ht=instagram.fblr5-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=tTs8a5aeRcgAX-4N4rW&oh=ac554836cd345e28b028deee070efd02&oe=5F91B7FA"),
                ],
              ),
              Column(
                children: [
                  Griddy(
                      "https://instagram.fblr5-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/106589173_149334700059884_2410205726787197530_n.jpg?_nc_ht=instagram.fblr5-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=Ibf6Mbjh0LMAX_RKWML&oh=5b647ab74f709534c437bc29877a0e51&oe=5F91C757"),
                  Griddy(
                      "https://www.nationalgeographic.com/content/dam/animals/2019/10/wildlife-photographer-of-the-year/og-lead-image-yongqing-bao---wildlife-photographer-of-the-year.ngsversion.1571178608172.adapt.1900.1.jpg"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Griddy extends StatefulWidget {
  Griddy(this.image);
  String image;

  @override
  _GriddyState createState() => _GriddyState();
}

class _GriddyState extends State<Griddy> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(widget.image),
            ),
          ),
          height: 65,
          width: 65,
          child: null),
    );
  }
}
