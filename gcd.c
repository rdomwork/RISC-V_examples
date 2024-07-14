int GCD(int a, int b){
int remainder = 1;
int gcd = b;


while(remainder != 0){
    gcd = b;
    remainder = a % b;
    if(remainder == 0){
        break;
    }
    a = b;
    b = remainder;
}

return gcd;
}