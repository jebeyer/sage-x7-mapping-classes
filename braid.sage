#set up x7 cluster algebra and transformations
load("x7setup.sage")

#--------------------------------------

print("Initial cluster :"); printvertexvars(S,verts);
d1(S,verts); d2(S,verts); d1(S,verts);
d2inv(S,verts); d1inv(S,verts); d2inv(S,verts);
print("\nAfter d2^-1 d1^-1 d2^-1 d1 d2 d1 :"); printvertexvars(S,verts);

d3(S,verts); d2(S,verts); d3(S,verts);
d2inv(S,verts); d3inv(S,verts); d2inv(S,verts);
print("\nAfter d2^-1 d3^-1 d2^-1 d3 d2 d3 :"); printvertexvars(S,verts);

d3(S,verts); d4(S,verts); d3(S,verts);
d4inv(S,verts); d3inv(S,verts); d4inv(S,verts);
print("\nAfter d4^-1 d3^-1 d4^-1 d3 d4 d3 :"); printvertexvars(S,verts);

d5(S,verts); d4(S,verts); d5(S,verts);
d4inv(S,verts); d5inv(S,verts); d4inv(S,verts);
print("\nAfter d4^-1 d5^-1 d4^-1 d5 d4 d5 :"); printvertexvars(S,verts);
