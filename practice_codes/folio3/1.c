#include<stdio.h>


int isUnique(int arr[],int start , int end){
    int i=0;
    for(i=start;i<end;i++){

    }
}

int minUniqueSum(int arr[],int n){

int sum=arr[0];
int z=arr[0];
int i;
for(i=1;i<n;i++){
    while(arr[i]<=z){
        arr[i]+=1;
    }

    sum+=arr[i];
    z=arr[i];

}

return sum;
}


int main(){

int input1[]={2,3,4,5};
int input2[]={2,2,2};
int input3[]={2,2,4,5};

int x=minUniqueSum(input1,4);
printf("%d\n",x);

}