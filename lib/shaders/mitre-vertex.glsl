precision highp float;

attribute vec2 aHi, aLo;

uniform vec2 scaleHi, translateHi, scaleLo, translateLo;
uniform float radius;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 pp = baseProject(scaleHi, translateHi, scaleLo, translateLo, aHi, aLo);
  gl_Position = vec4(pp.xy, 0, pp.z);
  gl_PointSize = radius;
}