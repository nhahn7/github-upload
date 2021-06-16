% Gauss Elimination Method to solve Ax=B, (nxn augmented matrix)
% NOTE: not able to handle situations where factor = 0
A = input('enter coefficient matrix A: ');
B = input('enter column vector B: ');
N = length(B);
x = zeros(N,1);
tol = 1e-6; %zero (tolerance)
%Augmented matrix
Aug_matrix = [A B]

%Transform to upper triangular matrix
for ii = 1:N-1 %for each pivot entry along the diagonal
    for jj = ii+1:N %for each row under the pivot
        ii
        jj
        if abs(Aug_matrix(jj,ii)) > tol 
            % calculate factor to perform row operation
            factor = Aug_matrix(ii,ii)/Aug_matrix(jj,ii)
            %row replacement operation
            Aug_matrix(jj,:) = factor*Aug_matrix(jj,:)-Aug_matrix(ii,:)
        end
    end
end
Aug_matrix %Display upper triangular matrix
%Perform Back Substitution



