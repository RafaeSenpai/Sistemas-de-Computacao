int while_loop(int x, int y, int n){

	while ((n > 0) && (y < 16*n)) {
		x += n;
 		y *= n;
 		n--;
 	}
return x;
}

int main(){
	while_loop(3,4,5);
	return 0;
}