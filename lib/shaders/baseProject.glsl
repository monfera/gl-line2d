precision highp float;

#pragma glslify: export(project)

vec3 project(mat3 matrix, vec2 a) {
  return matrix * vec3(a, 1);
}