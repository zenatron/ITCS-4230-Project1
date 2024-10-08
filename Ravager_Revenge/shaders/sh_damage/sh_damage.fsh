// Evelyn Hosana - October 7th 2024 - ITCS 5230

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float uTimer;

void main()
{
	// get texture color from base texture
    vec4 textureColor = texture2D(gm_BaseTexture, v_vTexcoord);

    // get red channel with a strong red (1.0) 
    vec4 red = vec4(1.0, 0.0, 0.0, 1.0);

    // use 'mix' to blend red color with current textureColor
    vec4 finalColor = mix(textureColor, red, 0.4);

    // output final color
    gl_FragColor = finalColor * v_vColour;
}
