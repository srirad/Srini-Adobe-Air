package Loot
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import starling.display.Image;
	import starling.textures.Texture;
	
	/**
	 * ...
	 * @author Srini
	 */
	public class CommonAPI extends Sprite
	{
		public const MAX_SCREEN_WIDTH:Number = 1536.0;
		public const MAX_SCREEN_HEIGHT:Number = 2048.0;
		
		public static var cStageWidth:int;
		public static var cStageHeight:int;
		
		public function CommonAPI()
		{
		
		}
		
		public function setStageWandH(w:int, h:int):void
		{
			cStageWidth = w;
			cStageHeight = h;
		
		}
		
		public function changeImageWidth(img:Image):void
		{
			
			img.width = cStageWidth; 
			img.height = cStageHeight; 
		
		}
		
		public function resizeImageW(img:Image):void
		{
			img.width = ((cStageWidth / 1536) * img.width);
			img.height = ((cStageHeight / 2048) * img.height);
		}
		
		public function getTopLeft():Number
		{
			return ((cStageHeight / 2048) * 115);
		}
		
		public function getImage( cls:Class):Image
		{
			var bmp:Bitmap = new cls();
			var texture:Texture = Texture.fromBitmap(bmp);
			
			var img:Image = new Image(texture);
			this.resizeImageW(img);
			
			img.y = img.y + this.getTopLeft();
			return img;
		}
	
	}

}