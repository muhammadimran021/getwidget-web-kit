import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gf_web/styles/styles.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> with TickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  AnimationController controller;
  Animation<Offset> offset;
  AnimationController controller1;

  @override
  void initState() {
    super.initState();
    offset = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, 0.1),
    ).animate(controller);
  }

  bool showButtonTypes = false;
  bool showButtonTypes1 = false;
  bool showButtonTypes2 = false;
  bool showButtonTypes3 = false;
  bool showButtonTypes4 = false;
  bool showButtonTypes5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          right: 10,
        ),
        padding: EdgeInsets.only(left: 60, right: 20, top: 30),
        width: 300,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.40), blurRadius: 5.0),
            ]),
        child: ListView(
          children: <Widget>[
            Text(
              'COMPONENTS',
              style: hintStyleTextblack(),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    showButtonTypes = !showButtonTypes;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('GF Buttons', style: hintStyleTextblackdull()),
                    showButtonTypes
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.keyboard_arrow_right)
                  ],
                )),
            showButtonTypes
                ? Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.40))
                    ]),
                    padding: EdgeInsets.only(
                        top: 0, bottom: 30, left: 25, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-buttons/standard-button');
                          },
                          child: Text('Standard Buttons'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-buttons/pill-button');
                          },
                          child: Text('Pills Buttons'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-buttons/square-button');
                          },
                          child: Text('Square Buttons'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-buttons/icon-button');
                          },
                          child: Text('Icon Buttons'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-buttons/social-button');
                          },
                          child: Text('Social Buttons'),
                        ),
                      ],
                    ),
                  )
                : Container(),

            SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-badges/badges');
              },
              child: Text(
                'GF Badges',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-avatar/avatar');
              },
              child: Text(
                'GF Avatar',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-images/image');
              },
              child: Text(
                'GF Images',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-cards/cards');
              },
              child: Text(
                'GF Cards',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-carousel/carousel');
              },
              child: Text(
                'GF Carousel',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-tiles/tiles');
              },
              child: Text(
                'GF Tiles',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    showButtonTypes1 = !showButtonTypes1;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('GF Tabs', style: hintStyleTextblackdull()),
                    showButtonTypes
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.keyboard_arrow_right)
                  ],
                )),
            showButtonTypes1
                ? Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.40))
                    ]),
                    padding: EdgeInsets.only(
                        top: 0, bottom: 30, left: 25, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-tabs/segmented-tabs');
                          },
                          child: Text('Segmented Tabs'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/gf-tabs/icon-tabs');
                          },
                          child: Text('Icon Tabs'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-tabs/labeled-tabs');
                          },
                          child: Text('Labeled Tabs'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-tabs/bottomicon-tabs');
                          },
                          child: Text('Bottom Icon Tabs'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-tabs/bottomlabeled-tabs');
                          },
                          child: Text('Bottom Labeled Tabs'),
                        ),
                      ],
                    ),
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-toasts/toasts');
              },
              child: Text(
                'GF Toasts',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-toggle/toggle');
              },
              child: Text(
                'GF Toggle',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-typography/heading');
              },
              child: Text(
                'GF Typography',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-accordion/accordion');
              },
              child: Text(
                'GF Accordion',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-alert/alert');
              },
              child: Text(
                'GF Alert',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-appbar/appbar');
              },
              child: Text(
                'GF Appbar',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-searchbar/searchbar');
              },
              child: Text(
                'GF SearchBar',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-loader/loader');
              },
              child: Text(
                'GF Loader',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-rating/rating');
              },
              child: Text(
                'GF Rating',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-floating/floating');
              },
              child: Text(
                'GF Floating Widget',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-progressbar/progressbar');
              },
              child: Text(
                'GF Progress Bar',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-shimmer/shimmer');
              },
              child: Text(
                'GF Shimmer',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-checkbox/checkbox');
              },
              child: Text(
                'GF CheckBox',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-checkboxlist/checkboxlist');
              },
              child: Text(
                'GF CheckBox ListTile',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-radio/radio');
              },
              child: Text(
                'GF Radio',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-radiolisttile/radiolisttile');
              },
              child: Text(
                'GF Radio ListTile',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            GestureDetector(
                onTap: () {
                  setState(() {
                    showButtonTypes2 = !showButtonTypes2;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('GF Border', style: hintStyleTextblackdull()),
                    showButtonTypes
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.keyboard_arrow_right)
                  ],
                )),
            showButtonTypes2
                ? Container(
                    height: 120,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.40))
                    ]),
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 25, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-border/solidborder');
                          },
                          child: Text('Solid Border'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-border/dashedborder');
                          },
                          child: Text('Dashed Border'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-border/dottedborder');
                          },
                          child: Text('Dotted Border'),
                        ),
                      ],
                    ),
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-animation/animation');
              },
              child: Text(
                'GF Animation',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-introscreen/introscreen');
              },
              child: Text(
                'GF IntroScreen',
                style: hintStyleTextblackdull(),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    showButtonTypes4 = !showButtonTypes4;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('GF StickyHeader', style: hintStyleTextblackdull()),
                    showButtonTypes
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.keyboard_arrow_right)
                  ],
                )),
            showButtonTypes4
                ? Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.40))
                    ]),
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 25, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,
                                '/gf-basicstickyheader/basicstickyheader');
                          },
                          child: Text('Basic'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,
                                '/gf-customstickyheader/customstickyheader');
                          },
                          child: Text('Customized'),
                        ),
                      ],
                    ),
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    showButtonTypes5 = !showButtonTypes5;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('GF Dropdown', style: hintStyleTextblackdull()),
                    showButtonTypes
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.keyboard_arrow_right)
                  ],
                )),
            showButtonTypes5
                ? Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.40))
                    ]),
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 25, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-dropdown/dropdown');
                          },
                          child: Text('Dropdown'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/gf-multiselect/multiselect');
                          },
                          child: Text('Multiselect'),
                        ),
                      ],
                    ),
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gf-bottomsheet/bottomsheet');
              },
              child: Text(
                'GF BottomSheet',
                style: hintStyleTextblackdull(),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            // Text(
            //   'COMING SOON',
            //   style: hintStyleTextblack(),
            // ),
            // SizedBox(
            //   height: 25,
            // ),
            // Text(
            //   'GF Forms',
            //   style: sidebarText(),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Chip', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),

            // Text('GF List', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Spinner', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Header', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Footer', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),

            // Text('GF Drawer', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),

            // Text('GF Model', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Action Sheet', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Floating Button', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Popover', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Recorder', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
            // Text('GF Infinite Scroll', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),

            // Text('GF Refresher', style: sidebarText()),
            // SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
