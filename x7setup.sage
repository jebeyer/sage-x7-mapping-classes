#set up x7 cluster algebra for verification of cluster modular group relations
Q = ClusterQuiver([[2,1],[6,1],[6,5],[4,5],[4,3],[2,3],[1,7],[3,7],[5,7],[7,2],[7,4],[7,6],[1,4],[3,6],[5,2]])
A = ClusterAlgebra(Q,cluster_variable_names=['x1','x2','x3','x4','x5','x6','x0'])
S = A.initial_seed()

#--------------------------------------

rperm = Permutation('(1,2,3,4,5,6)(7)')
hperm = Permutation('(2,6)(3,5)(7)')
s1perm = Permutation('(4,7)(2,6)')
s3perm = Permutation('(6,7)(4,2)')
s4perm = Permutation('(1,7)(5,3)')
s5perm = Permutation('(2,7)(6,4)')

#verts[i]=k ==> the kth cluster variable is at vertex i+1
verts = [1,2,3,4,5,6,7]
def applyperm(v,p,n):
	for jj in range(n):
		oldverts = v.copy()
		for i in range(7):
			v[p(i+1)-1] = oldverts[i]

#--------------------------------------

#d1 = h s4 s1
def d1(sd,v):
	sd.mutate(v[0]-1); applyperm(v,s1perm,1);
	sd.mutate(v[3]-1); applyperm(v,s4perm,1);
	applyperm(v,hperm,1)

#d3 = r^2 d1 r^4
def d3(sd,v):
	applyperm(v,rperm,4);
	d1(sd,v)
	applyperm(v,rperm,2);

#d5 = r^4 d1 r^2
def d5(sd,v):
	applyperm(v,rperm,2);
	d1(sd,v)
	applyperm(v,rperm,4);

#--------------------------------------

#d1inv = s1 s4 h
def d1inv(sd,v):
	applyperm(v,hperm,1)
	sd.mutate(v[3]-1); applyperm(v,s4perm,1);
	sd.mutate(v[0]-1); applyperm(v,s1perm,1);

#d3inv = r^2 d1inv r^4
def d3inv(sd,v):
	applyperm(v,rperm,4);
	d1inv(sd,v)
	applyperm(v,rperm,2);

#d5inv = r^4 d1inv r^2
def d5inv(sd,v):
	applyperm(v,rperm,2);
	d1inv(sd,v)
	applyperm(v,rperm,4);

#--------------------------------------

#sss = s5 s3 s1
def sss(sd,v):
	sd.mutate(v[0]-1); applyperm(v,s1perm,1);
	sd.mutate(v[2]-1); applyperm(v,s3perm,1);
	sd.mutate(v[4]-1); applyperm(v,s5perm,1);

#d4 = sss d1inv sss
def d4(sd,v):
	sss(sd,v)
	d1inv(sd,v)
	sss(sd,v)

#d2 = r^4 d4 r^2
def d2(sd,v):
	applyperm(v,rperm,2);
	d4(sd,v)
	applyperm(v,rperm,4);

#d6 = r^2 d4 r^4
def d6(sd,v):
	applyperm(v,rperm,4);
	d4(sd,v)
	applyperm(v,rperm,2);

#--------------------------------------

#d4inv = ss d1 ss
def d4inv(sd,v):
	sss(sd,v)
	d1(sd,v)
	sss(sd,v)

#d2inv = r^4 d4inv r^2
def d2inv(sd,v):
	applyperm(v,rperm,2);
	d4inv(sd,v)
	applyperm(v,rperm,4);

#d6inv = r^2 d4inv r^4
def d6inv(sd,v):
	applyperm(v,rperm,4);
	d4inv(sd,v)
	applyperm(v,rperm,2);

#--------------------------------------

#print cluster variable at vertex 1 2 3 4 5 6 0
def printvertexvars(sd,v):
	sdvars = sd.cluster_variables()
	pretty_print(sdvars[v[0]-1], sdvars[v[1]-1], sdvars[v[2]-1], sdvars[v[3]-1], sdvars[v[4]-1], sdvars[v[5]-1], sdvars[v[6]-1])


