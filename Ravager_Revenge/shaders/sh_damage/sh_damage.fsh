// Evelyn Hosana - October 7th 2024 - ITCS 5230

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float uTimer;

void main()
{
	// get texture color from base texture
    vec4 textureColor = texture2D(gm_BaseTexture, v_vTexcoord);

    // only modify visible pixels (alpha > 0)
    if (textureColor.a > 0.0) {
        // get red channel with a strong red (1.0) 
        vec4 red = vec4(0.4, 0.0, 0.0, 1.0);
        
        // use 'mix' to blend red color with current textureColor
        vec4 finalColor = mix(textureColor, red, 0.4);
        
        // output final color, keeping original alpha
        gl_FragColor = vec4(finalColor.rgb, textureColor.a) * v_vColour;
    } else {
        // output original transparent pixel without modification
        gl_FragColor = textureColor * v_vColour;
    }
}
