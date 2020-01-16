import 'package:flutter/material.dart';
import 'package:gf_web/screens/layout/layout.dart';
import '../../styles/styles.dart';
import 'package:getflutter/colors/gf_color.dart';

import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:flutter/cupertino.dart';

class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        demoImageUrl: 'lib/assets/images.gif',
        body: ListView(
          children: <Widget>[
            Text(
              'Images',
              style: hintStyleTextblackbolder(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The purpose of an image is to increase readers' understanding of the article's subject matter, usually by directly depicting people, things, activities, and concepts described in the article",
              style: hintStyleTextblackdull(),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Basic Images',
              style: hintStyleTextblackbold(),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFImageOverlay(
                    height: 200,
                    width: 300,
                    image: AssetImage('lib/assets/images/image2.png'),
                  )
                ],
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFImageOverlay(
                    height: 200,
                    width: 300,
                    image: AssetImage('lib/assets/images/image.png'),
                  )
                ],
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFImageOverlay(
                    height: 200,
                    width: 300,
                    image: AssetImage('lib/assets/images/image1.png'),
                  )
                ],
              ),
            ),
            Text(
              'Circular Images',
              style: hintStyleTextblackbold(),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GFImageOverlay(
                    height: 140,
                    width: 140,
                    shape: BoxShape.circle,
                    image: AssetImage('lib/assets/images/img.png'),
                  ),
                  GFImageOverlay(
                      height: 140,
                      width: 140,
                      shape: BoxShape.circle,
                      image: AssetImage(
                        'lib/assets/images/img1.png',
                      ))
                ],
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFImageOverlay(
                    height: 200,
                    width: 200,
                    shape: BoxShape.circle,
                    image: AssetImage('lib/assets/images/img2.png'),
                  ),
                ],
              ),
            ),
            Text(
              'Overlay Images',
              style: hintStyleTextblackbold(),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFImageOverlay(
                    height: 200,
                    width: 300,
                    child: Padding(
                        padding: EdgeInsets.only(top: 90, left: 100),
                        child: Text(
                          'Light Overlay',
                          style: TextStyle(color: getGFColor(GFColor.white)),
                        )),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.20), BlendMode.darken),
                    image: AssetImage('lib/assets/images/image1.png'),
                  ),
                ],
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFImageOverlay(
                    height: 200,
                    width: 300,
                    child: Padding(
                        padding: EdgeInsets.only(top: 90, left: 100),
                        child: Text(
                          'Medium Overlay',
                          style: TextStyle(color: getGFColor(GFColor.white)),
                        )),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.40), BlendMode.darken),
                    image: AssetImage('lib/assets/images/image1.png'),
                  ),
                ],
              ),
            ),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFImageOverlay(
                      height: 200,
                      width: 300,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.60), BlendMode.darken),
                      image: AssetImage('lib/assets/images/image1.png'),
                      child: Center(
                        child: Text(
                          'Strong Overlay',
                          style: TextStyle(color: getGFColor(GFColor.white)),
                        ),
                      )
                      // ),
                      // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                      // image: AssetImage('lib/assets/images/image1.png'),
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
