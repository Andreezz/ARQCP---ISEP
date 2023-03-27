//
// Created by andre on 31/10/2021.
//

#include "ex20.h"
#include <stdio.h>
char toLower(char ch) {

    return (ch >= 'A' && ch <= 'Z') ? ch + 'a' - 'A' : ch;
}

char *find_word(char *word, char *initial_addr) {
    int i;

    while (*initial_addr) {


        for (i = 0; word[i] && toLower(word[i]) == toLower(initial_addr[i]); i++);

        if (word[i] == 0) {
            return initial_addr;
        }


        initial_addr++;
    }

    return NULL;
}
void find_all_words(char* str, char* word, char** addrs) {

    int i = 0;
    char * found;


    while (*str) {

        found = find_word(word, str);
//quando a palavra for diferente incremente e volta a repetir
        if (!found) {
            addrs[i] = NULL;
            return;
        }
//enquanto a palavra for igual á presente no found
        addrs[i++] = str = found;
        //incrementa o vetor uma casa
        str++;
    }

}
