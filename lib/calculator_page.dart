import 'package:flutter/material.dart';
import 'package:my_awesome_app/input_field.dart';

class CalculatorPage extends StatefulWidget{
  const CalculatorPage({super.key});
  @override
  State<StatefulWidget> createState() =>
    _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage>{
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double result = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator", selectionColor: Colors.white,),
        backgroundColor: const Color.fromARGB(255, 169, 139, 240),
      ),
      body: Center(
        child: SizedBox(
          height: 400, width: 300,
          child: Card(
            color: const Color.fromARGB(255, 169, 139, 240),
            child: Form(
              key: _formKey,
              child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                InputField(controller: controller1,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  labelText: "Number 1", hintText:"Enter a number",
                  prefixIcon: Icon(Icons.numbers),
                  validator: (value){
                    if(value.isEmpty){
                      return "Field is Empty";
                    }
                    return null;
                  }
                ),
                SizedBox(height: 15,),
                InputField(controller: controller2,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  labelText: "Number 2", hintText:"Enter a number",
                  prefixIcon: Icon(Icons.numbers),
                  validator: (value){
                    if(value.isEmpty){
                      return "Field is Empty";
                    }
                    return null;
                  }
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      String num1 = controller1.text;
                      String num2 = controller2.text;

                      result = double.parse(num1) + double.parse(num2);
                      setState(() {
                        
                      });
                    }
                  },
                  child: Text("Calculate")),
                  SizedBox(height: 20,
                    child: Text("Answer : $result")
                  )
              ],),
            ),),
            ),
        ),
      ),
    );
  }

}