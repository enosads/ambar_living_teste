import 'package:ambar_living_teste/models/repositorio_model.dart';
import 'package:ambar_living_teste/pages/home_page/home_page_controller.dart';
import 'package:ambar_living_teste/pages/repositorio_page/repositorio_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: AutoSizeText('Repositórios'),
          ),
          body: _body(_),
        );
      },
    );
  }

  _body(HomePageController _) {
    return Container(
        child: _.repositorios == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : _.repositorios.isEmpty
                ? GestureDetector(
                    onTap: () => _.fetchRepositorios(),
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText('Nenhuma repositório encontrado.'),
                          AutoSizeText(
                            'toque para atualizar',
                          ),
                        ],
                      ),
                    ),
                  )
                : getRepositoriosListView(_));
  }

  getRepositoriosListView(HomePageController _) {
    return RefreshIndicator(
      onRefresh: () => _.fetchRepositorios(),
      child: ListView.builder(
        itemBuilder: (context, index) {
          Repositorio repositorio = _.repositorios[index];

          return ExpansionTile(
            title: Container(
              child: InkWell(
                // onTap: () => _.launchURL(repositorio.htmlUrl),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: repositorio.owner.avatarUrl != null
                                ? DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        repositorio.owner.avatarUrl),
                                  )
                                : null,
                          ),
                          child: repositorio.owner.avatarUrl == null
                              ? Icon(
                                  Icons.person,
                                  size: 48,
                                )
                              : null,
                        ),
                        Container(
                          height: 64,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 16, left: 8, bottom: 2),
                                child: AutoSizeText(
                                  repositorio.name ?? 'Sem nome',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: AutoSizeText(
                                  'criado por: ${repositorio.owner.login}' ??
                                      'Sem nome',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          padding: EdgeInsets.only(bottom: 8.0, left: 32),
                          child: AutoSizeText(
                            'Descrição',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          width: Get.width,
                          padding: EdgeInsets.only(bottom: 16.0, left: 32),
                          child: AutoSizeText(
                            repositorio.description ??
                                'Esse repositório não possui descrição.',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(LineAwesomeIcons.external_link),
                    onPressed: () => Get.to(RepositorioPage(repositorio)),
                  ),
                  SizedBox(
                    width: 4,
                  )
                ],
              )
            ],
          );
        },
        itemCount: _.repositorios.length,
      ),
    );
  }
}
