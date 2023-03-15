function g = gauFilter(size,sigma)
size = fix(size) / 2;
[x, y] = meshgrid(-size:size, -size:size);
normal = 1 / (2.0 * pi * sigma^2);
g = exp(-((x.^2 + y.^2) / (2.0 * sigma^2))) * normal;
endfunction
