precision highp float;

#pragma glslify: export(project)

vec2 project(mat3 matrix, vec2 a) {
  return (matrix * vec3(a, 0)).xy;
}