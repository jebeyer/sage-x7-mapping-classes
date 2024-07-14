#set up x7 cluster algebra and transformations
load("x7setup.sage")

#--------------------------------------

print("Initial cluster :"); printvertexvars(S,verts);

applyperm(verts,rperm,3);
S.mutate(verts[0]-1); applyperm(verts,s1perm,1);
#print("After psi1^-1 = s1 r^3 :"); printvertexvars(S,verts);

d1(S,verts); d2(S,verts); d3(S,verts); d4(S,verts); d5(S,verts);
d5(S,verts);
d4inv(S,verts);
d2(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
d1(S,verts);
d3inv(S,verts);
d5(S,verts);
d3inv(S,verts);
d1(S,verts); d2(S,verts); d3(S,verts); d4(S,verts); d5(S,verts);
d5(S,verts);
d1(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
print("\nAfter (d1d2d3d4d5)^2 d1 d5 (d5d4d3d2d1) d3^-1 d5 d3^-1 d1 (d1d2d3d4d5) d2 d4^-1 d5 (d5d4d3d2d1) psi1^-1:"); printvertexvars(S,verts);

