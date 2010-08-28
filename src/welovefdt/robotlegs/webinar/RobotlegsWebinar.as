package welovefdt.robotlegs.webinar {
	import welovefdt.robotlegs.webinar.mvcs.ApplicationContext;
	import flash.display.Sprite;

	/**
	 * @author Francis Varga
	 */
	public class RobotlegsWebinar extends Sprite {
		public function RobotlegsWebinar() {
			
			new ApplicationContext(this);
			
		}
	}
}
