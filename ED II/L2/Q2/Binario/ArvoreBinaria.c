
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "ArvoreBinaria.h" // Inclui prot�tipos

// A estrutura do n� da �rvore, possui 3 campos: informa��o inteira, ponteiro esquerdo e ponteiro direito.
struct NO{
   int info;
   struct NO* esq;
   struct NO* dir;
};

// Cria uma �rvore bin�ria nula,
// que � um ponteiro duplo nulo a um n�.

void fill_array(int *array, int size)
{
    srand(time(NULL));

    for(int i=0; i < size; i++)
    {
        array[i] = rand()%120;
    }
}

void show_array(int* array, int size)
{
    for(int i=0; i < size; i++)
    {
        printf("%d ", array[i]);
    }
}

ArvBin* cria_ArvBin(){
   // aloca mem�ria para um ponteiro a um n�, e retorna o endere�o desse ponteiro
   ArvBin* raiz = (ArvBin*) malloc(sizeof(ArvBin));
   if (raiz != NULL)
      *raiz = NULL;
   return raiz;
}
// fun��o recursiva que libera a mem�ria alocada
// a cada n� de uma sub�rvore
void libera_NO(struct NO* no){
  // condi��o de parada
  if (no == NULL)
    return
  // inicio das recorr�ncias
  libera_NO(no->esq);
  libera_NO(no->dir);
  // fim das recorr�ncias
  free(no);  /* libera a memoria alocada ao n� */
  no = NULL; /* faz o ponteiro nulo */
}

// fun��o que libera a mem�ria alocada a todos os n�s da �rvore;
// para isso usa a fun��o recursiva libera_NO().
void libera_ArvBin(ArvBin* raiz){
   // caso trivial ou nulo
   if (raiz == NULL) /* caso a �rvore n�o tenha sido criada */
     return;
   // chamada a fun��o recursiva
   libera_NO(*raiz); /* libera cada n� */
   // libera a raiz
   free(raiz);
}

// fun��o sequencial que insere um novo n� na �rvore binaria
// de busca de acordo com o valor fornecido,
// retorna 0 se a inser��o for invi�vel e 1 se for vi�vel.
int insere_ArBin(ArvBin* raiz, int valor){
   // caso trivial ou nulo
   if (raiz == NULL)
      return 0;
   // cria��o do novo n�
   struct NO* novo;
   novo = (struct NO*) malloc(sizeof(struct NO));
   if (novo == NULL)
     return 0;
   novo->info = valor;
   novo->dir = NULL;
   novo->esq = NULL;
   // percurso sequencial da �rvore
   if (*raiz == NULL) /* Arvore vazia */
     *raiz = novo;
   else {
     struct NO* atual = *raiz;
     struct NO* ant = NULL;
     while (atual != NULL){
        ant = atual;
        if (valor == atual->info){
            free(novo); /* libera memoria */
            return 0;   /* elemento j� existe */
        }
        if (valor > atual->info)
            atual = atual->dir; /* desce pela direita */
        else
            atual = atual->esq; /* desce pela esquerda */
     }
     // inser��o do novo n�
     if (valor > ant->info)
        ant->dir = novo;
     else
        ant->esq = novo;
   }
   return 1;
}

// remove o n� apontado por atual
// retorna o ponteiro ao n� que substitui o n� removido, ou seu descendente ou nulo.
struct NO* remove_atual(struct NO* atual){
   struct NO *no1, *no2; /* ponteiros esquerdo e direito de atual */

   // atual n�o tem filho esquerdo (s� direito ou nenhum)
   if (atual->esq == NULL){
      no2 = atual->dir;
      free(atual);
      return no2;
   }
   //PARTE DE BUSCA PARA ENCONTRAR MAIOR ELEMENTO A ESQUERDA
   //se tiver filho esquerdo, faz uma busca pelo n� antecessor
   no1 = atual;
   no2 = atual->esq;
   while (no2->dir !=NULL){
      no1 = no2;
      no2 = no2->dir;
   }
   // refaz reconex�es para que no2 ocupe o lugar do atual
   if (no1 != atual){
     no1->dir = no2->esq; //Null?
     no2->esq = atual->esq; //Null?
   }
   // Substitu��o de fato
   no2->dir = atual->dir;
   free(atual);
   return no2;
}

// fun��o sequencial que remove um n� na �rvore binaria
// de busca que corresponde ao valor indicado,
// retorna 0 se a remo��o for invi�vel e 1 se for vi�vel.
// usa a fun��o remove_atual() para remover o n� localizado.
int remove_ArvBin(ArvBin* raiz, int valor){
// caso trivial ou nulo
   if (raiz == NULL)
      return 0;
   // percurso sequencial da �rvore
   struct NO* atual = *raiz;
   struct NO* ant = NULL;
   while (atual != NULL){
        // caso encontre o valor
        if (valor == atual->info){
           if (atual == *raiz)       /* atual � a raiz */
             *raiz = remove_atual(atual);
           else {
              if (ant->dir == atual) /* atual � um filho direito */
                ant->dir = remove_atual(atual);
              else                  /* atual � um filho esquerdo */
                ant->esq = remove_atual(atual);
           }
           return 1;            /* removeu */
        }
        // desce na �rvore
        ant = atual;
        if (valor > atual->info)
            atual = atual->dir; /* desce pela direita */
        else
            atual = atual->esq; /* desce pela esquerda */
   }
   return 0;                 /* desceu e n�o encontrou */
}

// verifica se a �rvore est� vazia: 1(Sim) 0 (N�o)
// raiz � um ponteiro duplo ao n� raiz da �rvore
int estaVazia_ArvBin(ArvBin* raiz){
   if (raiz == NULL)  /* A �rvore n�o foi criada */
      return 1;
   if (*raiz == NULL) /* A �rvore foi criada, mas n�o cont�m elementos */
      return 1;
   return 0;          /* A �rvore possui elementos */
};

// fun��o recursiva que retorna a altura da �rvore
int altura_ArvBin(ArvBin* raiz){
   // condi��o de parada
   if (raiz == NULL)
       return 0;
   if (*raiz == NULL)
       return 0;
   // inicio da recorr�ncia
   // calcula a altura esquerda e a altura direita
   int alt_esq = altura_ArvBin(&((*raiz)->esq));
   int alt_dir = altura_ArvBin(&((*raiz)->dir));
   // fim da recorrencia
   // calculo da altura da sub�rvore
   if (alt_esq >alt_dir)
       return (alt_esq + 1);
   else
       return (alt_dir + 1);
}

// fun��o recursiva que calcula o n�mero de n�s da �rvore
int totalNO_ArvBin(ArvBin* raiz){
   // condi��o de parada
   if (raiz == NULL)
       return 0;
   if (*raiz == NULL)
       return 0;
   // inicio da recorr�ncia
   // calcula o total de n�s a esquerda e a direita
   int total_esq = totalNO_ArvBin(&((*raiz)->esq));
   int total_dir = totalNO_ArvBin(&((*raiz)->dir));
   // fim da recorrencia
   // calculo do total de n�s da sub�rvore
   return (total_esq + total_dir + 1);
}

// fun��o sequencial que percorre a �rvore de busca bin�ria desde a raiz at�:
// achar o valor desejado 1 (sim) ou confirmar que o valor n�o existe 0 (n�o).
int consulta_ArvBin(ArvBin* raiz, int valor){
   // cpndi��o de parada
   if (raiz == NULL)
       return 0;
   // percurso sequ�ncial
   struct NO* atual = *raiz;   /* ponteiro ao n� raiz */
   while (atual != NULL){
      if (valor == atual->info){
         return 1;             /* valor encontrado */
      }
      if (valor > atual->info)
        atual = atual->dir;    /* desce pela sub�rvore direita */
      else
        atual =atual->esq;     /* desce pela sub�rvore esquerda */
   }
   return 0;                   /* valor n�o existe */
}

// fun��o recursiva que percorre a �rvore em-ordem imprimindo os dados.
void emOrdem_ArvBin(ArvBin* raiz){
    // condi��o de parada
   if (*raiz == NULL)
      return;
   // inicio da recorr�ncia
   if (*raiz != NULL) {
      emOrdem_ArvBin(&((*raiz)->esq));
      printf("%d\n",(*raiz)->info);
      emOrdem_ArvBin(&((*raiz)->dir));
   }
   // fim da recorr�ncia
}

void preOrder_ArvBin(ArvBin* raiz)
{
    if (*raiz == NULL)
        return;
    if (*raiz != NULL){
   // Visite o n� raiz (imprima seu valor ou realize outra opera��o)
       printf("%d\n", (*raiz)->info);

       // Realize o percurso em pr�-ordem no filho esquerdo
       preOrder_ArvBin(&((*raiz)->esq));

       // Realize o percurso em pr�-ordem no filho direito
       preOrder_ArvBin(&((*raiz)->dir));
    }
}

void posOrdem_ArvBin(ArvBin* raiz)
{
    if(*raiz == NULL)
        return;
    if(*raiz != NULL)
    {
        posOrdem_ArvBin(&((*raiz)->esq));
        posOrdem_ArvBin(&((*raiz)->dir));
        printf("%d \n", (*raiz)->info);
    }
}
