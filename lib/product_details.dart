import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  static const List<Color> colors = [
    Colors.black54,
    Colors.brown,
    Colors.blueGrey,
    Colors.amber,
  ];

  static const List<double> sizes = [9.5, 10.5, 11.0, 12.0];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          title: Text(
            'Details',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.black54,
                ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black54,
                )),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 360,
              width: double.infinity,
              child: WebView(
                debuggingEnabled: false,
                backgroundColor: Colors.transparent,
                initialUrl: 'https://elegant-tanuki-0787ed.netlify.app/',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            Text(
              'Matrix Watch(mens\'s watch)',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.black87,
                  ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_border_rounded,
                  color: Colors.black54,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '4.9/5.0(150 Reviews)',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black54,
                      ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Colors',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.black54,
                                ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          colors.length,
                          (index) => Container(
                            height: 25,
                            width: 25,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colors[index],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Sizes',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.black54,
                                ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          colors.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Text(
                              sizes[index].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.black54,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
        bottomNavigationBar:  Row(
          children:  [
            Expanded(
              child: Container(
                height: 70,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style:
                        Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black54,
                        ),
                      ),

                      Text(
                        'Rs. 1200\$',
                        style:
                        Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                    ],

                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Buy now',
                      style:
                      Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
