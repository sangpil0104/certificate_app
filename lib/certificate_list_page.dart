import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_world_practice/certificate.dart';
import 'package:hello_world_practice/certificate_manager.dart';

class CertificateListPage extends StatelessWidget {
  CertificateListPage({super.key});

  final List<Certificate> certificates = CertificateManager.certificates;

  List<Row> getCertificateList(BuildContext context) {
    List<Row> CertificateList = [];

    for (var i = 0; i < certificates.length; i += 2) {
      var name1 = certificates[i].name;
      var name2 = certificates[i+1].name; // 버그 유의 index 초과 위험 있음
      CertificateList.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.go('/certificate_main/certificate_list/certificate_info');
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  //image: AssetImage(), -> 후에 배경은 사진으로
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    name1,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.go('/certificate_main/certificate_list/certificate_info');
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    name2,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),

          ],
        ),
      );
    }
    return CertificateList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: '자격증 검색...',
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: getCertificateList(context),
        ),
      ),
    );
  }
}
