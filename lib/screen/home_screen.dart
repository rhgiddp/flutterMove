// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                if (controller != null) {
                  controller!.loadUrl('https://www.naver.com');
                }
              },
              icon: const Icon(
                Icons.home,
              )),
        ],
      ),
      body: WebView(
        initialUrl: 'https://www.naver.com',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
