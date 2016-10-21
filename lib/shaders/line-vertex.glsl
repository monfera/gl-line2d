precision mediump float;

attribute vec2 a, d;

uniform vec2 scale, translate, screenShape;
uniform float width;

varying vec2 direction;

#pragma glslify: baseProject = require("./baseProject.glsl")
#pragma glslify: dirProject = require("./dirProject.glsl")

void main() {
  vec3 base = baseProject(scale, translate, a);
  vec2 dir = dirProject(scale, d);
  vec2 n = 0.5 * width * normalize(screenShape.yx * vec2(dir.y, -dir.x)) / screenShape.xy;
  vec2 tangent = normalize(screenShape.xy * dir);
  if(dir.x < 0.0 || (dir.x == 0.0 && dir.y < 0.0)) {
    direction = -tangent;
  } else {
    direction = tangent;
  }
  gl_Position = vec4(base.xy / base.z + n, 0, 1);
}