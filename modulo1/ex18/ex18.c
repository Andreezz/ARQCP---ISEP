void compress_shorts(short* shorts, int n_shorts, int* integers) {
    //crio um apontador de short
    short* compressor = (short*) integers;
    //igualo o apontador ao apontador de inteiros com um cast

    int i;
    //percorro o array que contém os shorts
    for (i = 0; i < n_shorts; i++) {
        //igualo o apontador temporario ao apontado do array de shorts e aumento
        // uma posição tanto no vetor que contem os chorts como o que contém
        // os inteiros
        *compressor = *shorts; //igualo os dois vetores e aumento uma posição em cada um deles através do apontador
        compressor++;
        shorts++;
    }
}