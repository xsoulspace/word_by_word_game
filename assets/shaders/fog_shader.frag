#include <flutter/runtime_effect.glsl>
#ifdef GL_ES
precision lowp float;
#endif

uniform sampler2D uTexture;
uniform float uTime;
uniform vec2 uSize;
uniform vec2 uHoleCenter; // Center of the "hole" in the fog
uniform float uHoleRadius; // Radius of the "hole"
// imagine you need to create shader, which will be applied to 2d platformer. This shader should give effect of fog, also, this fog should have a "hole" which should depen from uniform. That "hole" should give the layer see objects and landscape behind the shader.
out vec4 fragColor;

#define PI 3.14159265359
#define TWO_PI 6.28318530718
void main() {
    vec2 st = FlutterFragCoord().xy / uSize;
    vec3 color = vec3(0.0);
    vec2 c = vec2(0.5, 0.5); // Center of the image
    st = fract(st);
    color = vec3(st.x  , st.y +0.2 ,0.0);
    
    fragColor = vec4(color,1);

}
