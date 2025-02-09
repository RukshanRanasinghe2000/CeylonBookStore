import 'package:ceylon_book_store/BookSingle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catppuccin_flutter/catppuccin_flutter.dart';

Flavor flavor = catppuccin.latte;

class Book extends StatelessWidget {
  final Image image;
  final String title;
  final String author;
  final String price;

  // Constructor
  const Book({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookSingle(
                            image: image,
                            title: title,
                            author: author,
                            price: price)));
              },
              child: Card(
                /**
             * Define Card bg color
             * */
                color: flavor.crust
                ,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                /**
             * This Padding element handles the the Card alignments
             * */
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 14.0,
                    right: 14.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /**
                   * Image section
                   * */
                      SizedBox(
                        width: 120,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3), // Set the desired border radius
                            border: Border.all(
                              color: Colors.white, // Border color
                              width: 5.0, // Border width
                              style: BorderStyle.solid, // Border style (solid, dotted, dashed)
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8), // Make sure the ClipRRect matches the container's radius
                            child: image, // The image will have rounded corners
                          ),
                        ),
                      ),
                      /**
                   * Creates a Gap between Image and details section
                   * */
                      const SizedBox(width: 16),

                      /**
                   * Detail (Description) section
                   * */
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Author: $author',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Price: $price',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),

                            /**
                         * Button section
                         * */
                            Row(
                              children: [
                                /**
                             * Create gap between image and Button
                             * */
                                Spacer(),

                                /**
                             * This Padding element handles the button alignments
                             * */
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 45.0,
                                    right: 16.0,
                                    bottom: 14.0,
                                  ),

                                  /**
                               * Creates the button
                               * */
                                  child: ElevatedButton(
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
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
