package
{
import flash.display.Bitmap;
import starling.display.Image;
import starling.display.Sprite;
import starling.events.Event;
import starling.textures.Texture;
import starling.utils.deg2rad;
public class Game2 extends Sprite
{
private var sausagesVector:Vector.<Image> = new Vector.<Image>(NUM_SAUSAGES, true);
private const NUM_SAUSAGES:uint = 400;

[Embed(source="../lib/Assets/img.PNG")]
private static const Sausage:Class;
public function Game2()
{
addEventListener(Event.ADDED_TO_STAGE, onAdded);
}
private function onAdded (e:Event):void
{
// create a Bitmap object out of the embedded image
var sausageBitmap:Bitmap = new Sausage();
// create a Texture object to feed the Image object
var texture:Texture = Texture.fromBitmap(sausageBitmap);
for (var i:int = 0; i < NUM_SAUSAGES; i++)
{
// create a Image object with our one texture
var image:Image = new Image(texture);
// set a random alpha, position, rotation
image.alpha = Math.random();
// define a random initial position
image.x = Math.random()*stage.stageWidth
image.y = Math.random() * stage.stageHeight
image.width = 30;
image.height = 30;

image.rotation = deg2rad(Math.random()*360);
// show it
addChild(image);
// store references for later
sausagesVector[i] = image;
}
}
}
}