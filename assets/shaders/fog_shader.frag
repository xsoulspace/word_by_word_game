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
float random(vec2 st){

  return fract(sin(dot(st.xy, vec2(sin(uTime / 5000000.0), 
    sin(uTime / 5000000.0)))) * (70000.0 - 30000));
}

void main() {
    vec2 st = FlutterFragCoord().xy / uSize;
    float rnd = random(st);
    vec3 color = mix(
        vec3(rnd) * 0.8, 
        vec3(1.0, 0.8, 0.5), 
        step(0.2, rnd)
    );
    fragColor = vec4(color, 0.1);
}
