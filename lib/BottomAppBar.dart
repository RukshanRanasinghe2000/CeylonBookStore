import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return

      BottomAppBar(
        color: Color(0xFFD9D9D9),
        child: Row(
          children: [
            IconButton(onPressed: (){},
                icon: Image.asset('assets/icons/today.png')),
            IconButton(onPressed: (){},
                icon: Image.asset('assets/icons/month.png')),
            Spacer(),
            IconButton(onPressed: (){},
                icon: Image.asset('assets/icons/search.png')),
            IconButton(onPressed: (){},
                icon: Image.asset('assets/icons/settings.png'))
          ],
        )
      );
  }

}