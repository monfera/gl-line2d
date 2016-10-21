precision mediump float;

attribute vec2 a, d;
attribute vec4 pick0, pick1;

uniform vec2 scale, translate, screenShape;
uniform float width;

varying vec4 pickA, pickB;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 base = baseProject(scale, translate, a);
  vec2 n = width * normalize(screenShape.yx * vec2(d.y, -d.x)) / screenShape.xy;
  gl_Position = vec4(base.xy / base.z + n, 0, 1);
  pickA = pick0;
  pickB = pick1;
}