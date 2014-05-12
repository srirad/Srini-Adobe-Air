package Loot
{
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.TouchEvent;
	import flash.display.Bitmap;
	import starling.display.DisplayObject;
	import starling.display.Image;
	import starling.textures.Texture;
	
	/**
	 * ...
	 * @author Srini
	 */
	public class MainPage extends Sprite
	{
		private var q:Quad;
		private var commonAPI:CommonAPI;
		
		[Embed(source="Assets/Images/mainpage/banner01.jpg")]
		private static const BannerImg:Class;
		[Embed(source="Assets/Images/mainpage/explore_btn.jpg")]
		private static const ExploreBtn:Class;
		private var bannerImg:Image;
		private var exploreBtn:Image;
		private var lootBtn:Image;
		[Embed(source = "Assets/Images/mainpage/loot_btn.jpg")]
		private static const LootBtn:Class;
		public function MainPage(backDrp:BackDrop)
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
			commonAPI = backDrp.getCommonAPI();
		}
		
		private function onAdded(e:Event):void
		{
					
			bannerImg =  commonAPI.getImage(BannerImg);
			
			exploreBtn = commonAPI.getImage(ExploreBtn);
			exploreBtn.y = bannerImg.y +bannerImg.height;
		
			lootBtn = commonAPI.getImage(LootBtn);
			lootBtn.y = bannerImg.y +bannerImg.height;
			lootBtn.x = exploreBtn.x +exploreBtn.width;
			
			addChild(bannerImg);
			addChild(exploreBtn);
			addChild(lootBtn);
		}
	
	}

}