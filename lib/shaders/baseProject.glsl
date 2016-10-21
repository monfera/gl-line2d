#pragma glslify: export(project)

#pragma glslify: dirProject = require("./dirProject.glsl")

vec3 project(vec2 scaleHi, vec2 translateHi, vec2 aHi) {
  return vec3(dirProject(scaleHi, aHi) + translateHi, 1);
}
