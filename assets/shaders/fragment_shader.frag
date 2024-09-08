#include <flutter/runtime_effect.glsl>
#ifdef GL_ES
precision lowp float;
#endif

uniform sampler2D uTexture; // Ensure this matches the sampler index in Dart
uniform float uTime;
uniform vec2 uSize;
uniform vec2 uMouse;

out vec4 fragColor;

#define PI 3.14159265359

// Plot a line on Y using a value between 0.0-1.0
float plot(vec2 st, float pct) {    
    return smoothstep( pct - 0.02, pct, st.y) -
          smoothstep( pct , pct+ 0.02 , st.y);
}

vec3 colorA = vec3(0.186,0.912,0.606);
vec3 colorB = vec3(0.371,0.187,1.000);

void main() {

  vec2 st = FlutterFragCoord().xy/uSize;
  vec3 color = vec3(0.0);

  vec3 pct = vec3(st.x);

  if (st.y > 0.5) {
    pct.r = (abs(sin(st.x * PI * 2.0) * 10) + cos(uTime * 5 + (st.y  * -2) / sin(st.x) * 15.0) * 50 + abs(sin(st.x * PI * 2.0) * 10)) / 40;
    pct.g = abs(cos(st.y * PI)) / 2;
    pct.b = abs(cos(st.x * PI) / 10 );
  } else {
    vec2 center = vec2(0.8, 0.5);
    float radius = 0.2;
    float dist = distance(st, center);
    float sun = smoothstep(radius, radius - 0.01, dist);

    pct.r = sun +(sin(uTime )* 3)+ 0.5 + sin(uTime  + 50) * 0.2 * abs(sin(st.x * PI))  ; 
    pct.g = abs(cos(st.y * PI)) / 2;
    pct.b = abs(cos(st.x * PI) / 10);
  }
  color = mix(colorA, colorB, pct);

  fragColor = vec4(color,1.0);

}