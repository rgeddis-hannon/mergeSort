int y = 0;
int ary[] = new int[500];
int steps = 0;
void setup(){
  while (y < ary.length) {
    ary[y] = int(random(100));
    y++;
  }
  mergeSort(ary);
  println(mergeSort(ary));
  speed();
  println(steps+ " steps");
}
void draw(){
 
}
int[] mergeSort(int[] list){
 if (list.length == 1){ 
   steps++;
   return list;
 } 
   int[] f = new int[list.length/2];
   int[] s = new int[list.length- list.length/2];
  arrayCopy(list, 0, f, 0, list.length/2); 
  arrayCopy(list, list.length-list.length/2, s, 0, list.length/2);
  return merge(mergeSort(f), mergeSort(s));  
 }
int[] merge(int[] f, int[] s){
  int[] combo = new int[f.length + s.length];
  int i1 = 0;
  int i2 = 0; 
  while( i1 < f.length && i2 < s.length){
    if( f[i1] > s[i2]){
      combo[i1+i2] = s[i2];
      i2++; 
      steps++;
    }else { 
      combo[i1+i2] = f[i1];
      i1++;  
      steps++;
    }
  }
    while (i1 < f.length) {
      combo[i1 + i2] = f[i1]; 
      i1++;  
      steps++;
    }
    while(i2 < s.length){
      combo[i1+i2] = s[i2]; 
      i2++; 
      steps++;
    }
    return combo;

  }
  void speed(){
  int m = millis();
  println( m +" milleseconds!");
  }
