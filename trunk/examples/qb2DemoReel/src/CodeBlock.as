package  
{
	import com.bit101.components.TextArea;
	import com.greensock.events.LoaderEvent;
	import com.greensock.loading.data.DataLoaderVars;
	import com.greensock.loading.DataLoader;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.unescapeMultiByte;
	
	public class CodeBlock extends TextArea
	{		
		public function CodeBlock(address:String)
		{
			//html = true;
			_panel.color = 0xffffff;
			_tf.backgroundColor = 0xcccccc;
			_tf.antiAliasType = AntiAliasType.ADVANCED;
			
			this.width = Main.singleton.stage.stageWidth;
			this.height = Main.singleton.stage.stageHeight - 20;
			
			setSourceText(address);
			
			y = 20;
		}
		
		public function setSourceText(address:String):void
		{
			if ( _geshi )
			{
				_geshi.removeEventListener(GeshiThing.SOURCE_LOADED, prettified);
				_geshi.releaseListeners();
				_geshi = null;
			}
			
			
			
			if ( !address )
			{
				return;
			}
			
			var dataLoader:DataLoader = new DataLoader(address);
			dataLoader.addEventListener(LoaderEvent.COMPLETE, completed);
			dataLoader.load();
			
			this._tf.styleSheet = null;
		}
		
		private var _geshi:GeshiThing;
		
		private function completed(evt:Event):void
		{
			selectable = false;
			editable = false;
			
			var dataLoader:DataLoader = evt.currentTarget as DataLoader;
			dataLoader.removeEventListener(LoaderEvent.COMPLETE, completed);
			
			var string:String = dataLoader.content as String;
			string = string.split("\n").join("");
			
			_tf.textColor = 0;;
			html = false;
			this.text = string; // display raw text until geshi thing gets back to us, if ever.
			
			_geshi = new GeshiThing(string);
			_geshi.addEventListener(GeshiThing.SOURCE_LOADED, prettified);
		}
		
		private function prettified(evt:Event):void
		{
			_geshi.removeEventListener(GeshiThing.SOURCE_LOADED, prettified);
			
			html = true;
			this.text = _geshi.htmlText;
			this.draw();
			this._tf.styleSheet = _geshi.styleSheet;
		}
		
		protected override function onMouseWheel(event:MouseEvent):void
		{
			super.onMouseWheel(event);
			_tf.scrollV = Math.round(_scrollbar.value);
		}
	}
}