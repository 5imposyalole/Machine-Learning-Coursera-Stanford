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

out1 = p_c(all(p_c,2),:);
out2 = n_c(all(n_c,2),:);

%positive_1 = out1(:,1);
%positive_2 = out1(:,2);
%negative_1 = out2(:,1);
%negative_2 =  out2(:,2);

scatter(out1(:,1),out1(:,2), 'k+', 'Linewidth', 2);
hold on;
scatter(out2(:,1),out2(:,2), 'ko', 'MarkerFaceColor', 'y');
hold off;


% =========================================================================



hold off;

end
