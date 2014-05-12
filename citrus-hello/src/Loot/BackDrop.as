package Loot
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
		private var commonAPI:CommonAPI = new CommonAPI();
		
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
			
			commonAPI.resizeImageW(loginImg);
			loginImg.y = loginImg.y + commonAPI.getTopLeft();
			trace()
			addChild(loginImg);
			loginImg.addEventListener(TouchEvent.TOUCH, loginBtnClicked);
		}
		
		public function getCommonAPI():CommonAPI
		{
			return commonAPI;
		}
		
		private function loginBtnClicked(e:TouchEvent):void
		{
			
			var touch:Touch = e.getTouch(stage);
			var clicked:DisplayObject = e.currentTarget as DisplayObject;
			
			if (touch.phase == TouchPhase.ENDED)
			{
				clicked.removeFromParent();
				clicked.dispose();
				mainPage = new MainPage(this);
				addChild(mainPage);
			}
		}
	
	}

}