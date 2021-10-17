for i=1:6
    temp=strcat('st-p',num2str(i),'.jpg');
    a=imread(strcat('database\Student photo\',temp));
    a=rgb2gray(a);
    stdPhoto=strcat('stdPhoto',num2str(i));
    pathName1=strcat('database\Student photo\',stdPhoto,'.jpg');
    imwrite(a,pathName1);
end
