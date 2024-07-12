#set up x7 cluster algebra for verification of cluster modular group relations
Q = ClusterQuiver([[2,1],[6,1],[6,5],[4,5],[4,3],[2,3],[1,7],[3,7],[5,7],[7,2],[7,4],[7,6],[1,4],[3,6],[5,2]])
A = ClusterAlgebra(Q,cluster_variable_names=['x1','x2','x3','x4','x5','x6','x0'])
S = A.initial_seed()
verts = [1,2,3,4,5,6,7]

rperm = Permutation('(1,2,3,4,5,6)(7)')
hperm = Permutation('(2,6)(3,5)(7)')
s1perm = Permutation('(4,7)(2,6)'); s2perm = Permutation('(5,7)(3,1)'); s3perm = Permutation('(6,7)(4,2)');
s4perm = Permutation('(1,7)(5,3)'); s5perm = Permutation('(2,7)(6,4)'); s6perm = Permutation('(3,7)(1,5)');

def applyperm(v,p):
    oldverts = v.copy()
    for i in range(7):
        verts[p(i+1)-1] = oldverts[i]

#d1 = h s4 s1
def d1(sd,v):
	sd.mutate(v[0]-1); applyperm(v,s1perm);
	sd.mutate(v[3]-1); applyperm(v,s4perm);
	applyperm(v,hperm)

#d3 = r^2 d1 r^4
def d3(sd,v):
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);
	d1(sd,v)
	applyperm(v,rperm); applyperm(v,rperm);

#d5 = r^4 d1 r^2
def d5(sd,v):
	applyperm(v,rperm); applyperm(v,rperm);
	d1(sd,v)
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);

#d1inv = s1 s4 h
def d1inv(sd,v):
	applyperm(v,hperm)
	sd.mutate(v[3]-1); applyperm(v,s4perm);
	sd.mutate(v[0]-1); applyperm(v,s1perm);

#d3inv = r^2 d1inv r^4
def d3inv(sd,v):
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);
	d1inv(sd,v)
	applyperm(v,rperm); applyperm(v,rperm);

#d5inv = r^4 d1inv r^2
def d5inv(sd,v):
	applyperm(v,rperm); applyperm(v,rperm);
	d1inv(sd,v)
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);

#this is an involution
#ss = s5 s3 s1
def ss(sd,v):
	sd.mutate(v[0]-1); applyperm(v,s1perm);
	sd.mutate(v[2]-1); applyperm(v,s3perm);
	sd.mutate(v[4]-1); applyperm(v,s5perm);

#d4 = ss d1inv ss
def d4(sd,v):
	ss(sd,v)
	d1inv(sd,v)
	ss(sd,v)

#d2 = r^4 d4 r^2
def d2(sd,v):
	applyperm(v,rperm); applyperm(v,rperm);
	d4(sd,v)
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);

#d6 = r^2 d4 r^4
def d6(sd,v):
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);
	d4(sd,v)
	applyperm(v,rperm); applyperm(v,rperm);

#d4inv = ss d1 ss
def d4inv(sd,v):
	ss(sd,v)
	d1(sd,v)
	ss(sd,v)

#d2inv = r^4 d4inv r^2
def d2inv(sd,v):
	applyperm(v,rperm); applyperm(v,rperm);
	d4inv(sd,v)
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);

#d6inv = r^2 d4inv r^4
def d6(sd,v):
	applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm); applyperm(v,rperm);
	d4inv(sd,v)
	applyperm(v,rperm); applyperm(v,rperm);

#print vertex 1 2 3 4 5 6 0
def printvertexvars(sd,v):
	sdvars = sd.cluster_variables()
	pretty_print(sdvars[v[0]-1], sdvars[v[1]-1], sdvars[v[2]-1], sdvars[v[3]-1], sdvars[v[4]-1], sdvars[v[5]-1], sdvars[v[6]-1])

#--------------------------------------

