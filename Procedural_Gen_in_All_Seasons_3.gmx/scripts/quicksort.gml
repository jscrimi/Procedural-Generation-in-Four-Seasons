var m, M, p0, p1, p2, p3, p4, p5, p6, n, t0, t1, t2, t3, t4, t5, t6;
m = argument0;
M = argument1;

if m >= M
 {
  return 0;
 }
if (m+1 == M)
 {
  if global.leafArray[3, m] > global.leafArray[3, M]
   {
    t0 = global.leafArray[0, m];
    t1 = global.leafArray[1, m];
    t2 = global.leafArray[2, m];
    t3 = global.leafArray[3, m];
    t4 = global.leafArray[4, m];
    t5 = global.leafArray[5, m];
    t6 = global.leafArray[6, m];
    
    global.leafArray[0, m] = global.leafArray[0, M];
    global.leafArray[1, m] = global.leafArray[1, M];
    global.leafArray[2, m] = global.leafArray[2, M];
    global.leafArray[3, m] = global.leafArray[3, M];
    global.leafArray[4, m] = global.leafArray[4, M];
    global.leafArray[5, m] = global.leafArray[5, M];
    global.leafArray[6, m] = global.leafArray[6, M];
    
    global.leafArray[0, M] = t0;
    global.leafArray[1, M] = t1;
    global.leafArray[2, M] = t2;
    global.leafArray[3, M] = t3;
    global.leafArray[4, M] = t4;
    global.leafArray[5, M] = t5;
    global.leafArray[6, M] = t6;
   }
  return 0;
 }

n = (m+M) div 2;

p0 = global.leafArray[0, m];
p1 = global.leafArray[1, m];
p2 = global.leafArray[2, m];
p3 = global.leafArray[3, m];
p4 = global.leafArray[4, m];
p5 = global.leafArray[5, m];
p6 = global.leafArray[6, m];

global.leafArray[0, m] = global.leafArray[0, M];
global.leafArray[1, m] = global.leafArray[1, M];
global.leafArray[2, m] = global.leafArray[2, M];
global.leafArray[3, m] = global.leafArray[3, M];
global.leafArray[4, m] = global.leafArray[4, M];
global.leafArray[5, m] = global.leafArray[5, M];
global.leafArray[6, m] = global.leafArray[6, M];

global.leafArray[0, M] = p0;
global.leafArray[1, M] = p1;
global.leafArray[2, M] = p2;
global.leafArray[3, M] = p3;
global.leafArray[4, M] = p4;
global.leafArray[5, M] = p5;
global.leafArray[6, M] = p6;

repeat M-m
 {
  if (global.leafArray[3, m] > p3) break;
  m += 1;
 }
repeat M-m
 {
  if (global.leafArray[3, M] < p3) break;
  M -= 1;
 }

while (m < M)
 {
  t0 = global.leafArray[0, m];
    t1 = global.leafArray[1, m];
    t2 = global.leafArray[2, m];
    t3 = global.leafArray[3, m];
    t4 = global.leafArray[4, m];
    t5 = global.leafArray[5, m];
    t6 = global.leafArray[6, m];
    
    global.leafArray[0, m] = global.leafArray[0, M];
    global.leafArray[1, m] = global.leafArray[1, M];
    global.leafArray[2, m] = global.leafArray[2, M];
    global.leafArray[3, m] = global.leafArray[3, M];
    global.leafArray[4, m] = global.leafArray[4, M];
    global.leafArray[5, m] = global.leafArray[5, M];
    global.leafArray[6, m] = global.leafArray[6, M];
    
    global.leafArray[0, M] = t0;
    global.leafArray[1, M] = t1;
    global.leafArray[2, M] = t2;
    global.leafArray[3, M] = t3;
    global.leafArray[4, M] = t4;
    global.leafArray[5, M] = t5;
    global.leafArray[6, M] = t6;
  repeat M-m
   {
    if (global.leafArray[3, m] > p3) break;
    m += 1;
   }
  repeat M-m
   {
    if (global.leafArray[3, M] < p3) break;
    M -= 1;
   }
 } 

 
 
global.leafArray[0, argument1] = global.leafArray[0, m];
global.leafArray[0, m] = p0;
global.leafArray[1, argument1] = global.leafArray[1, m];
global.leafArray[1, m] = p1;
global.leafArray[2, argument1] = global.leafArray[2, m];
global.leafArray[2, m] = p2;
global.leafArray[3, argument1] = global.leafArray[3, m];
global.leafArray[3, m] = p3;
global.leafArray[4, argument1] = global.leafArray[4, m];
global.leafArray[4, m] = p4;
global.leafArray[5, argument1] = global.leafArray[5, m];
global.leafArray[5, m] = p5;
global.leafArray[6, argument1] = global.leafArray[6, m];
global.leafArray[6, m] = p6;

quicksort(argument0, m-1);
quicksort(m+1, argument1);
