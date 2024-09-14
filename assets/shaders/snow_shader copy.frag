#include <flutter/runtime_effect.glsl>
#ifdef GL_ES
precision lowp float;
#endif

uniform sampler2D uTexture;
uniform float uTime;
uniform vec2 uSize;
uniform float uDensity;        // Controls the number of snowflakes
uniform float uSpeed;          // Controls the speed of snowflakes
uniform vec2 uWindDirection;   // Controls the wind direction and strength

out vec4 fragColor;

// Simple hash function for randomness
float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453123);
}

// Function to draw a snowflake
float drawSnowflake(vec2 pos, float size) {
    float dist = length(pos);
    return smoothstep(size, size - 0.005, dist); // Softer edges
}

#define MAX_SNOWFLAKES 100

void main() {
    vec2 st = FlutterFragCoord().xy / uSize;
    vec2 uv = st;

    // Initialize color
    vec3 color = vec3(0.0);

    // Number of snowflakes based on density
    int numSnowflakes = int(uDensity * float(MAX_SNOWFLAKES));
    float time = uSpeed * uTime;
    for(int i = 0; i < MAX_SNOWFLAKES; i++) {
        if(i >= numSnowflakes) {
            break;
        }

        // Generate random position for each snowflake
        vec2 randPos = vec2(hash(vec2(float(i), time)), hash(vec2(float(i) + 1.0, time)));
        
        // Move snowflakes based on wind direction and speed
        vec2 movement = uWindDirection * time;
        vec2 snowPos = fract(uv + movement - randPos );
        
        // Random size for snowflakes
        float size = hash(vec2(float(i), time + 1.0)) * 0.02; // Increased size

        // Draw snowflake and accumulate
        float snowflake = drawSnowflake(snowPos, size);
        color += snowflake;
    }
    color = clamp(color, 0.0, 1.0);
    // White snowflakes with alpha
    fragColor = vec4(color, 0.5); // vec4(vec3(1.0), clamp(color, 0.0, 1.0));
}
