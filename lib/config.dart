

import 'package:flutter/material.dart';

class Config
{
  static double totalwidth=0,totalheight=0,appbarheight=0,statusbarheight=0,bottombarhieght=0,bodyhieght=0;
  Config(BuildContext context)
  {
     totalwidth=MediaQuery.of(context).size.width;
     totalheight=MediaQuery.of(context).size.height;
     appbarheight=kToolbarHeight;
     statusbarheight=MediaQuery.of(context).padding.top;
     bottombarhieght=MediaQuery.of(context).padding.bottom;
     bodyhieght=totalheight-appbarheight-statusbarheight-bottombarhieght;
  }
}