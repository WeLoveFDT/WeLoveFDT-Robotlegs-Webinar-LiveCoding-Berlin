package welovefdt.robotlegs.webinar {
	import welovefdt.robotlegs.webinar.mvcs.ApplicationContext;

	import flash.display.Sprite;

	/**

	 * @author Francis Varga
	 */
	 [SWF(width="800", height="640", backgroundColor="#000000", frameRate="40")]
	 
	public class RobotlegsWebinar extends Sprite {
		public function RobotlegsWebinar() {
			
			new ApplicationContext(this);
			
		}
	}
}
