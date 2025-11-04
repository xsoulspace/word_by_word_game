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
 // Start of Selection
#define TWO_PI 6.28318530718
vec3 rect(vec2 st, vec2 size, vec2 position, float border, vec3 borderColor, vec3 backgroundColor) {
  vec2 adjustedSt = st - position; // Adjust the coordinates based on the position
  vec2 bl = floor(adjustedSt / size);
  vec2 tr = floor((1.0 - adjustedSt) / size);
  float inside = bl.x * bl.y * tr.x * tr.y;
  float outline = step(0.0, inside - border);
  return mix(backgroundColor, borderColor, outline); // Return color with outline, transparent inside
}

void main() {
  vec2 st = FlutterFragCoord().xy / uSize;
  vec3 color = vec3(0.0);

  // Adjust the position of the rectangle as needed
  vec2 rectPosition = vec2(uSize.x - 0.1, 0.0); // Position at top right corner
  vec3 rectColor = rect(st, vec2(0.2), rectPosition, 0.1, vec3(0.0), vec3(0.8, 0.7, 0.5)); // Get rectangle color with border and background colors
  color += rectColor; // Add rectangle color to the overall color

  fragColor = vec4(color, 1.0);
}
