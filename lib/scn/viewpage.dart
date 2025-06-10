import 'package:craft_kart/model/product.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Viewpage extends StatelessWidget {
  const Viewpage({super.key, required this.passproduct});
  final products passproduct;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 80, 27),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(),
                  height: 400,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image(image: AssetImage(passproduct.image))),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '₹ ${passproduct.price} ',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        //  color: const Color.fromARGB(112, 211, 208, 208),
                        borderRadius: BorderRadius.circular(20)),
                    height: 200,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        passproduct.description,
                        //   style: GoogleFonts.radley(),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          width: double.infinity,
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(
                              255, 172, 167, 167), // Shadow color
                          blurRadius: 10, // Blur effect
                          spreadRadius: 5, // Spread of the shadow
                          offset: const Offset(5, 5), // Position of the shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow),
                  child: Center(child: Text('Buy Now')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(
                              194, 172, 167, 167), // Shadow color
                          blurRadius: 10, // Blur effect
                          spreadRadius: 5, // Spread of the shadow
                          offset: const Offset(5, 5), // Position of the shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow),
                  child: Center(
                    child: GestureDetector(
                   onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Viewpage(passproduct: passproduct,),
                      ),
                    );
                   }, 
                      child: Text('Add to Cart')),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
