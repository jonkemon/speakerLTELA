package com.telecoms.media.speakerLTELA.control.events.speaker
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class SpeakerNumberUpdateEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "Update speaker Number";
		public function SpeakerNumberUpdateEvent()
		{
			super(EVENT_ID);
			trace(this);
		}
		
	}
}