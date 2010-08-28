package welovefdt.robotlegs.webinar.mvcs.views {
	import welovefdt.robotlegs.webinar.mvcs.models.vo.RSSDataItem;

	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextFieldAutoSize;

	/**
	 * @author Marvin
	 */
	public class ItemView extends Sprite {
		private var _item:ItemAsset;
		private var _count:int;
		private var _itemContainer:Sprite;
		private var _viewMask:Sprite;
		private var _passePartou:PassePartouAsset;
		private var _logoHead:LogoAsset;
		private var _oldY:int;
		var leftLimit:int = -300;
		var rightLimit:int = 0;
		var thumbWidth:Number = 640;
		var xRef:Number;
		var xConv:Number;

		public function ItemView() {
			// init();
		}

		public function init():void {
			addChild(new BackgroundAsset());

			_itemContainer = new Sprite();
			addEventListener(Event.ENTER_FRAME, onRender);
			addEventListener(MouseEvent.ROLL_OVER, onClipRoll);
			addEventListener(MouseEvent.ROLL_OUT, onClipRoll);

			addChild(_itemContainer);

			_passePartou = new PassePartouAsset();
			_passePartou.mouseEnabled = false;

			_logoHead = new LogoAsset();
			_logoHead.x = 400 - (_logoHead.width / 2) + 10;
			_logoHead.y = 5;

			addChild(_passePartou);
			addChild(_logoHead);
		}

		private function onClipRoll(event:MouseEvent):void {
			if(event.type == MouseEvent.ROLL_OVER)
				addEventListener(Event.ENTER_FRAME, onRender);
			else
				removeEventListener(Event.ENTER_FRAME, onRender);
		}

		private function onRender(event:Event) : void {
			leftLimit = -_itemContainer.height;
			xRef = stage.mouseY - 60;
			xConv = (xRef + _itemContainer.y) * -0.1;

			_itemContainer.y += xConv;

			if (_itemContainer.y <= leftLimit)
				_itemContainer.y = leftLimit;
			if (_itemContainer.y >= rightLimit)
				_itemContainer.y = rightLimit;
		}

		public function addItem(itemData:RSSDataItem) : void {
			_item = new ItemAsset();
			_item.addEventListener(MouseEvent.CLICK, onItemClick);
			_item.y = _count * 90;
			_item.titleTF.text = itemData.title;
			_item.link = itemData.link;
			_item.metaTF.text = itemData.author + ", " + itemData.pubData;

			_item.y = _count * 90 + 90;
			_item.x = 15;
			_item.rotation = Math.round(Math.random() * 3);
			_item.mouseChildren = false;
			_item.cacheAsBitmap = true;
			_item.buttonMode = true;

			_item.background.width = _item.titleTF.width + 20;

			if(_count % 2) {
				_item.x = 800 - _item.background.width - 15;

				_item.metaTF.x = _item.background.width - _item.metaTF.width - 10;
				_item.metaTF.autoSize = TextFieldAutoSize.RIGHT;

				_item.titleTF.x = _item.background.width - _item.titleTF.width - 10;
				_item.titleTF.autoSize = TextFieldAutoSize.RIGHT;

				_item.rotation = Math.round(Math.random() * -2);
			}

			_itemContainer.addChild(_item);
			_count++;
		}

		private function onItemClick(event:MouseEvent) : void {
			trace('event.target.link: ' + (event.target.link));
		}
	}
}