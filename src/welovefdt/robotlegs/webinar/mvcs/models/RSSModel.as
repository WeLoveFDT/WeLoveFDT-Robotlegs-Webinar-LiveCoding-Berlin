package welovefdt.robotlegs.webinar.mvcs.models {
	import welovefdt.robotlegs.webinar.mvcs.models.vo.RSSDataItem;
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Francis Varga
	 */
	public class RSSModel extends Actor {
		
		
		private var _rssList : Array = new Array();
		
		public function addItem(rssItem : RSSDataItem) : void {
			_rssList.push(rssItem);
		}
		
		public function getItemAt(index : uint):RSSDataItem
		{
			return _rssList[index];
		}
	}
}
