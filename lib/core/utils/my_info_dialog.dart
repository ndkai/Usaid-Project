import 'package:flutter/material.dart';
import 'package:usaid_project/core/constant/my_colors.dart';

class InfoDialog extends StatefulWidget {
  final String title;
  final List<InfoObj> options;

  InfoDialog({this.title, this.options});

  @override
  _InfoDialogState createState() => _InfoDialogState();
}

class _InfoDialogState extends State<InfoDialog> {
  ScrollController _controller = new ScrollController();

  List<Container> _buildListItemsFromitems(List<InfoObj> list) {
    return list.map((item) {
      var container = Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 50),
                blurRadius: 20,
                color: kActiveShadowColor,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              content(item.title, item.value),
              SizedBox(
                width: 10,
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
            ],
          ));
      return container;
    }).toList();
  }

  _dialogContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          height: 5,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: SingleChildScrollView(
              child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: _buildListItemsFromitems(widget.options),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            controller: _controller,
          )),
        ),
      ],
    );
  }

  Widget content(String title, String val) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          val,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: _dialogContent(context),
      elevation: 3,
    );
  }
}

showMyInfoDialog(
  BuildContext context,
  String title,
  List<InfoObj> options, {
  autoClose = true,
}) {
  return showDialog(
    barrierDismissible: autoClose,
    context: context,
    builder: (c) => WillPopScope(
      onWillPop: () async => autoClose,
      child: InfoDialog(
        title: title,
        options: options,
      ),
    ),
  );
}

class InfoObj {
  final String title;
  final String value;

  InfoObj({this.title, this.value});
}
