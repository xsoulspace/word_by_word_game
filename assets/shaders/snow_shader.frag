#include <flutter/runtime_effect.glsl>
#ifdef GL_ES
precision lowp float;
#endif

uniform float uTime;
uniform vec2 uSize;

out vec4 fragColor;

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


void main() {
    vec2 st = (FlutterFragCoord().xy / uSize) ;
    vec4 color = superSnowyEffect(st);
    fragColor = color; 
}
