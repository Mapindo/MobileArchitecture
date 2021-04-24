import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class EventDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: context.height * .3,
          child: Image.network(
            'https://www.kisa.link/ONU3',
            fit: BoxFit.cover,
          ),
          color: Colors.red,
        ),
        buildDraggableScrollableSheet()
      ],
    ));
  }

  DraggableScrollableSheet buildDraggableScrollableSheet() {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.7,
      maxChildSize: 0.7,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            // color: Colors.g rey,
            height: context.height,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: context.colors.onSecondary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  margin: context.paddingLowVertical,
                  width: 80,
                  height: 8,
                ),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(
                          'Teknoloji',
                          style: context.textTheme.bodyText1
                              .copyWith(color: context.colors.primary),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Devfest İstanbul 2021',
                          style: context.textTheme.headline6
                              .copyWith(color: Color(0xff355070)),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              color: context.colors.primary,
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.share),
                              onPressed: () {},
                            ),
                            IconButton(
                              color: context.colors.primary,
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.bookmark),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: context.width * .050,
                          backgroundImage: NetworkImage(
                            'https://i.hizliresim.com/s0ei48.png',
                          ),
                        ),
                        title: Text(
                          'GDG Denizli',
                          style: context.textTheme.bodyText1.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: context.width * .05,
                              color: Color(0xff355070)),
                        ),
                        trailing: ElevatedButton.icon(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                context.colors.primary),
                          ),
                          onPressed: null,
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: context.width * .05,
                          ),
                          label: Text(
                            'Takip Et',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: context.width * .04),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          height: double.infinity,
                          child: Icon(
                            Icons.calendar_today,
                            color: context.colors.primary,
                            // size: context.width * .050,
                          ),
                        ),
                        title: Text(
                          'Pazar, 6 Mart 2021',
                          style: context.textTheme.bodyText1.copyWith(
                            color: Color(0xff355070),
                          ),
                        ),
                        subtitle: Text(
                          '10.00 - 17:00',
                          style: context.textTheme.bodyText1.copyWith(
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          height: double.infinity,
                          child: Icon(
                            Icons.location_on_sharp,
                            // size: context.width * .050,
                            color: context.colors.primary,
                          ),
                        ),
                        title: Text(
                          'Nihat Zeybekçi Kongre ve Kültür Merkezi',
                          style: context.textTheme.bodyText1.copyWith(
                            color: Color(0xff355070),
                          ),
                        ),
                        subtitle: Text(
                          'İncilipınar, 20150 Pamukkale/Denizli',
                          style: context.textTheme.bodyText1.copyWith(
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Etkinlik hakkında :',
                          style: context.textTheme.bodyText1.copyWith(
                            color: Color(0xff355070),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                              'GDG DevFest Istanbul brings together the world class expertsin Android, Web and Cloud technologies to Istanbul for 2 days of sessions, workshops and showcases.'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                context.colors.primary),
                          ),
                          onPressed: null,
                          child: Text(
                            'Etkinliğe Kayıt Ol ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: context.width * .04),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
