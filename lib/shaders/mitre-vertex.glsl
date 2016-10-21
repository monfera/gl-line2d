precision mediump float;

attribute vec2 a;

uniform mat3 matrix;
uniform float radius;

void main() {
  vec3 pp = matrix * vec3(a, 1);
  gl_Position = vec4(pp.xy, 0, pp.z);
  gl_PointSize = radius;
}