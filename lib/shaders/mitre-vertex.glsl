precision mediump float;

attribute vec2 a;

uniform mat3 matrix;
uniform float radius;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 pp = baseProject(matrix, a);
  gl_Position = vec4(pp.xy, 0, pp.z);
  gl_PointSize = radius;
}