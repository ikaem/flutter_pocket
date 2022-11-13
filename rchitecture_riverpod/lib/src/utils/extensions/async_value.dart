import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueUI on AsyncValue {
  void showSnackBarOnError(BuildContext context) {
    // now here we actually have all members of async value already
    // this next line has to do with the provider recomputing for some reason
    // this is used for isntance to prevent showing it for previous error, if we are swithing to new state
    if (isRefreshing) return;
    if (hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            // for this to work properly - the e.toString, we actually need to be handling errors at low level to propagate user friendly error messages
            error.toString(),
          ),
        ),
      );
    }
  }
}
