import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'الحمدلله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'مسبحة الأذكار',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              '/about_screen',
              arguments: {
                'message': 'وسيم الجندي'
              },
            ),
            icon: const Icon(Icons.info_outline),
            tooltip: 'حول',
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (_content != value) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'الحمدلله',
                  child: Text('الحمدلله'),
                ),
                const PopupMenuItem(
                  value: 'أستغفر الله',
                  child: Text('أستغفر الله'),
                ),
                const PopupMenuItem(
                  value: 'سبحان الله',
                  child: Text('سبحان الله'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/app_bg.jpg',
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/masbaha.jpg'),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 0),
                      blurRadius: 6,
                    )
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'ReemKufi',
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.teal.shade300,
                    ),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(10),
                      )),
                    ),
                    onPressed: () => setState(() {
                      _counter++;
                    }),
                    child: const Text(
                      'تسبيح',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade700,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                              bottomEnd: Radius.circular(10)),
                        ),
                      ),
                      onPressed: () => setState(() {
                            _counter = 0;
                          }),
                      child: const Text(
                        'اعادة',
                        style: TextStyle(fontSize: 17),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
