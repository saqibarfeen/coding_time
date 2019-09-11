#include<stdio.h>
#include <string.h>
#include<stdlib.h>



// int minSwaps(int arr[],int n){

// }


char* f(){
const char* name = "hello";
const char* extension = ".txt";

char* name_with_extension;
name_with_extension = malloc(strlen(name)+strlen(extension)); /* make space for the new string (should check the return value ...) */
strcpy(name_with_extension, name); /* copy name into the new var */
strcat(name_with_extension, extension); /* add the extension */

return name_with_extension;
}


int main(){

char* x=f();
puts(x);

}