function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

distance = zeros(size(X,1), K);

for i = 1:K
 
    
 Value1 = bsxfun(@minus, X, centroids(i,:)); 
 distance(:,i) = sum(Value1.^2,2);
 
 
 
end 

[val,idx] = min(distance');




%disp(size(X));
%disp(size(centroids));
%disp(10000);
%disp(distance);
%[M,idx] = min(distance);

%disp(he);
%disp(M);
%disp(size(distance));
%disp(distance);

%disp(size(X,1));
%disp(555);
%disp(size(centroids, 1));
%disp(size(distance));

%disp(10000);
%disp(centroids);
%disp(X);






% =============================================================

end

