function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

%disp(y);
%disp(length(y));

%disp(y(2,:));

for i = 1:length(y)
    
    if y(i,:) == 1
        
        p_c(i,:) = X(i,(1:2));
        
    end 
    
        if y(i,:) == 0
        
        n_c(i,:) = X(i,(1:2));
        
    end 
    
    
    
end

%disp(p_c(:,1));

%disp(n_c);



scatter(p_c(:,1),p_c(:,2));







% =========================================================================



hold off;

end
