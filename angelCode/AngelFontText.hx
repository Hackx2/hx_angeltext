package angelCode;

#if flixel
import flixel.graphics.frames.FlxBitmapFont;

/**
 * ===============================
 * Simple way to use angel code fonts i guess...
 * Allows SpriteSheets to be used instead of fonts.
 * This class is much better than FlxText. i think...
 * Think of this as a overlay for `flixel.text.FlxBitmapText`.
 * ===============================
 * Notes:
 *	 Currently supports only XML spritesheets.
 * ===============================
 * References:
 *	https://api.haxeflixel.com/flixel/text/FlxBitmapText.html/
 * ===============================
 * Metadata:
 *  @author YourFriendOrbl https://yourfriendorbl.carrd.co/
 * ===============================
 */
class AngelFontText extends flixel.text.FlxBitmapText {
	/**
	 * Sets the size of the text
	 */
	public var size(default, set):Float;

	/**
	 * `set_size()` literally sets the size.
	 */
	@:noCompletion private inline function set_size(size:Float) {
		/**
		 * `_angelCode` line height.
		 */
		final lineHeight:Float = _angelCode.lineHeight;

		/**
		 * `size` value divided by `lineHeight`.
		 */
		final scaleFactor:Float = size / lineHeight;

		/**
		 * set the scale to `scaleFactor`...
		 */
		this.scale.set(scaleFactor, scaleFactor);

		/**
		 * set `pos` to `this.getPosition()`.
		 */
		final pos:flixel.math.FlxPoint = this.getPosition();

		/**
		 * set the position to `pos.x` and `pos.y`.
		 */
		this.setPosition(pos.x, pos.y);

		/**
		 * call `updateHitbox()`.
		 */
		this.updateHitbox();

		/**
		 * return `this.size` equals `size`.
		 */
		return this.size = size;
	}

	/**
	 * Bitmap Font Code.
	 */
	@:noCompletion private var _angelCode:FlxBitmapFont = null;

	/**
	 * Makes uhh idk
	 * @param   input_x     X Pos.
	 * @param   input_y     Y Pos.
	 * @param   input_fieldWidth     Field Width.
	 * @param   input_text     Text.
	 * @param   input_path     Font Path.
	 */
	public function new(input_x:Float, input_y:Float, input_fieldWidth:Int = null, input_text:String = "orbl goes crazy", input_path:String) {
		/**
		 * call `super()`.
		 */
		super();

		/**
		 * Set `font` and `_angelCode` to a new instance of `FlxBitmapFont` idk...
		 * and input `input_path` as a thing, idk...
		 */
		this.font = _angelCode = FlxBitmapFont.fromAngelCode('$input_path.png', '$input_path.xml');

		/**
		 * Set `autoSize` to false.
		 */
		this.autoSize = false;

		/**
		 * Set `text` to `input_text`.
		 */
		this.text = input_text;

		/**
		 * Call `updateHitbox`.
		 */
		this.updateHitbox();

		/**
		 * Checks if `input_fieldWidth` doesn't equal 0.
		 * Set `fieldWidth` to `input_fieldWidth`.
		 */
		if (input_fieldWidth != null && input_fieldWidth is Int)
			this.fieldWidth = input_fieldWidth * 2;

		/**
		 * Set `x` to `input_x`.
		 */
		this.x = input_x;

		/**
		 * Set `y` to `input_y`.
		 */
		this.y = input_y;
	}
}
#end
