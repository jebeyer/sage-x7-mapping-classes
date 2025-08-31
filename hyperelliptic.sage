#set up x7 cluster algebra and transformations
load("x7setup.sage")

#--------------------------------------

print("Initial cluster :"); printvertexvars(S,verts);
d1(S,verts); d2(S,verts); d3(S,verts); d4(S,verts); d5(S,verts);
d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
print("\nAfter d1d2d3d4d5d5d4d3d2d1 :"); printvertexvars(S,verts);

d5(S,verts); d4(S,verts); d3(S,verts); d2(S,verts); d1(S,verts);
#print("\nAfter d1d2d3d4d5 :"); printvertexvars(S,verts);
d1(S,verts); d2(S,verts); d3(S,verts); d4(S,verts); d5(S,verts);
print("\nAfter d5d4d3d2d1d1d2d3d4d5 :"); printvertexvars(S,verts);
