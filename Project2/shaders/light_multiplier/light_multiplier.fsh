
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_sampler_light;
uniform float u_f_darkness;

void main()
{
	
	// adding darkness to light surf, multiplying that by whatever is on the screen before the light surf
	gl_FragColor = (u_f_darkness + texture2D(u_sampler_light, v_vTexcoord)) * texture2D(gm_BaseTexture, v_vTexcoord);

}

