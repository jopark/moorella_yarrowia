load yli_data
simulate=@yli_model;

[net_opt,xch_opt,info,net_,xch_,info_,fval_,I]=pargloptflux(simulate,model,free_net,free_xch,ineq,[],input,mea,fmea,var,256);

[tflux,tiso,tscore]=writetableplus(simulate,model,net_opt,xch_opt,input,mea,fmea,var);
sim=simulate(net_opt,xch_opt,input);

[lb,ub,hs,net_nopt,xch_nopt,nscore,nflag,I]=parconfest3_1(simulate,model,net_opt,xch_opt,ineq,input,mea,fmea,var);
[a,bb]=min(nscore);
net_opt=net_nopt(:,bb);
xch_opt=xch_nopt(:,bb);
[tflux,tiso,tscore]=writetableplus(simulate,model,net_opt,xch_opt,input,mea,fmea,var);
sim=simulate(net_opt,xch_opt,input);