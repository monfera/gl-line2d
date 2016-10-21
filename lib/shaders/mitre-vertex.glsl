precision mediump float;

attribute vec2 a;

uniform mat3 matrix;
uniform float radius;

#pragma glslify: project = require("./project.glsl")

void main() {
  vec3 pp = project(matrix, a);
  gl_Position = vec4(pp.xy, 0, pp.z);
  gl_PointSize = radius;
}