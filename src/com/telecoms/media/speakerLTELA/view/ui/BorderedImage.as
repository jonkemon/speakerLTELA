package com.telecoms.media.speakerLTELA.view.ui
{
	import mx.controls.Image;

	[Style(name="borderColor", type="uint", format="Color", inherit="no")]
	[Style(name="borderThickness", type="Number", format="Length", inherit="no")]
	[Style(name="borderAlpha", type="Number", format="Length", inherit="no")]
	
	public class BorderedImage extends Image
	{
		public function BorderedImage()
		{
			super();
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void{
		graphics.lineStyle(getStyle('borderThickness'),getStyle('borderColor'),getStyle('borderAlpha'),false);
		graphics.drawRect(-(getStyle('borderThickness')/2),-(getStyle('borderThickness')/2),contentWidth+getStyle('borderThickness'),contentHeight+getStyle('borderThickness'));
		super.updateDisplayList(w,h);
		}
	}
}