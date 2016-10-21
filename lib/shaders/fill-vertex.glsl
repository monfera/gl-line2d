precision mediump float;

attribute vec2 a, d;

uniform mat3 matrix;
uniform vec2 projectAxis;
uniform float projectValue;
uniform float depth;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 base = baseProject(matrix, a);
  vec2 p = base.xy / base.z;
  if(d.y < 0.0 || (d.y == 0.0 && d.x < 0.0)) {
    if(dot(p, projectAxis) < projectValue) {
      p = p * (1.0 - abs(projectAxis)) + projectAxis * projectValue;
    }
  }
  gl_Position = vec4(p, depth, 1);
}