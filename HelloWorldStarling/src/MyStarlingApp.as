package {
    import flash.display.Bitmap;
    import starling.display.Image;
    import starling.display.Quad;
    import starling.display.Sprite;
    import starling.events.Event;
    import starling.textures.Texture;

    public class MyStarlingApp extends Sprite {
        
        [Embed(source="/../Assets/img.PNG")]
        private static const MyImage:Class
        
        private var _image:Image;
        
        public function MyStarlingApp() {
            super();
            
            addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
            addEventListener(Event.ENTER_FRAME, onEnterFrame);
        }
        
        private function onAddedToStage(e:Event):void {
            removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
            
            createAndShowImage();
        }
        
        private function createAndShowImage():void {            
            // Create bitmap instance and use it to create an image 
            var myBitmap:Bitmap = new MyImage();
            _image = Image.fromBitmap(myBitmap);
            
            // Change images origin to it's center
            // (Otherwise by default it's top left)
            _image.pivotX = _image.width / 2;
            _image.pivotY = _image.height / 2;
            
            // Where to place the image on screen
            _image.x = stage.stageWidth / 2;
            _image.y = stage.stageHeight / 2;
            
            // Add image to display in order to show it
            addChild(_image);
        }
        
        private function onEnterFrame(e:Event):void {
            // Rotate slightly each frame
            _image.rotation -= 0.01;
        }
    }
}