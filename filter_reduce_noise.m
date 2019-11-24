img=imread('ckt_5.tif');
%figure;imshow(img);
%figure;imhist(img);

figure;
%more suitable to reduce noise#median filter
out = ordfilt2(img,5,ones(3,3));
subplot(1,3,1);imshow(out);title('Median Filter');
%not suitable, #min filter
out = ordfilt2(img,1,ones(3,3));
subplot(1,3,2);imshow(out);title('Min Filter');
%not suitable, #max filter
out = ordfilt2(img,9,ones(3,3));
subplot(1,3,3);imshow(out);title('Max Filter');
%mean function ,  use max and min outputs to create new ouput
