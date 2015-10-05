function [k, s] = kfilter (A, C, V1, V2, V12)
%function [k,s] = kfilter (A, C, V1, V2, V12)
%KFILTER can have arguments: (A, C, V1, V12)
% products, V12=0
% KILTER calculates the kalman gain, k, and the statinoery covariance
% matrix