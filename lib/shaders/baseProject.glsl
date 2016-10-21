#pragma glslify: export(project)
vec3 project(vec2 scaleHi, vec2 translateHi, vec2 a) {
  return vec3(scaleHi * a + translateHi, 1);
}