#ifdef GL_ES
precision mediump float;
#endif

varying vec2 v_vTexcoord; // Координаты текстуры из вершинного шейдера
// uniform sampler2D u_sampler2D; // Обычно не нужно явно объявлять в GameMaker

void main() {
    vec4 sum = vec4(0.0);
    vec2 texcoord = v_vTexcoord;
    float blurSize = 1.0 / 800.0; // Примерное значение, может потребовать настройки

    // Добавляем размытие, беря среднее из 9 соседних пикселей (3x3)
    for (int x = -1; x <= 1; x++) {
        for (int y = -1; y <= 1; y++) {
            vec2 shift = vec2(float(x), float(y)) * blurSize;
            sum += texture2D(gm_BaseTexture, texcoord + shift);
        }
    }

    gl_FragColor = sum / 9.0;
}
