function y=plot_pareto_mult_model(varargin)

% Plots Pareto Lorenz curve of multiple countries, while using
% the epsilon found by fitting the mixed Lorenz curve to the given data.
% Function is able to plot multiple objects in the same plot. Function is
% function for Equity objects.

n_states=length(varargin);  
    
for i=1:n_states
    eps=varargin{i}.epsilon_model;
    f=@(x) 1-(1-x).^eps;
    y=plot(0:0.01:1,f(0:0.01:1),varargin{i}.share_pop,varargin{i}.cumulated_dist_vector,'+','DisplayName',varargin{i}.country);
    hold on
end 
legend('show','Location','northwest');
hold off
end
