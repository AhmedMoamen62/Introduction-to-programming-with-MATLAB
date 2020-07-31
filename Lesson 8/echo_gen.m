function out = echo_gen(input,fs,delay,amp)
samples_delay = round(delay * fs);

signal = zeros(length(input) + samples_delay,1);
signal(1:length(input)) = input;
echo_signal = zeros(length(input) + samples_delay,1);
echo_signal(samples_delay + (1:length(input)))= amp .* input;
out = signal + echo_signal;

maximum = max(abs(out));
if maximum > 1
    out = out ./ maximum;
end
end

% Another solution
% function output = echo_gen(s, Fs, delay, amp)
%     % Find the time between points using Fs
%     dt = 1/Fs;
%     % Calculate the number of points for the given delay
%     N = round(delay/dt);
%     % Pad the original signal with zeros to make room for the echo
%     s1 = [s; zeros(N, 1)];
%     % Create an echo signal that starts with 0's
%     s2 = [zeros(N, 1); s.*amp];
%     % Add the echo to the original signal
%     output = s1 + s2;
%     % the abs of all values must be < 1. Rescale if necessary
%     if max(abs(output)) > 1
%         output = output./max(abs(output));
%     end
%     
%     % Note: This only works with column vectors - can you make the
%     % function more robust so that it works with column or row vectors?
% end
    