import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Geek\'s Kitchen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stepper(
          physics: ClampingScrollPhysics(),
          currentStep: _currentStep,
          onStepTapped: (index) {
            setState(() {
              _currentStep = index;
            });
          },
          onStepContinue: () {
            if (_currentStep >= 20) return;
            setState(() {
              _currentStep += 1;
            });
          },
          onStepCancel: () {
            if (_currentStep <= 0) return;
            setState(() {
              _currentStep -= 1;
            });
          },
          steps: [
            Step(
                title: Text("Egusi Ingredient"),
                content: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'a. 2 lb(s) boneless goat meat, cut in bite-size pieces dried fish, to taste. \n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'b. Coarse salt\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'c. 2 medium onions, roughly chopped\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'd. 4 maggi cubes, or other chicken bouillion cubes\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'e. 3 cups of water\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'f. dried crayfish to taste\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'g. 2 cup melon seed\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'h. ½ cup palm oil\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'i. 1 cup vegetable oil\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'j. 4 fresh Jamaican chile peppers\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'k. dried shrimp, to taste\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'l. 1 pkg frozen spinach, thawed (340 g)\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ) // Text(
                // " 2 lb(s) boneless goat meat, cut in bite-size pieces dried fish, to taste. Coarse salt, 2 medium onions, roughly chopped, 4 maggi cubes, or other chicken bouillion cubes, 3 cup water, 4 fresh Jamaican chile peppers, dried shrimp, to taste, dried crayfish, to taste, 2 cup melon seed, 1 pkg frozen spinach, thawed (340 g), ½ cup palm oil, 1 cup vegetable oil"),
                ),
            Step(
              title: Text("First"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text("Put the goat meat in a medium pot."),
              ),
            ),
            Step(
              title: Text("Second"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text("Rinse the dried fish and add it to the pot"),
              ),
            ),
            Step(
              title: Text("Third"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text("Add 1 onion, salt to taste and 2 maggi cubes."),
              ),
            ),
            Step(
              title: Text("Fourth"),
              content: Text(
                "Add 3 cups of water and allow to boil on high heat. Reduce and simmer for 30mins",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Step(
              title: Text("Fifth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Meanwhile, put the chile peppers and the remaining onion in a blender and puree."),
              ),
            ),
            Step(
              title: Text("Sixth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Scrape the onion pepper mixture into a bowl and set aside."),
              ),
            ),
            Step(
              title: Text("Seventh"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Put the shrimp, crayfish and melon seed in a clean blender and blend until a powder forms."),
              ),
            ),
            Step(
              title: Text("Eighth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text("Put it in a bowl and set aside."),
              ),
            ),
            Step(
              title: Text("Ninth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Squeeze the excess liquid from the spinach and set aside."),
              ),
            ),
            Step(
              title: Text("Tenth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text("After 30 minutes, check the meat."),
              ),
            ),
            Step(
              title: Text("Eleventh"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "If it is still tough, add more water to the pot so that cooking liquid covers the meat."),
              ),
            ),
            Step(
              title: Text("Twelfth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Continue to cook until the goat is fork tender, add the onion pepper mixture and cook 15 minutes."),
              ),
            ),
            Step(
              title: Text("Thirteenth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Reduce heat to medium and add the melon seed mixture."),
              ),
            ),
            Step(
              title: Text("Fourteenth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Cook 30 minutes longer and add the spinach, the oils and the 2 remaining maggi cubes."),
              ),
            ),
            Step(
              title: Text("Fifteenth"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text("Cover it and cook for another 15 minutes."),
              ),
            ),
            Step(
              title: Text("Pounded Yam Ingredients"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '2 cups purple yam flour\n\n',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: '2 cups of water',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Step(
              title: Text("First"),
              content: Align(
                alignment: Alignment.centerLeft,
                child: Text("Bring 1 3/4 cups water to a boil on high heat."),
              ),
            ),
            Step(
              title: Text("Second"),
              content: Text(
                  "Turn the heat to medium and stir in the pounded yam flour."),
            ),
            Step(
              title: Text("Third"),
              content: Text(
                  "Keep stirring until it is smooth and soft. If it is really thick, add some hot water. It will have a similar texture to polenta."),
            ),
            Step(
              title: Text("Fourth"),
              content: Text(
                "Serve the pounded yam on plates and serve with bowls of egusi soup.",
              ),
            ),
            Step(
              title: Text("Fifth"),
              content: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Dip the pounded yam into the egusi soup.")),
            ),
          ],
        ),
      ),
    );
  }
}
