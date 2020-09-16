[hdr, record] = edfread('SK.edf');
% RA channels
RA1 = (record(2,:) + record(2,:))/2; 
RA2 = (record(3,:) + record(3,:))/2; 
RA3 = (record(4,:) + record(4,:))/2; 
RA4 = (record(5,:) + record(5,:))/2; 
RA5 = (record(6,:) + record(6,:))/2; 
RA6 = (record(7,:) + record(7,:))/2; 
RA7 = (record(8,:) + record(8,:))/2; 
RA8 = (record(9,:) + record(9,:))/2; 
RA9 = (record(10,:) + record(10,:))/2; 
RA10 = (record(11,:) + record(11,:))/2; 
% RAH channels
RAH1 = (record(12,:) + record(12,:))/2; 
RAH2 = (record(13,:) + record(13,:))/2; 
RAH3 = (record(14,:) + record(14,:))/2; 
RAH4 = (record(15,:) + record(15,:))/2; 
RAH5 = (record(16,:) + record(16,:))/2; 
RAH6 = (record(17,:) + record(17,:))/2; 
RAH7 = (record(18,:) + record(18,:))/2; 
RAH8 = (record(19,:) + record(19,:))/2; 
RAH9 = (record(20,:) + record(20,:))/2; 
RAH10 = (record(21,:) + record(21,:))/2; 
% RPH channels
RPH1 = (record(22,:) + record(22,:))/2; 
RPH2 = (record(23,:) + record(23,:))/2; 
RPH3 = (record(24,:) + record(24,:))/2; 
RPH4 = (record(25,:) + record(25,:))/2; 
RPH5 = (record(26,:) + record(26,:))/2; 
RPH6 = (record(27,:) + record(27,:))/2; 
RPH7 = (record(28,:) + record(28,:))/2; 
RPH8 = (record(29,:) + record(29,:))/2; 
RPH9 = (record(30,:) + record(30,:))/2; 
RPH10 = (record(31,:) + record(31,:))/2; 
% ROF channels
ROF1 = (record(32,:) + record(32,:))/2; 
ROF2 = (record(33,:) + record(33,:))/2; 
ROF3 = (record(34,:) + record(34,:))/2; 
ROF4 = (record(35,:) + record(35,:))/2; 
ROF5 = (record(36,:) + record(36,:))/2; 
ROF6 = (record(37,:) + record(37,:))/2; 
ROF7 = (record(38,:) + record(38,:))/2; 
ROF8 = (record(39,:) + record(39,:))/2; 
ROF9 = (record(30,:) + record(40,:))/2; 
ROF10 = (record(41,:) + record(41,:))/2; 

% LA channels
LA1 = (record(42,:) + record(42,:))/2; 
LA2 = (record(43,:) + record(43,:))/2; 
LA3 = (record(44,:) + record(44,:))/2; 
LA4 = (record(45,:) + record(45,:))/2; 
LA5 = (record(46,:) + record(46,:))/2; 
LA6 = (record(47,:) + record(47,:))/2; 
LA7 = (record(48,:) + record(48,:))/2; 
LA8 = (record(49,:) + record(49,:))/2; 
LA9 = (record(50,:) + record(50,:))/2; 
LA10 = (record(51,:) + record(51,:))/2; 
% LAH channels
LAH1 = (record(52,:) + record(52,:))/2; 
LAH2 = (record(53,:) + record(53,:))/2; 
LAH3 = (record(54,:) + record(54,:))/2; 
LAH4 = (record(55,:) + record(55,:))/2; 
LAH5 = (record(56,:) + record(56,:))/2; 
LAH6 = (record(57,:) + record(57,:))/2; 
LAH7 = (record(58,:) + record(58,:))/2; 
LAH8 = (record(59,:) + record(59,:))/2; 
LAH9 = (record(60,:) + record(60,:))/2; 
LAH10 = (record(61,:) + record(61,:))/2; 
% LPH channels
LPH1 = (record(66,:) + record(66,:))/2; 
LPH2 = (record(67,:) + record(67,:))/2; 
LPH3 = (record(68,:) + record(68,:))/2; 
LPH4 = (record(69,:) + record(69,:))/2; 
LPH5 = (record(70,:) + record(70,:))/2; 
LPH6 = (record(71,:) + record(71,:))/2; 
LPH7 = (record(72,:) + record(72,:))/2; 
LPH8 = (record(73,:) + record(73,:))/2; 
LPH9 = (record(74,:) + record(74,:))/2; 
LPH10 = (record(75,:) + record(75,:))/2; 
% LOF channels
LOF1 = (record(76,:) + record(76,:))/2; 
LOF2 = (record(77,:) + record(77,:))/2; 
LOF3 = (record(78,:) + record(78,:))/2; 
LOF4 = (record(79,:) + record(79,:))/2; 
LOF5 = (record(80,:) + record(80,:))/2; 
LOF6 = (record(81,:) + record(81,:))/2; 
LOF7 = (record(82,:) + record(82,:))/2; 
LOF8 = (record(83,:) + record(83,:))/2; 
LOF9 = (record(84,:) + record(84,:))/2; 
LOF10 = (record(85,:) + record(85,:))/2; 
% ECG channels
ECGL = (record(86,:) + record(86,:))/2; 
ECGR = (record(87,:) + record(87,:))/2; 


%%
% The seizure at LOF1
A = [RA1-LOF1;
     RAH1-LOF1;
     ROF1-LOF1;
     RPH1-LOF1;
     LA4-LOF1;
     LA5-LOF1;
     LAH5-LOF1;
     LAH6-LOF1;
     LPH6-LOF1;
     LPH7-LOF1;
     RA1-LPH7;
     RAH1-LPH7;
     ROF1-LPH7;
     RPH1-LPH7;
     LA4-LPH7;
     LA5-LPH7;
     LAH5-LPH7;
     LAH6-LPH7;
     LPH6-LPH7;
     RA1-LPH6;
     RAH1-LPH6;
     ROF1-LPH6;
     RPH1-LPH6;
     LA4-LPH6;
     LA5-LPH6;
     LAH5-LPH6;
     LAH6-LPH6;
     RA1-LAH6;
     RAH1-LAH6;
     ROF1-LAH6;
     RPH1-LAH6;
     LA4-LAH6;
     LA5-LAH6;
     LAH5-LAH6;
     RA1-LAH5;
     RAH1-LAH5;
     ROF1-LAH5;
     RPH1-LAH5;
     LA4-LAH5;
     LA5-LAH5;
     RA1-LA5;
     RAH1-LA5;
     ROF1-LA5;
     RPH1-LA5;
     LA4-LA5;
     RA1-LA4;
     RAH1-LA4;
     ROF1-LA4;
     RPH1-LA4;
     RA1-RPH1;
     RAH1-RPH1;
     ROF1-RPH1;
     RA1-ROF1;
     RAH1-ROF1;
     RA1-RAH1;];
 
 %%
 
 B = 
