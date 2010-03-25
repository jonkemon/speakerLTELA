package com.telecoms.media.speakerLTELA.control.events.speaker
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class SpeakerLoadedEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "XMLupdated";
		public function SpeakerLoadedEvent()
		{
			super(EVENT_ID);
			trace(this);
		}
		
	}
}