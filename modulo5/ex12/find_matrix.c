#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Função que busca o número recebido em num na matriz m de tamanho y x k
int find_matrix(int **m, int y, int k, int num) {
  // Percorre cada linha da matriz
  for (int i = 0; i < y; i++) {
    // Percorre cada coluna da linha atual
    for (int j = 0; j < k; j++) {
      // Se o elemento atual for igual ao número procurado, retorna 1
      if (m[i][j] == num) {
        return 1;
      }
    }
  }

  // Se o número não foi encontrado, retorna 0
  return 0;
}
