l27 := AllSmallGroups(125);
filt27:= Filtered(l27, i -> not IsAbelian(i));
B:= StandardWreathProduct(filt27[1], Group((1,2,3)));
iso:= IsomorphismPcGroup(B);
G:= Image(iso);
isom:= IsomorphismPcpGroup(G);
G:= Image(isom);
coll1:= Collector(G.1);
RelativeOrders(coll1);
GenExpList(G.1);
GenExpList(G.2);
GenExpList(G.2*G.1);
GetConjugate(coll1,2,1);
GenExpList(G.3*G.1);
GetConjugate(coll1,3,1);