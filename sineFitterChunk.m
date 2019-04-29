function [b, s] = sineFitterChunk(t, data, f, nsamp)

	nchunks=floor(length(t)./ nsamp);

	b=zeros(nchunks-1,3);

	for i = 1 : nchunks-1

		a = i*nsamp;
		z = (i+1)*nsamp;

		[c, s(i),  r] = sineFitter(t(a:z), data(a:z), f);

		b(i,:)= c';
	end

endfunction
