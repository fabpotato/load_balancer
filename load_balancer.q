getPort:{[x]
    val: PORTMAP[x];
    h: @[{hopen hsym `$(string x[`host]),":",(string port)};val;0N];  
    if[not h=0N; show (string val`name)," is active";:h];
    $[(h=0N) and x<-1+count PORTMAP; :(value `func)[x+1];:0N]
 };