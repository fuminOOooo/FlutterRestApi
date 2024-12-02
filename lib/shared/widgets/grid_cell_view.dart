import 'package:flutter/material.dart';
import 'package:flutter_rest_api/model/model.dart';
import 'package:flutter_rest_api/shared/constant.dart';

// ignore: must_be_immutable
class GridCellView extends StatelessWidget {

  ResultModel oneItem;
  int entryNumber;
  
  GridCellView({super.key, required this.entryNumber, required this.oneItem});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imageWholeUrl(entryNumber)),
        Text('$entryNumber. ${oneItem.name}'),
      ],
    ));
  }
}
