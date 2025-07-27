clc;
clear;
close all;

% Transfer Functions List
num_list = {
    [100], [25], [25], [25], [25]
};
den_list = {
    [10 0], [1 25 0], [1 5 0], [1 10 0], [1 0 0]
};

titles = {
    'TF1: 100 / (10s)', 
    'TF2: 25 / (s^2 + 25s)', 
    'TF3: 25 / (s^2 + 5s)', 
    'TF4: 25 / (s^2 + 10s)', 
    'TF5: 25 / (s^2)'
};

for i = 1:5
    % Define Open Loop Transfer Function
    G = tf(num_list{i}, den_list{i});
    
    % Closed Loop with Unity Feedback
    T = feedback(G, 1);
    
    % Step Response
    figure;
    [y, t] = step(T);
    plot(t, y);
    title(['Step Response of ' titles{i}]);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;

    % Time Domain Characteristics
    info = stepinfo(T);
    
    % Steady State Error for Unit Step Input
    s = tf('s');
    Gs = tf(num_list{i}, den_list{i});
    Kp = dcgain(Gs);
    ess = 1 / (1 + Kp);
    
    % Display Results
    fprintf('\n=== %s ===\n', titles{i});
    fprintf('Rise Time (Tr): %.4f sec\n', info.RiseTime);
    fprintf('Delay Time (Td): %.4f sec (approx)\n', info.RiseTime * 0.3); % approx
    fprintf('Peak Time (Tp): %.4f sec\n', info.PeakTime);
    fprintf('Settling Time (Ts): %.4f sec\n', info.SettlingTime);
    fprintf('Overshoot (Mp): %.2f %%\n', info.Overshoot);
    fprintf('Steady-State Error (ess): %.4f\n', ess);
end
