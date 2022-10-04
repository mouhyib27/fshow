import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final kLoadingSpinner = Platform.isIOS? const CupertinoActivityIndicator() : const CircularProgressIndicator();