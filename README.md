# Fattorizzazione LU

In algebra lineare la fattorizzazione LU è utile per _decomporre_ una matrice di partenza $A$ nel prodotto che coinvolge altre tre matrici:

* $L$ triangolare inferiore speciale
* $U$ triangolare superiore
* $P$ di permutazione

dove:

$$ PA = LU $$

Generalmente utilizzata per risolvere sistemi di equazioni lineari, andando poi a risolvere:

$$
\begin{cases}
    Ly = Pb \\
    Ux = y 
\end{cases}
$$

La risoluzione di questo sistema permette la determinazione del vettore x cercato.

----

## Esempio di fattorizzazione LU
Sia

$$
A^{(0)} =\begin{bmatrix}
1 & 2 & -1 & -4 \\
-2 & -4 & 0 & -1 \\
-4 & 0 & 1 & -3 \\
-2 & 1 & 2 & 4 
\end{bmatrix}
,
P^{(0)} =\begin{bmatrix}
1 \\
2 \\
3 \\
4
\end{bmatrix}
, 
L^{(0)} =\begin{bmatrix}
1 & 0  & 0  & 0   \\
  & 1  & 0  & 0 \\
  &    & 1  & 0  \\
  &    &    & 1 
\end{bmatrix}
$$

__1° passo__) Prendendo in considerazione la prima colonna, dobbiamo portare l'elemento più grande (valore assoluto) in posizione pivotale, ci serviamo della matrice $P$:

$$
P^{(1)} =\begin{bmatrix}
3 \\
2 \\
1 \\
4
\end{bmatrix}
,
A^{(1)} =\begin{bmatrix}
-4 & 0 & 1 & -3 \\
-2 & -4 & 0 & -1 \\
1 & 2 & -1 & -4 \\
-2 & 1 & 2 & 4 
\end{bmatrix}
$$

Aggiornaimo $L$ (dividendo il pivot per tutti gli emelemti delle prima colonna)

$$
L^{(1)} =\begin{bmatrix}
1    & 0  & 0  & 0   \\
1/2  & 1  & 0  & 0 \\
-1/4 &    & 1  & 0  \\
1/2  &    &    & 1 
\end{bmatrix}
,
A^{(1)} =\begin{bmatrix}
-4 & 0 & 1 & -3 \\
0 & -4 & -1/2 & -5/2 \\
0 & 2 & -3/4 & -13/4 \\
0 & 1 & 3/2 & 5/2 
\end{bmatrix}
$$

__2° passo__) Prendendo in considerazione la seconda colonna, non c'è nessuno scambio da effettuare, perchè l'elemento più grande è già in posizione pivotale:

$$
L^{(2)} =\begin{bmatrix}
1    & 0  & 0  & 0   \\
1/2  & 1  & 0  & 0 \\
-1/4 &  -1/2  & 1  & 0  \\
1/2  &  -1/4  &    & 1 
\end{bmatrix}
,
A^{(2)} =\begin{bmatrix}
-4 & 0 & 1 & -3 \\
0 & -4 & -1/2 & -5/2 \\
0 & 0 & -1 & -9/2 \\
0 & 0 & 11/8 & 15/8 
\end{bmatrix}
$$

__3° passo__) Prendendo in considerazione la terza colonna, dobbiamo scambiare la 4a riga con la 3a:

$$
P^{(2)} =\begin{bmatrix}
3 \\
2 \\
4 \\
1
\end{bmatrix}
,
A^{(3)} =\begin{bmatrix}
-4 & 0 & 1 & -3 \\
0 & -4 & -1/2 & -5/2 \\
0 & 0 & 11/8 & 15/8  \\
0 & 0 & -1 & -9/2 
\end{bmatrix}
$$

Oss. Permutando $A$, dobbiamo permutare anche $L$ lasciandone inalterata la struttura

$$
L^{(3)} =\begin{bmatrix}
1    & 0  & 0  & 0   \\
1/2  & 1  & 0  & 0 \\
1/2 &  -1/4  & 1  & 0  \\
-1/4  &  -1/2  &    & 1 
\end{bmatrix}
$$

Aggiornaimo il tutto:

$$
L^{(3)} =\begin{bmatrix}
1    & 0  & 0  & 0   \\
1/2  & 1  & 0  & 0 \\
1/2 &  -1/4  & 1  & 0  \\
-1/4  &  -1/2  & -8/11   & 1 
\end{bmatrix}
, 
A^{(3)} =\begin{bmatrix}
-4 & 0 & 1 & -3 \\
0 & -4 & -1/2 & -5/2 \\
0 & 0 & 11/8 & 15/8  \\
0 & 0 & 0 & -69/22 
\end{bmatrix}
= U
, 
P =\begin{bmatrix}
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
1 & 0 & 0 & 0 
\end{bmatrix}
$$

Infine otteniamo:

$$PA = LU$$

$$
\begin{bmatrix}
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
1 & 0 & 0 & 0 
\end{bmatrix}
\begin{bmatrix}
1 & 2 & -1 & -4 \\
-2 & -4 & 0 & -1 \\
-4 & 0 & 1 & -3 \\
-2 & 1 & 2 & 4 
\end{bmatrix}
\=
\begin{bmatrix}
1    & 0  & 0  & 0   \\
1/2  & 1  & 0  & 0 \\
1/2 &  -1/4  & 1  & 0  \\
-1/4  &  -1/2  & -8/11   & 1 
\end{bmatrix}
\begin{bmatrix}
-4 & 0 & 1 & -3 \\
0 & -4 & -1/2 & -5/2 \\
0 & 0 & 11/8 & 15/8  \\
0 & 0 & 0 & -69/22 
\end{bmatrix}
$$

---
## Analisi errore

L'analisi è stata effettuata prendendo in esame una matrice casuale del tipo $A^{20 \times 20}$

<div align="center">
  <img src="img/err_1.png"/>  
</div>

Oss. L'errore accumulato lungo la prima riga è nullo, piochè l'algoritmo la lascia intatta, successivamente man mano che scorriamo le righe in basso, l'ordine di grandezza dell'errore aumenta, causa del fatto che gli elementi in questione sono stati modellati più volte dall'algoritmo, accumulando così molteplici errori di calcolo. 

L'immagine è stata generata a partire da:

```matlab
imagesc(log10(abs(A-L*U)))
```
