#set up x7 cluster algebra and transformations
load("x7setup.sage")

#--------------------------------------

rsss2(S,verts);
print("\nAfter r s1 s3 s5:"); printvertexvars(S,verts);
d3inv(S,verts);
d2(S,verts);
d3(S,verts);
d4(S,verts);
d5(S,verts);
d4inv(S,verts);
print("\nAfter d4inv d5 d4 d3 d2 d3inv:"); printvertexvars(S,verts);

applyperm(verts,hperm,1);
applyperm(verts,rperm,2);
rsss1(S,verts);
print("\nAfter r s1 s2 s1 r^2 h:"); printvertexvars(S,verts);
d5inv(S,verts);
d4(S,verts);
d5(S,verts);
print("\nAfter d5 d4 d5inv:"); printvertexvars(S,verts);

#applyperm(verts,hperm,1);
#print("\nAfter h:"); printvertexvars(S,verts);
#d1(S,verts); d2(S,verts); d3(S,verts); d4(S,verts); d5(S,verts); d5(S,verts); d5(S,verts);
#d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts); d1(S,verts);
#d3inv(S,verts);
#d1(S,verts); d2(S,verts); d3(S,verts); d4(S,verts); d5(S,verts); d5(S,verts); d5(S,verts);
#d4(S,verts); d3(S,verts); d1(S,verts); d2(S,verts); d1(S,verts);
#d5(S,verts);
#d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts); d1(S,verts);
#d3inv(S,verts);
#d1(S,verts); d2(S,verts); d1(S,verts); d3(S,verts); d4(S,verts); d5(S,verts);
#d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
#d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
#print("\nAfter test string:"); printvertexvars(S,verts);

applyperm(verts,rperm,2);
applyperm(verts,hperm,1);
print("\nAfter h r^2:"); printvertexvars(S,verts);
d1(S,verts); d2(S,verts); d3(S,verts); d4(S,verts);
d5(S,verts); d5(S,verts); d5(S,verts);
d4(S,verts); d3(S,verts); d2(S,verts); d3inv(S,verts);
d1(S,verts); d1(S,verts); d1(S,verts);
d2(S,verts); d3(S,verts); d4(S,verts);
d5(S,verts); d5(S,verts); d5(S,verts);
d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
d5(S,verts); d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts);
d1(S,verts); d1(S,verts); d1(S,verts);
d2(S,verts); d1(S,verts); d3(S,verts); d4(S,verts); d5(S,verts);
print("\nAfter test string:"); printvertexvars(S,verts);
