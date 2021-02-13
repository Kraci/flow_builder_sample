# flow_builder_sample

Demonstrates an issue that might occur with [flow_builder](https://github.com/felangel/flow_builder) when
navigating away without completing the flow (e.g. using a Drawer).

## Description

When an application has a drawer that allows you to navigate directly to other pages,
if you navigate to a flow, and don't complete the flow, but then try to navigate to another page
in the drawer, an error is thrown:

```
E/flutter (16443): [ERROR:flutter/lib/ui/ui_dart_state.cc(177)] Unhandled Exception: Navigator.onGenerateRoute was null, but the route named "/page2" was referenced.
E/flutter (16443): To use the Navigator API with named routes (pushNamed, pushReplacementNamed, or pushNamedAndRemoveUntil), the Navigator must be provided with an onGenerateRoute handler.
E/flutter (16443): The Navigator was:
E/flutter (16443):   NavigatorState#f87a1(tickers: tracking 3 tickers)
E/flutter (16443): #0      NavigatorState._routeNamed.<anonymous closure> (package:flutter/src/widgets/navigator.dart:3358:9)
E/flutter (16443): #1      NavigatorState._routeNamed (package:flutter/src/widgets/navigator.dart:3368:6)
E/flutter (16443): #2      NavigatorState.pushNamed (package:flutter/src/widgets/navigator.dart:3425:20)
E/flutter (16443): #3      NavigatorState.popAndPushNamed (package:flutter/src/widgets/navigator.dart:3479:12)
E/flutter (16443): #4      _AppDrawerState._navigate (package:flow_builder_sample/drawer.dart:18:40)
E/flutter (16443): #5      _AppDrawerState.build.<anonymous closure> (package:flow_builder_sample/drawer.dart:32:24)
E/flutter (16443): #6      _InkResponseState._handleTap (package:flutter/src/material/ink_well.dart:993:19)
E/flutter (16443): #7      _InkResponseState.build.<anonymous closure> (package:flutter/src/material/ink_well.dart:1111:38)
E/flutter (16443): #8      GestureRecognizer.invokeCallback (package:flutter/src/gestures/recognizer.dart:183:24)
E/flutter (16443): #9      TapGestureRecognizer.handleTapUp (package:flutter/src/gestures/tap.dart:598:11)
E/flutter (16443): #10     BaseTapGestureRecognizer._checkUp (package:flutter/src/gestures/tap.dart:287:5)
E/flutter (16443): #11     BaseTapGestureRecognizer.acceptGesture (package:flutter/src/gestures/tap.dart:259:7)
E/flutter (16443): #12     GestureArenaManager.sweep (package:flutter/src/gestures/arena.dart:157:27)
E/flutter (16443): #13     GestureBinding.handleEvent (package:flutter/src/gestures/binding.dart:362:20)
E/flutter (16443): #14     GestureBinding.dispatchEvent (package:flutter/src/gestures/binding.dart:338:22)
E/flutter (16443): #15     RendererBinding.dispatchEvent (package:flutter/src/rendering/binding.dart:267:11)
E/flutter (16443): #16     GestureBinding._handlePointerEvent (package:flutter/src/gestures/binding.dart:295:7)
E/flutter (16443): #17     GestureBinding._flushPointerEventQueue (package:flutter/src/gestures/binding.dart:240:7)
E/flutter (16443): #18     GestureBinding._handlePointerDataPacket (package:flutter/src/gestures/binding.dart:213:7)
E/flutter (16443): #19     _rootRunUnary (dart:async/zone.dart:1206:13)
E/flutter (16443): #20     _CustomZone.runUnary (dart:async/zone.dart:1100:19)
E/flutter (16443): #21     _CustomZone.runUnaryGuarded (dart:async/zone.dart:1005:7)
E/flutter (16443): #22     _invoke1 (dart:ui/hooks.dart:265:10)
E/flutter (16443): #23     _dispatchPointerDataPacket (dart:ui/hooks.dart:174:5)
E/flutter (16443): 

```

To replicate this issue, you can run the application, and navigate to the `Onboarding` page in the 
`drawer`. Then try navigating to a different page using the `drawer`.

