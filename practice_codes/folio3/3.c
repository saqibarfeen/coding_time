#include<stdio.h>
#include <string.h>
#include<stdlib.h>

int largest(int arr[][],int i, int j, int N){
    int count=0;
    int max=i>j?i:j;
    max=N-max;//maximum square we can get from here
    for (int t = 0; t < max; t++)
    {
    for (int ii = 0; ii <t; ii++)
    {
        for (int jj = 0; jj < t; jj++)
        {
                if(arr[i+ii][j=jj]==1) {
                    if(ii==jj){
                        count=(ii+1)>count?(ii+1):count;
                    }
                }
                else return count;
        }
        
    }
    
    }
    return count;
    

}

int f(int arr[][],int N){

int maximum=-1;

for(int i=0;i<N;i++){
    for(int j=0;j<N;j++){
        largest(arr,i,j,N);
    }
}


}


int main(){

char* x=f();
puts(x);

}