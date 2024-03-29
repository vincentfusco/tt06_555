imported_offset = importdata('./data/tb_comp_p_tran_sweep_mc_vth.txt')
offset_data = imported_offset.data(:,2),20;

[mu, sigma] = normfit(offset_data);
histfit(offset_data,40)
grid on
xlabel 'Voffset [V]'
ylabel '# Occurances'
txt1 = ['Mean: ' num2str(mu) ' V'];
txt2 = ['Std. Dev: ' num2str(sigma) ' V'];
text(0.01,12,txt1)
text(0.01,10,txt2)

imported_hyst = importdata('./data/tb_comp_p_tran_sweep_mc_vhyst.txt')
hyst_data = imported_hyst.data(:,2),20;

figure
[mu_hyst, sigma_hyst] = normfit(hyst_data);
histfit(hyst_data,40)
grid on
xlabel 'Vhyst (vth - vtl) [V]'
ylabel '# Occurances'
txt1 = ['Mean: ' num2str(mu_hyst) ' V'];
txt2 = ['Std. Dev: ' num2str(sigma_hyst) ' V'];
text(0.01,12,txt1)
text(0.01,10,txt2)