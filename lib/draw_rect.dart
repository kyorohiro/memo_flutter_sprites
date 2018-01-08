import 'package:flutter/material.dart' as sky;
import 'package:flutter/widgets.dart' as sky;
import 'package:flutter/painting.dart' as sky;
import 'package:flutter/rendering.dart' as sky;
import 'package:flutter_sprites/flutter_sprites.dart' as sp;

void main() {
  sky.runApp(new DrawRectWidget());
}

class DrawRectWidget extends sky.SingleChildRenderObjectWidget {
  sky.RenderObject createRenderObject(sky.BuildContext context){
    sp.SpriteBox box = new sp.SpriteBox(new RootNode(), sp.SpriteBoxTransformMode.nativePoints);
    return box;
  }
}

class RootNode extends sp.NodeWithSize {
  RootNode():super(new sky.Size(200.0,200.0)) {
    this.visible = true;
  }
  void paint(sky.Canvas canvas) {
    sky.Paint p = new sky.Paint();
    p.color = new sky.Color.fromARGB(0xff, 0xff, 0xcc, 0xcc);
    sky.Rect r = new sky.Rect.fromLTWH(0.0, 0.0, 200.0, 200.0);
    canvas.drawRect(r, p);

    p.color = new sky.Color.fromARGB(0xff, 0xff, 0xff, 0xff);
    r = new sky.Rect.fromLTWH(50.0, 50.0, 100.0, 100.0);
    canvas.drawRect(r, p);
  }
}