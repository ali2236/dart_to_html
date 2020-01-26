import '../Css.dart';

var alignment_css = Css('''
  .center {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
  
  .alignment-parent {
    position: relative;
    display: contents;
    height: auto;
  }
  
  .bottom-right {
    position: absolute;
    bottom: 0%;
    right: 0%;
  }
  
  .bottom-left {
    position: absolute;
    bottom: 0%;
    left: 0%;
  }
  
  .top-right {
    position: absolute;
    top: 0%;
    right: 0%;
  }
  
  .top-left {
    position: absolute;
    top: 0%;
    left: 0%;
  }
''');