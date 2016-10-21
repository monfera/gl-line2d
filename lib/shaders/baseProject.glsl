precision highp float;

#pragma glslify: export(project)

vec3 project(vec2 scale, vec2 translate, vec2 a) {
  return vec3(scale * a + translate, 1);
}