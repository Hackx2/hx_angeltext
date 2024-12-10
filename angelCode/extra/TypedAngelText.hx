package angelCode.addons;

#if flixel
class TypedAngelText extends angelCode.AngelFontText {
	var isTyping:Bool = false;

	public function new(input_x:Float, input_y:Float, input_fieldWidth:Int = null, input_text:String = "orbl goes crazy", input_path:String) {
		super(input_x, input_y, input_fieldWidth, input_text, input_path);
	}
}
#end
