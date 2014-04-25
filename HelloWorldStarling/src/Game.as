package
{
	
	import flash.geom.Point;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.display.DisplayObject;
	import starling.core.Starling;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	var entity : IEntity = PBE.allocateEntity();
	import flash.utils.getDefinitionByName;
	
	public class Game extends Sprite
	{
		
		private var mouseX:Number = 0;
		private var mouseY:Number = 0;
		private var _starling:Starling;
		private var customSprite:CustomSprite;
		private var game2:Game2;
	
		
		public function Game()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		
		}
		
		private function onAdded(e:Event):void
		{
			customSprite = new CustomSprite(600, 600);
			addChild(customSprite);
			
			customSprite.x = (stage.stageWidth - customSprite.width >> 1) + (customSprite.width >> 1);
			customSprite.y = (stage.stageHeight - customSprite.height >> 1) + (customSprite.height >> 1);
			stage.addEventListener(Event.ENTER_FRAME, onFrame);
			// we listen to the mouse movement on the stage
			stage.addEventListener(TouchEvent.TOUCH, onTouch);
			// when the sprite is touched
			customSprite.addEventListener(TouchEvent.TOUCH, onTouchedSprite);
		
		}
		
		private function onFrame(e:Event):void
		{
			customSprite.update();
			// easing on the custom sprite position
			customSprite.x -= (customSprite.x - mouseX) * .1;
			customSprite.y -= (customSprite.y - mouseY) * .1;
		
		}
		
		private function onTouch(e:TouchEvent):void
		{
			
			var touches:Vector.<Touch> = e.touches;
			trace("Length", touches.length);
			
			//	removeChild(clicked);
			
// get the mouse location related to the stage
			var touch:Touch = e.getTouch(stage);
			var pos:Point = touch.getLocation(stage);
			
// store the mouse coordinates
			mouseX = pos.x;
			mouseY = pos.y;
		}
		
		private function onTouchedSprite(e:TouchEvent):void
		{
		
		var clicked:DisplayObject = e.currentTarget as DisplayObject;
		clicked.removeFromParent(true);
		
		
		            
		/*var sceneClass:Class = getDefinitionByName(name) as Class;
            mCurrentScene = new sceneClass() as Scene;
          */
			Starling.context.dispose();

            addChild(game2);

		/*   var touches:Vector.<Touch> = e.touches;
		   trace("Length", touches.length);
		
		   if (touches.length == 2)
		   {
		   var finger1:Touch = touches[0];
		   var finger2:Touch = touches[1];
		   var distance:int;
		   var dx:int;
		   var dy:int;
		   trace("Length", touches.length);
		   // if both fingers moving (dragging)
		   if (finger1.phase == TouchPhase.MOVED && finger2.phase == TouchPhase.MOVED)
		   {
		
		   // calculate the distance between each axes
		   dx = Math.abs(finger1.globalX - finger2.globalX);
		   dy = Math.abs(finger1.globalY - finger2.globalY);
		   // calculate the distance
		   distance = Math.sqrt(dx * dx + dy * dy);
		   trace(distance);
		 clicked.width = distance;*/
		
			//	stage.removeChildren();
			//	addChild(game2);
			//	new Starling(Game, stage);	

		
		}
	}
	
	

}

