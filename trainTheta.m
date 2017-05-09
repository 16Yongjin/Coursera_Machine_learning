function Theta  = trainTheta(X, Y, alpha, iter)
%myFun - Description
%
% Syntax: linearRegression = myFun(input)
%
% Long description
    m = size(X,1);
    X_one = [ones([m 1]) X X.^2];
    Theta = [0;0;0];

    for i = 1:iter
        h = X_one * Theta;
        cost = sum(sum((h-Y).^2))/(2*m);
        % Theta -= sum(X_one .* (h-Y)) * alpha / (m);
        for j = 1:3
            Theta(j) -= (alpha/m)* sum(sum((h-Y).*X_one(:,j)));
        end
    end
    Theta
end