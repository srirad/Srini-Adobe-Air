package POSSystem
{
	import flash.display.Bitmap;
	import starling.display.DisplayObject;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.textures.Texture;
	
	/**
	 * ...
	 * @author Srini
	 */
	public class BackDrop extends Sprite
	{	
		private var loginImg:Image;
		private var mainPage:MainPage;
		
		[Embed(source="Assets/Images/mainpage/landing2.jpg")]
		private static const LogIn:Class;
		private var commonAPI:CommonAPI  = new CommonAPI();
		public function BackDrop()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private function onAdded(e:Event):void
		{
			commonAPI.setStageWandH(stage.stageWidth, stage.stageHeight);
			var loginBg:Bitmap = new LogIn();
			var bgTexture:Texture = Texture.fromBitmap(loginBg);
			loginImg = new Image(bgTexture);
			
			loginImg.width = stage.stageWidth;
			loginImg.height = stage.stageHeight;
			
			commonAPI.changeImageWidth(loginImg);
			
			addChild(loginImg);
			loginImg.addEventListener(TouchEvent.TOUCH, loginBtnClicked);
		}
		
		private function loginBtnClicked(e:TouchEvent):void
		{
			
			var touch:Touch = e.getTouch(stage);
			var clicked:DisplayObject = e.currentTarget as DisplayObject;
			
			if (touch.phase == TouchPhase.ENDED)
			{
				clicked.dispose();
			//	clicked.removeEventListeners();
				mainPage = new MainPage();
				addChild(mainPage);
			}
		}
	
	}

}