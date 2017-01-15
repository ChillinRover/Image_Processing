%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Noise Removal and Image Enhancing   %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Joao Miguel Roque Almeida
% N. Estudante: 2013132242
%
% This program was made on scope of the course Analise e Processamento de
% Imagem in the University of Coimbra
%
% It allows the user to remove noise and enhance images with the following
% filters respectively:
% Median Filter: very good to remove salt and pepper noise from images
% Wiener Filter: based on a statistical approach, and can be used to filter
% noise
% 
% Gaussian Filter: it is used to 'blur' images and remove some details
% Motion Filter: it applies a big blur to an image that is able to simulate
% motion
% High Boost Filter: this filter allows to enhance high frequency regions, 
% highlighting the contours
% Brightness: changes the brightness of given image
% 
% The program has a menu where it is possible to load an image from any folder
% to apply the following filters, and compare two images side by side to choose
% between altered images and/or the original.
%
% In the functions folder, there are 3 example images that can be used to test the
% program.
% 
% To start, run MAIN.m (this script)

clc,clear
cd('.\functions')
Load()
