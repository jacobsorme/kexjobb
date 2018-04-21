function [ A ] = readFile( filename )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    file = fopen(filename,'r');
    A = fscanf(file,'%f'); 
    fclose(file); 

end

