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

positive_class = y >= 1;
negative_class = y < 1;

p_c = y(positive_class);
n_c = y(negative_class);

%disp(n_c);
%disp(negative_class);

if p_c == 1
    
    plot(X, 'r');
    
end

hold on;

if n_c == 0
    
    plot(X, 'g');
    hold off;
    
end






% =========================================================================



hold off;

end
