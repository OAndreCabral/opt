import 'package:flutter/material.dart';

class ComponentForm extends StatefulWidget {
  const ComponentForm({Key? key}) : super(key: key);

  @override
  State<ComponentForm> createState() => _ComponentFormState();
}

class _ComponentFormState extends State<ComponentForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(child: Text("Nome Completo",style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),),
            SizedBox(width: 250,height: 25,child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  filled: true,
                  fillColor: Colors.transparent
              ),
            )),

            const SizedBox(child: Text("E-mail",style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),),
            SizedBox(width: 250,height: 25,child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  filled: true,
                  fillColor: Colors.transparent
              ),
            )),

            const SizedBox(child: Text("Confirmar e-mail",style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),),
            SizedBox(width: 250,height: 25,child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  filled: true,
                  fillColor: Colors.transparent
              ),
            )),

            const SizedBox(child: Text("Telefone",style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),),
            SizedBox(width: 250,height: 25,child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  filled: true,
                  fillColor: Colors.transparent
              ),
            )),

            const SizedBox(child: Text("Sua Senha",style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),),
            SizedBox(width: 250,height: 25,child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  filled: true,
                  fillColor: Colors.transparent
              ),
            )),

            const SizedBox(child: Text("Confirmar Senha",style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),),
            SizedBox(width: 250,height: 25,child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  filled: true,
                  fillColor: Colors.transparent
              ),
            )),
          ],
        ),
      ),
    );
  }
}
