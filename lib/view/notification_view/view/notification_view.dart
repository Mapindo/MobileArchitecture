import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.keyboard_arrow_left_rounded),
          title: Text('Bildirimler', style: context.textTheme.headline6)),
      body: ListView(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Yakında',
                  style: context.textTheme.subtitle1,
                ),
              )),
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
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
                  // fontWeight: FontWeight.bold,
                  fontSize: context.width * .04,
                  color: Color(0xff355070)),
            ),
            subtitle: Text(
              'DevFest 2021 isimli bir etkinlik oluşturdu',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Bu hafta gidebileceğin etkinlikleri senin için derledik 😇 ',
              style: context.textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_notifications,
              color: context.colors.primary,
              size: 40,
            ),
            title: Text(
              'Gittiğin etkinliklerden senin için küçük bir anı hazırladık 😊',
              style: context.textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
