clear all
clc
a=2; b=-3; c=1;
delta=b^2-4*a*c;
if(delta>0)
    x1=(-b+sqrt(delta))/2*a
    x2=(-b-sqrt(delta))/2*a
elseif(delta==0)
    x=b/2*a
else
    "immaginari"
end
a=4; b=4; c=1;
delta=b^2-4*a*c;
if(delta>0)
    x1=(-b+sqrt(delta))/2*a
    x2=(-b-sqrt(delta))/2*a
elseif(delta==0)
    x=b/2*a
else
    "immaginari"
end
a=1; b=2; c=2;
delta=b^2-4*a*c;
if(delta>0)
    x1=(-b+sqrt(delta))/2*a
    x2=(-b-sqrt(delta))/2*a
elseif(delta==0)
    x=b/2*a
else
    "immaginari"
end
alpha=[2 7 12 16.3 17]
for i=1:5
    a=1;
    b=-(10.^alpha(i)+1);
    c=10.^alpha(i);
    delta=b^2-4*a*c;
if(delta>0)
    x1=(-b+sqrt(delta))/2*a
    x2=(-b-sqrt(delta))/2*a
elseif(delta==0)
    x=b/2*a
else
    "immaginari"
end
end