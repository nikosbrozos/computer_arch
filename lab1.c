int main() {
    int a=0;
    int b=0;
    int result, i;
    int c=1;

    for(i = 0; i<10; i++){
        a += 2;
        b = a - i*2;
        }
    if (b>a){
        c = 2;
    }        
    result = (a+b)/c;
        
return result;}