void capitalize(char *str) {
//Ver a primeira letra
    if (*str > 96) {
        *str -= 32;
    }
//ver as restantes letras
    while (*str != 0) {
        if (*str == 32 && *(str + 1) > 96 && *(str + 1) != 0) {
            *(str + 1) -= 32;

        }
        str++;
    }

}