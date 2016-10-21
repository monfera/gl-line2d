precision mediump float;

attribute vec2 aHi, dHi;
attribute vec4 pick0, pick1;

uniform vec2 scaleHi, translateHi, screenShape;
uniform float width;

varying vec4 pickA, pickB;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 base = baseProject(scaleHi, translateHi, aHi);
  vec2 n = width * normalize(screenShape.yx * vec2(dHi.y, -dHi.x)) / screenShape.xy;
  gl_Position = vec4(base.xy / base.z + n, 0, 1);
  pickA = pick0;
  pickB = pick1;
}