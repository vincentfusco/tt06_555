%imported_data = importdata('./data/tb_timer_core_astable_frequency_vs_designpoint.txt')
%frequency_data = imported_data.data(:,2),20;
[mu, sigma] = normfit(frequency_data);
histfit(frequency_data,30)
grid on
xlabel 'Frequency [Hz]'
ylabel '# Occurances'
txt1 = ['Mean: ' num2str(mu) ' Hz'];
txt2 = ['Std. Dev: ' num2str(sigma) ' Hz'];
text(750,17,txt1)
text(750,16,txt2)