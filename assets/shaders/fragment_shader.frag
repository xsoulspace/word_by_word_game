#include <flutter/runtime_effect.glsl>
#ifdef GL_ES
precision lowp float;
#endif

uniform sampler2D uTexture; // Ensure this matches the sampler index in Dart
uniform float uTime;
uniform vec2 uSize;

out vec4 fragColor;


void main() {
	// fragColor = vec4(abs(sin(u_time)),0,0.0,1.0);
  vec2 st =  FlutterFragCoord().xy / uSize;
  fragColor = vec4(st.x,st.y,0.0,1.0);
}