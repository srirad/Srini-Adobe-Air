package POSSystem
{
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import starling.core.Starling;
//
public class Main extends Sprite
{
public static var mStarling:Starling;
public function Main()
{
// stats class for fps

stage.align = StageAlign.TOP_LEFT;
stage.scaleMode = StageScaleMode.NO_SCALE;
// create our Starling instance

mStarling = new Starling(BackDrop, stage);


// set anti-aliasing (higher the better quality but slower performance)
mStarling.antiAliasing = 1;
// start it!
mStarling.start();
}
}
}