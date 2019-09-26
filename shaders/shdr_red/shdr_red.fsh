varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
	vec4 tex = vec4 (texture2D(gm_BaseTexture, v_vTexcoord));
	tex.rgba = vec4(1.0, 0.0, 0.0, tex.a);
	gl_FragColor = v_vColour * tex;
}