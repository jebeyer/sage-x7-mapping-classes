#set up x7 cluster algebra and transformations
load("x7setup.sage")

#--------------------------------------

print("Initial cluster :"); printvertexvars(S,verts);

#applyperm(verts,rperm,3);
#S.mutate(verts[4]-1); applyperm(verts,s5perm,1);
psi5inv(S,verts);
print("\nAfter psi5^-1 = s5 r^3 :"); printvertexvars(S,verts);

d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
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

print("\nAfter d1 d5 (d5d4d3d2d1) d3^-1 d5 d3^-1 d1 (d1d2d3d4d5) d2 d4^-1 d5 (d1d2d3d4d5) psi5^-1:"); printvertexvars(S,verts);

