package Loot
{
	import flash.display.Sprite;
	import starling.display.Image;
	
	/**
	 * ...
	 * @author Srini
	 */
	public class CommonAPI extends Sprite
	{
		
		public static var cStageWidth:int;
		public static var cStageHeight:int;
		
		public function CommonAPI()
		{
			cStageWidth = 0;
			cStageHeight = 0;
		}
		
		public function setStageWandH(w:int, h:int):void
		{
			cStageWidth = w;
			cStageHeight = h;
		
		}
		
		public function changeImageWidth(img:Image):void
		{
			img.width = cStageWidth; // stage.stageWidth;
			img.height = cStageHeight; // stage.stageWidth;
			trace("changeImageWidth", img.width);
			trace("changeImageHeight", img.height);
		}
	
	}

}