
my_data = csvread('Data.csv', 1, 2);

% Plot the seventh column of the data
plot(my_data(:,7));

load anesthesia.mat;

% Create a time vector
t = (0:595500-1)/250;

x = anesth_data;


plot(t,x);

xlabel('time (seconds)');
ylabel('Sensor Values');
legend('data');
title('Anesthesia data');

% Display spectrogram
mtspecgram(x, 250, 40, 2);

% Calculate band power for the first segment of anesthesia data
bandpower(250, anesth_data(1:500*250), [32 60]);

% Calculate band power for the second segment of anesthesia data
bandpower(250, anesth_data(250*500:250*1750), [32 60]);

% Calculate band power for the third segment of anesthesia data
bandpower(250, anesth_data(250*1750:250*2350), [32 60]);