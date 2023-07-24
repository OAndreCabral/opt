import 'package:flutter/material.dart';
import 'package:opt/components/backgroundcolor/background_color.dart';
import '../Service/students_api.dart';
import '../components/header_texts/text_students_list.dart';

class StudentsListScreen extends StatefulWidget {
  const StudentsListScreen({Key? key}) : super(key: key);

  @override
  State<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends State<StudentsListScreen> {
  List<MovieModel> main_movies_list = [
    MovieModel(
      "Ana Monteiro", /*1990, "Sem url 0",9.0*/
    ),
    MovieModel(
      "João Silva", /*1991, "Sem url 1", 9.1*/
    ),
    MovieModel(
      "Marcelo Silva", /*1992, "Sem url 2", 9.2*/
    ),
    MovieModel(
      "Fernanda Fernandes", /*1993, "Sem url 3", 9.9*/
    ),
    MovieModel(
      "Luiz Carlos Gonçalves", /*1994, "Sem url 4", 9.4*/
    ),
    MovieModel(
      "Natalia Ferreira", /*1994, "Sem url 4", 9.4*/
    ),
    MovieModel(
      "Carlos Augusto Souza", /*1994, "Sem url 4", 9.4*/
    ),
    MovieModel(
      "Amanda Correia", /*1994, "Sem url 4", 9.4*/
    ),
    MovieModel(
      "Matheus Fernandes", /*1994, "Sem url 4", 9.4*/
    ),
    MovieModel(
      "Wesley Silva", /*1994, "Sem url 4", 9.4*/
    ),
    MovieModel(
      "José Dias", /*1994, "Sem url 4", 9.4*/
    ),
    MovieModel(
      "Josué Souza", /*1994, "Sem url 4", 9.4*/
    ),
  ];

  List<MovieModel> display_list = [];

  @override
  void initState() {
    display_list = List<MovieModel>.from(main_movies_list);
    super.initState();
  }

  void updateList(String value) {
    // FILTRAR A LISTA DE API DE ALUNOS DO INTEGRADO
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.student_name_integrado
                  ?.toLowerCase()
                  .contains(value.toLowerCase()) ??
              false)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundColor(
              colorcontainerup: Color.fromRGBO(255, 255, 255, 1),
              colorcontainerdown: Color.fromRGBO(23, 49, 84, 1),
              width: 320,
            height: 180,),
          Column(
            children: [
              const TextStudentsList(),
              const SizedBox(
                height: 1,
              ),
              TextField(
                onChanged: (value) => updateList(value),
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  hintText: "Pesquisar",
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), // Define o raio do arredondamento da borda
                    borderSide: const BorderSide(color: Colors.white, width: 1), // Cor e espessura da borda
                  ),
                  focusedBorder: OutlineInputBorder( // Borda quando o TextField está em foco
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.blue, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder( // Borda quando o TextField está habilitado, mas não em foco
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  errorBorder: OutlineInputBorder( // Borda quando ocorre um erro de validação
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 150), // Ajuste o valor de vertical e horizontal conforme desejado
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Expanded(
                child: display_list.length == 0
                    ? const Center(
                        child: Text(
                          "Encontrado",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.all(8.0),
                          title: Text(
                            display_list[index].student_name_integrado!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          /*subtitle: Text('${display_list[index].movie_release_year!}',
                    style: const TextStyle(
                        color: Colors.blue
                    ),
                  ),*/
                          /*trailing: Text(
                    "${display_list[index].rating}",
                    style: const TextStyle(
                        color: Colors.purple),
                  ),*/
                        ),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
