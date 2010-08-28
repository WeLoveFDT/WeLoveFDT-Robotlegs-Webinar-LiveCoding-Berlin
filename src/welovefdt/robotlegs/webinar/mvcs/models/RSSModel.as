package welovefdt.robotlegs.webinar.mvcs.models {
	import welovefdt.robotlegs.webinar.mvcs.models.vo.RSSDataItem;

	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Francis Varga
	 */
	public class RSSModel extends Actor {
		
		
		private var _rssList:Array = new Array();
		private var _length:Number;
		
		public function addItem(rssItem : RSSDataItem) : void {
			_rssList.push(rssItem);
		}
		
		public function getItemAt(index : uint):RSSDataItem
		{
			return _rssList[index];
		}

		public function get length() : Number {
			return _rssList.length;
		}
	}
}
