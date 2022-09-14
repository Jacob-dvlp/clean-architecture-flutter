import 'imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Posts"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: [
            const CustomHomePageBody(),
            Positioned(
              top: 210,
              left: 340,
              child: Container(
                width: 55,
                height: 200,
                color: Colors.amber.withOpacity(0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_add)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.photo),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_add)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
