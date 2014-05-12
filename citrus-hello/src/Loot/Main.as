package Loot
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.net.URLRequest;
	import starling.core.Starling;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	public class Main extends Sprite
	{
		public static var mStarling:Starling;
		public var bitmapData:BitmapData;
		public var bmVis:Bitmap;
		
		[Embed(source="C:/Development/projects/citrus-hello/src/Loot/Assets/Images/mainpage/landing_bg(03).jpg")]
		internal var MyImage:Class;
		var myBitmap:Bitmap = new MyImage;
		
	
		
		public function Main() extends Sprite
		{
			/*var length:int = myBitmap.getBounds.length;
			myBitmap.scaleX = 0.2;
			*/
			addChild(myBitmap);
		/*	var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
			loader.load(new URLRequest("banner01.jpg")); 
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			mStarling = new Starling(BackDrop, stage);
			
			mStarling.antiAliasing = 1;
			
		mStarling.start();
				addEventListener(Event.ADDED_TO_STAGE, onAdded); */
		
		}
		
		function onComplete(event:Event):void
		{
		/*	trace("loaded!");
			bitmapData = event.target.content.bitmapData;
			bmVis = new Bitmap(bitmapData);
			this.addChild(bmVis); */
		}
		
		private function onAdded(e:Event):void
		{
		}
		
		public function removeLoadingScreen():void
		{
		
		}
	}
}