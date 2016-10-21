precision highp float;

#pragma glslify: export(project)

vec2 project(vec2 scale, vec2 a) {
  return scale * a;
}