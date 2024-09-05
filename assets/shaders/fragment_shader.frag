#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform sampler2D u_texture; // Ensure this matches the sampler index in Dart
out vec4 fragColor;

void main() {
	fragColor = vec4(0.5, 0.1, 0.2, 1.000);
}
