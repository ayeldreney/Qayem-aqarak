import 'package:flutter/material.dart';
import 'package:project/shared/styles/app_theme.dart';

Widget defaultTextFormField({
  @required String? text,
  bool isPassword = false,
  @required IconData? iconData,
  @required String? title,
  IconData? postIcon,
  @required TextEditingController? controller,
}) =>
    Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toString(),
            style: TextStyle(
              color: AppTheme.primaryColor,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "$text please";
              }
              return null;
            },
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: Icon(postIcon),
              hintText: text,
              prefixIcon: Icon(iconData),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.grey),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ],
      ),
    );

Widget defaultButton({
  Color textFontColor = Colors.white,
  double fontSize = 18,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  @required VoidCallback? function,
  @required String? text,
}) =>
    Builder(
      builder: (context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: background,
        ),
        width: MediaQuery.of(context).size.width / 1.2,
        child: MaterialButton(
          onPressed: function,
          child: Text(
            text.toString(),
            style: TextStyle(color: textFontColor, fontSize: fontSize),
          ),
        ),
      ),
    );

Widget defaultPreLoginContaienr({
  @required String? imagePath,
  @required String? title,
  @required String? description,
}) =>
    Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF7FAFB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image(
            width: 100,
            height: 100,
            fit: BoxFit.contain,
            image: AssetImage(imagePath.toString()),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toString(),
                style: TextStyle(fontSize: 18, color: AppTheme.primaryColor),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  description.toString(),
                  style: TextStyle(fontSize: 14, color: AppTheme.primaryColor),
                ),
              ),
            ],
          ),
          Spacer(),
          Radio(
              value: "radio value",
              groupValue: "group value",
              onChanged: (value) {
                print(value); //selected value
              }),
        ],
      ),
    );

Widget defaultHomePageCustomContainer(
        {@required String? number,
        @required String? title,
        @required Color? color}) =>
    Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
          //color: Colors.red,
          border: Border.all(color: color!, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: color),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title.toString(),
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: color),
              ),
            ),
          )
        ],
      ),
    );

Widget homePageListItem() => Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFFF8F8F8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/home.jpeg"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Evaluation purpose",
                        style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: AppTheme.primaryColor,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Expanded(
                            child: Text(
                              "47 3omaret ay haga next to fathalah, alexandria,smoha.",
                              style: TextStyle(
                                color: Color.fromARGB(148, 13, 72, 161),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(2.5),
            width: 70,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber.withOpacity(0.5)),
            child: Center(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Pending",
                  style: TextStyle(color: Colors.blue[900]),
                ),
              ),
            ),
          ),
        )
      ],
    );
