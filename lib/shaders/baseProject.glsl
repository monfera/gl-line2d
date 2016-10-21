#pragma glslify: export(project)
vec3 project(vec2 scHi, vec2 trHi, vec2 scLo, vec2 trLo, vec2 posHi, vec2 posLo) {
  return vec3( scHi * posHi + trHi
             + scLo * posHi + trLo
             + scHi * posLo
             + scLo * posLo, 1.0);
}
