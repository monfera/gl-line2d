precision mediump float;

attribute vec2 a, d;
attribute vec4 pick0, pick1;

uniform mat3 matrix;
uniform vec2 screenShape;
uniform float width;

varying vec4 pickA, pickB;

#pragma glslify: project = require("./project.glsl")

void main() {
  vec3 base = project(matrix, a);
  vec2 n = width * normalize(screenShape.yx * vec2(d.y, -d.x)) / screenShape.xy;
  gl_Position = vec4(base.xy / base.z + n, 0, 1);
  pickA = pick0;
  pickB = pick1;
}