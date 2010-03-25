package com.telecoms.media.speakerLTELA.control.events.speaker
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class LoadSpeakerEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "LoadSpeaker";
		public function LoadSpeakerEvent()
		{
			super(EVENT_ID);
			trace(this);
		}
		
	}
}