shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

//void vertex() {
	//// Called for every vertex the material is visible on.
//}

void fragment() {
	vec4 bg = texture(SCREEN_TEXTURE, SCREEN_UV);
	float avg = (bg.r + bg.g + bg.b) / 3.0;
	COLOR = vec4(avg,avg,avg, 1.0);

}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
