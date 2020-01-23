import 'package:flutter/material.dart';

abstract class ObjetoPesquisa {
  String label;
  String imgSrc;
  int id;
}

class Familia implements ObjetoPesquisa {
  String label;
  String imgSrc;
  int id;

  Familia({this.label, this.imgSrc, this.id});
}

class Genero implements ObjetoPesquisa {
  String label;
  String imgSrc;
  int id;
  int idFamilia;

  Genero({this.label, this.imgSrc, this.id, this.idFamilia});
}

class Especie implements ObjetoPesquisa {
  String label;
  String imgSrc;
  int id;
  int idGenero;

  Especie({this.label, this.imgSrc, this.id, this.idGenero});
}

class Pesquisa extends StatefulWidget {
  @override
  PesquisaState createState() => PesquisaState();
}

class PesquisaState extends State<Pesquisa> with SingleTickerProviderStateMixin {
  final _tabs = <Tab>[
    Tab(text: "Família"),
    Tab(text: "Gênero"),
    Tab(text: "Espécie"),
  ];
  TabController _tabController;
  int _idFamiliaSelecionada;
  int _idGeneroSelecionado;

  void selectFamilia(int idFamilia) {
    _tabController.animateTo(1);
    setState(() => _idFamiliaSelecionada = idFamilia);
  }

  void selectGenero(int idGenero) {
    _tabController.animateTo(2);
    setState(() => _idGeneroSelecionado = idGenero);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TabBar(
            controller: _tabController,
            tabs: _tabs,
            labelColor: Colors.green,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _tabs.map((Tab tab) {
                if (tab.text == "Família") {
                  return FamiliaView(selectFamilia);
                }
                else if (tab.text == "Gênero") {
                  return GeneroView(selectGenero, _idFamiliaSelecionada);
                }
                return EspecieView(_idGeneroSelecionado);
              }).toList(),
            )
          )
        ],
      ),
    );
  }
}

class FamiliaView extends StatelessWidget {
  final Function _selectFamilia;
  final _familias = [
    Familia(id: 1, label: "Família 1", imgSrc: ""),
    Familia(id: 2, label: "Família 2", imgSrc: "")
  ];

  FamiliaView(this._selectFamilia, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children:_familias.map((Familia familia) {
        return InkWell(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Text(familia.label),
            color: Colors.teal[100 * familia.id],
          ),
          onTap: () => _selectFamilia(familia.id)
        );
      }).toList(),
    );
  }
}

class GeneroView extends StatelessWidget {
  final Function _selectGenero;
  final int _idFamilia;
  final _generos = [
    Genero(id: 1, label: "Gênero 1", imgSrc: "", idFamilia: 1),
    Genero(id: 2, label: "Gênero 2", imgSrc: "", idFamilia: 2)
  ];

  GeneroView(this._selectGenero, this._idFamilia, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children:_generos
        .where((Genero genero) => genero.idFamilia == _idFamilia)
        .map((Genero genero) {
          return InkWell(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(genero.label),
              color: Colors.red[100 * genero.id],
            ),
            onTap: () => _selectGenero(genero.id)
          );
        }).toList(),
    );
  }
}

class EspecieView extends StatelessWidget {
  final int _idGenero;
  final _especies = [
    Especie(id: 1, label: "Espécie 1", imgSrc: "", idGenero: 1),
    Especie(id: 2, label: "Espécie 2", imgSrc: "", idGenero: 2)
  ];

  EspecieView(this._idGenero, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children:_especies
        .where((Especie especie) => especie.idGenero == _idGenero)
        .map((Especie genero) {
          return InkWell(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(genero.label),
              color: Colors.blue[100 * genero.id],
            ),
            
          );
        }).toList(),
    );
  }
}