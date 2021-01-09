import 'package:ambar_living_teste/models/repositorio_model.dart';
import 'package:ambar_living_teste/utils/url_launch.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:share/share.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RepositorioPage extends StatefulWidget {
  Repositorio repositorio;

  RepositorioPage(this.repositorio);

  @override
  _RepositorioPageState createState() => _RepositorioPageState();
}

class _RepositorioPageState extends State<RepositorioPage> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          widget.repositorio.name,
          overflow: TextOverflow.clip,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(LineAwesomeIcons.share_alt),
            onPressed: () => Share.share(widget.repositorio.htmlUrl),
            tooltip: 'Compartilhar',
          ),
          IconButton(
            icon: Icon(LineAwesomeIcons.globe),
            onPressed: () => UrlLaunch.launchURL(widget.repositorio.htmlUrl),
            tooltip: 'Abrir no navegador',
          ),
        ],
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: widget.repositorio.htmlUrl,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? LinearProgressIndicator(backgroundColor: Colors.transparent,) : Stack(),
        ],
      ),
    );
  }
}
