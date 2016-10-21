precision mediump float;

attribute vec2 aHi;

uniform vec2 scaleHi, translateHi;
uniform float radius;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 pp = baseProject(scaleHi, translateHi, aHi);
  gl_Position = vec4(pp.xy, 0, pp.z);
  gl_PointSize = radius;
}