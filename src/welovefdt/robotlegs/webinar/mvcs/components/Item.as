package welovefdt.robotlegs.webinar.mvcs.components {

	/**
	 * @author Marvin
	 */
	public class Item extends ItemAsset {
		private var _id:uint;
		private var _title:String;
		private var _author:String;
		private var _pubDate:String;
		private var _link:String;
		private var _description:String;

		public function draw() : void {
			// _item.titleTF.text = valArr[i];
			// _item.titleTF.autoSize = TextFieldAutoSize.LEFT;
			// _item.metaTF.text = "Marvin Blase, 16.08.2010";
			// _item.metaTF.autoSize = TextFieldAutoSize.LEFT;
		}

		public function create() : void {
			
		}

		public function destroy() : void {
		}

		public function get id() : uint {
			return _id;
		}

		public function get title() : String {
			return _title;
		}

		public function get description() : String {
			return _description;
		}

		public function get link() : String {
			return _link;
		}

		public function get pubDate() : String {
			return _pubDate;
		}

		public function get author() : String {
			return _author;
		}

		public function set id(value:uint) : void {
			_id = value;
		}

		public function set title(value:String) : void {
			_title = value;
		}

		public function set description(value:String) : void {
			_description = value;
		}

		public function set link(value:String) : void {
			_link = value;
		}

		public function set pubDate(value:String) : void {
			_pubDate = value;
		}

		public function set author(value:String) : void {
			_author = value;
		}
	}
}