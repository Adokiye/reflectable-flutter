// Copyright (c) 2018, the Dart Team. All rights reserved. Use of this
// source code is governed by a BSD-style license that can be found in
// the LICENSE file.

// Try out some reflective invocations.
// Build with `cd ..; pub run build_runner build example`.

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
@GlobalQuantifyCapability(r'\.ThemeData$', myReflectableNew)
import 'package:reflectable/reflectable.dart';


class MyReflectableNew extends Reflectable {
  const MyReflectableNew()
      : super(
          invokingCapability,
          reflectedTypeCapability,
          typeCapability,
        );
}

const myReflectableNew = const MyReflectableNew();

