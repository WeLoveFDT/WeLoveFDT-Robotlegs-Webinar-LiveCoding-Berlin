package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.components {
	/**
	 * @author Marvin
	 */
	public interface IItem {
		function get title():String;

		function get author():String;

		function get date():String;

		function get link():String;
		
		function get id():uint;

		function create(id:String, title:String, author:String, date:String, link:String):void;

		function draw():void;

		function destroy():void;
	}
}