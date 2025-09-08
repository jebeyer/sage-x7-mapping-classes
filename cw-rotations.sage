#set up x7 cluster algebra and transformations
load("x7setup.sage")

#--------------------------------------

print("Initial cluster :"); printvertexvars(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
print("\nAfter (d1 d2 d3 d4 d5)^2 :"); printvertexvars(S,verts);

d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
print("\nAfter (d1 d2 d3 d4 d5)^4 :"); printvertexvars(S,verts);

d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
print("\nAfter (d1 d2 d3 d4 d5)^6 :"); printvertexvars(S,verts);




