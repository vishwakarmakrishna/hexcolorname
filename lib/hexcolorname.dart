// ignore_for_file: prefer_if_null_operators

library hexcolorname;

import 'package:flutter/material.dart';

import 'extras.dart';
import 'model/colorName.dart';

class HexColorText extends StatefulWidget {
  const HexColorText(
      {Key? key,
      required this.hexColor,
      this.builder,
      this.errorbuilder,
      this.mode = ColorMode.complementarycolor,
      this.loading})
      : super(key: key);
  final String hexColor;
  final Widget Function(BuildContext, String)? builder;
  final Widget Function(BuildContext, String)? errorbuilder;
  final Widget? loading;
  final ColorMode mode;

  @override
  State<HexColorText> createState() => _HexColorTextState();
}

class _HexColorTextState extends State<HexColorText> {
  late Future<List<ColorNameModel>?> _hexIntoName;
  @override
  void initState() {
    super.initState();
    _hexIntoName = hexIntoColorModel(widget.hexColor);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _hexIntoName,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            if (widget.errorbuilder != null) {
              return widget.errorbuilder!(context, snapshot.error.toString());
            } else {
              return Center(
                child: Text(
                  '${snapshot.error} occurred',
                  style: const TextStyle(fontSize: 18),
                ),
              );
            }
          } else if (snapshot.hasData) {
            final data = snapshot.data;

            if (data is List<ColorNameModel> && data.isNotEmpty) {
              return Center(
                child: Builder(builder: (context) {
                  if (widget.builder != null) {
                    return widget.builder!(context, data.first.name);
                  } else {
                    return Text(
                      data.first.name,
                      style: TextStyle(
                          color: getColorMode(data.first, mode: widget.mode)),
                    );
                  }
                }),
              );
            } else {
              return const Center(
                child: Text(
                  'No data found',
                  style: TextStyle(fontSize: 18),
                ),
              );
            }
          }
        }
        if (widget.loading != null) {
          return widget.loading!;
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
