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

float sunLight1Random(vec2 st){
  return fract(sin(dot(st.xy, vec2(sin(uTime / 5000000.0), 
    sin(uTime / 5000000.0)))) * (70000.0 - 40000) / 0.3);
}

vec4 sunLight1(vec2 st){
    float rnd = sunLight1Random(st);
    vec3 color = mix(
        vec3(rnd) * 0.8, 
        vec3(1.0, 0.8, 0.5), 
        step(0.2, rnd)
    );
    return vec4(color, 0.1);
}

float frostEffectRandom(vec2 st) {
  return fract(sin(dot(st.xy, vec2(sin(uTime / 5000000.0), 
    sin(uTime / 5000000.0)))) * (70000.0 - 40000) / 2.);
}

vec4 frostEffect(vec2 st) {
    float rnd = frostEffectRandom(st);
    float alpha = smoothstep(0.0, 0.4, rnd) * smoothstep(0.4, 0.0, rnd);
    vec3 color = vec3(1.0, 0.8, 0.5) * alpha;
    return vec4(rnd / vec3(1.0, 0.8, 0.5), alpha);
}

float superSnowyTime(float time, vec2 screenCoords) {
    return cos(time) *400;//cos(time + screenCoords.x /  screenCoords.y); 
}
float superSnowyEffectRandom(vec2 st) {
   float time = superSnowyTime(uTime, st);
    return fract(sin(dot(time +st.xy,time +vec2(sin(time / 5000000.0), 
    sin(time / 5000000.0)))) * (70000.0 - 40000) / 0.3);
}

vec4 superSnowyEffect(vec2 st) {
    float rnd = superSnowyEffectRandom(st);
    float alpha = smoothstep(0.0, 0.4, rnd) * smoothstep(0.4, 0.0, rnd);
    vec3 color = vec3(1.0, 0.8, 0.5) * alpha;
    return vec4(rnd / vec3(1.0, 0.8, 0.5), alpha);
}


float sunLight2Random(vec2 st) {
  return fract(sin(dot(st.xy, vec2(sin(uTime / 5000000.0), 
    sin(uTime / 5000000.0)))) * (70000.0 - 40000) / 2.);
}

vec4 sunLight2(vec2 st) {
    float rnd = sunLight2Random(st);
    float alpha = smoothstep(0.0, 0.4, rnd) * smoothstep(0.4, 0.0, rnd);
    vec3 color = vec3(1.0, 0.8, 0.5) * alpha;
    return vec4(rnd / vec3(1.0, 0.8, 0.5), alpha);
}

void main() {
    vec2 st = FlutterFragCoord().xy / uSize;
    vec4 color = superSnowyEffect(st);
    fragColor = color; 
}
