import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';

class CustomDropdown extends StatefulWidget {

  final String text;

  const CustomDropdown({Key key, @required this.text}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {

  GlobalKey actionKey;
  double heigh, width, xPosition, yPosition;
  bool isDropdownOpened = false;
  OverlayEntry floatingDropdown;


  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    isDropdownOpened = false;
    super.initState();
  }

  void findDropdownData(){
    RenderBox renderBox = actionKey.currentContext.findRenderObject();
    heigh = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(heigh);
    print(width);
    print(xPosition);
    print(yPosition);
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition,
        top: yPosition + heigh,
        width: width,
        height: 4 * heigh + 40,
        child: DropDown(
          itemHeight: heigh,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: (){
        setState(() {
          if(isDropdownOpened){
            floatingDropdown.remove();
          } else {
            findDropdownData();
            floatingDropdown = _createFloatingDropdown();
            Overlay.of(context).insert(floatingDropdown);
          }

          isDropdownOpened = !isDropdownOpened;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: lightAccent
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Text(widget.text,style: TextStyle(color: lightPrimary,fontSize: 22.0, fontWeight: FontWeight.w600)),
            Spacer(),
            Icon(Icons.arrow_drop_down,color: lightPrimary)
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatelessWidget {

  final double itemHeight;

  const DropDown({Key key, this.itemHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 5),
        Align(
          alignment: Alignment(-0.85,0),
          child: ClipPath(
            clipper: ArrowClipper(),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                color: intermedioColor
              ),
            ),
          ),
        ),
        Material(
          elevation: 20,
          shape: ArrowShape(),
          child: Container(
            height: 4 * itemHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              children: <Widget>[
                DropDownItem.first(
                  text: "Add new",
                  iconData: Icons.add_circle_outline,
                ),
                DropDownItem(
                  text: "View profile",
                  iconData: Icons.person,
                ),
                DropDownItem(
                  text: "Settings",
                  iconData: Icons.settings,
                ),
                DropDownItem.last(
                  text: "Logout",
                  iconData: Icons.exit_to_app,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DropDownItem extends StatelessWidget {

  final String text;
  final IconData iconData;
  final bool isSelected;
  final bool isFirstTime;
  final bool isLastItem;

  const DropDownItem({
    Key key,
    this.text,
    this.iconData,
    this.isSelected,
    this.isFirstTime = false,
    this.isLastItem = false
  }) : super(key: key);

  factory DropDownItem.first({String text, IconData iconData, bool isSelected}){
    return DropDownItem(
      text: text,
      iconData: iconData,
      isSelected: isSelected,
      isFirstTime: true,
    );
  }

  factory DropDownItem.last({String text, IconData iconData, bool isSelected}){
    return DropDownItem(
      text: text,
      iconData: iconData,
      isSelected: isSelected,
      isLastItem: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: isFirstTime ? Radius.circular(8) : Radius.zero,
            bottom: isLastItem ? Radius.circular(8) : Radius.zero
          ),
          color: intermedioColor
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: <Widget>[
          Text(
              text,
              style: TextStyle(color: lightPrimary,fontSize: 22.0, fontWeight: FontWeight.w600)
          ),
          Spacer(),
          Icon(iconData,color: lightPrimary)
        ],
      ),
    );
  }
}


class ArrowClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    
    path.moveTo(0, size.height);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ArrowShape extends ShapeBorder{
  @override
  // TODO: implement dimensions
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    // TODO: implement getOuterPath
    return getClip(rect.size);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    // TODO: implement paint
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }

  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }
}
