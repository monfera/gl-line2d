precision mediump float;

attribute vec2 a;

uniform vec2 scale, translate;
uniform float radius;

#pragma glslify: baseProject = require("./baseProject.glsl")

void main() {
  vec3 pp = baseProject(scale, translate, a);
  gl_Position = vec4(pp.xy, 0, pp.z);
  gl_PointSize = radius;
}