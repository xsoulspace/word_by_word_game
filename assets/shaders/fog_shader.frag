#include <flutter/runtime_effect.glsl>
#ifdef GL_ES
precision lowp float;
#endif

uniform float uTime;
uniform vec2 uSize;
uniform vec2 uCharacterPos; // Character position for focal fog

out vec4 fragColor;

#define PI 3.14159265359
#define TWO_PI 6.28318530718
// Simplex noise function from Inigo Quilez
float noise(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

// Fractal Brownian Motion (FBM) for more cloud-like noise
float fbm(vec2 st) {
    float value = 0.0;
    float amplitude = 0.5;
    for (int i = 0; i < 5; i++) {
        value += amplitude * noise(st);
        st *= 2.0;
        amplitude *= 0.5;
    }
    return value;
}

void main() {
    vec2 st = FlutterFragCoord().xy / uSize;
    vec2 characterNorm = uCharacterPos / uSize;
    float distance = length(st - characterNorm );
    
    // Smoothly transition the fog effect around the character position
    float smoothRadius =2.0 / max(uSize.x, uSize.y);
    float alpha = smoothstep(smoothRadius, smoothRadius + 0.1, distance);
    fragColor = vec4(0.0, 0.0, 0.0, alpha);

    // Static clouds using fbm with small movement
    float n = fbm(st * 3.0 + uTime * 0.0000009); // Adding movement based on time
    float cloudDensity = 4.0;
    float cloudStrength = exp(distance * cloudDensity) * n;

    vec4 cloudColor = vec4(0.8, 0.8, 0.8, 1.0); // Light grey cloud

    fragColor = cloudColor * cloudStrength;
}
