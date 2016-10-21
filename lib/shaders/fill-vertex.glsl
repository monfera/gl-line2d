precision mediump float;

attribute vec2 aHi, dHi;

uniform vec2 scaleHi, translateHi, projectAxis;
uniform float projectValue;
uniform float depth;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 base = baseProject(scaleHi, translateHi, aHi);
  vec2 p = base.xy / base.z;
  if(dHi.y < 0.0 || (dHi.y == 0.0 && dHi.x < 0.0)) {
    if(dot(p, projectAxis) < projectValue) {
      p = p * (1.0 - abs(projectAxis)) + projectAxis * projectValue;
    }
  }
  gl_Position = vec4(p, depth, 1);
}