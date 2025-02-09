import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookSingle extends StatelessWidget {
  final Image image;
  final String title;
  final String author;
  final String price;

  // Constructor
  const BookSingle({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Section
              Center(
                child:
                Padding(padding:const EdgeInsets.only(
                      top: 40.0,
                      bottom: 40.0,
                  ),
                    child:
                  SizedBox(
                    width: 400,
                    height: 400,
                    child: image,
                  )
                )

              ),
              const SizedBox(height: 10),

              // Book Details Section
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Author: $author',
                style: const TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Price: $price',
                style: const TextStyle(
                  fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 7.0,
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          )),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 7.0,
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          )),
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
