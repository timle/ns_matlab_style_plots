%% first plot
%data
    conf = [];
    %mkInvExpData_helper generates some nice looking data
    d{1} = mkInvExpData_helper(20,60,100);
    d{2} = mkInvExpData_helper(30,50,100);
    d{3} = mkInvExpData_helper(40,10,100);
    d{4} = mkInvExpData_helper(50,10,90);
    d{5} = mkInvExpData_helper(50,10,80);
    
    conf.xdat = d;
%settings
    conf.line_plot_colors = {'30a2da';'fc4f30';'e5ae38';'6d904f';'8b8b8b'};
    conf.line_labels = {'U.S.','Russia','Brazil','China','India'};
    
    conf.axis_color = [0.94 0.94 0.94];

    conf.grid_draw_lim_y = [-5; 105];
    conf.grid_draw_lim_x = [-5; 105];

    conf.plot_margin_prcnt_x = [.1; 0];
    conf.plot_margin_prcnt_y = [.1; .15];

    conf.xtick = 0:10:100;
    conf.ytick = 0:10:100;

    conf.xticklabel = 0:10:100;
    conf.yticklabel = 0:10:100;

    conf.xticklabel_suffix{1} = 'th';
    conf.yticklabel_suffix{11} = 'th';

    conf.line_label_xpos_lim = [10,70];

    conf.plot_lineWidth = 2.5;

    conf.xrefline = 48;
    conf.xrefline_parameters = {':k','linewidth',3};

    conf.xlabel = 'Country income percentile';
    conf.xlabel_parameters = {'color',[.3 .3 .3],'FontName','tahoma'};
    conf.ylabel  = 'Other metric of note';
    conf.ylabel_parameters = {'color',[.3 .3 .3],'FontName','tahoma'};

    conf.title = 'How the thing does the thing to the other thing';
    conf.title_parameters = {'color',[.3 .3 .3],'FontName','tahoma','fontsize',14};
    conf.biline = 'Bi-line problematic if main title >1 line';
    conf.biline_parameters = {'color',[.3 .3 .3],'FontName','tahoma','fontsize',12};


    conf.footer_Color = [.3 .3 .3];
    conf.footer_icon = 'C:\Users\lab\Desktop\Untitled-1.png';
    conf.footer_txt_left = 'timle';
    conf.footer_txt_right = 'source: rand(), a computer, planet earth';

    conf.footer_parameters = {'FontName','tahoma','FontSize',10,'Color','white'};
    conf.footerHeight = 0.04;
%do it
    ns17_plotter(conf)
    
    
%% second plot
conf = [];
%data
    dat = 1:55;
    jitter = randi(10,[1 numel(dat)]) - 5;
    line2 = dat + jitter;
     
    conf.xdat = {line2};
    conf.ydat = {1965:2019};

%settings
    conf.line_plot_colors = {'e5ae38'};
    conf.line_labels = {''};
    
    conf.axis_color = [0.94 0.94 0.94];

    conf.grid_draw_lim_y = [0; 55];
    conf.grid_draw_lim_x = [1965; 2014];

    conf.plot_margin_prcnt_x = [.035; 0];
    conf.plot_margin_prcnt_y = [.05; .11];

    conf.xtick = 1970:5:2010;
    conf.ytick = 0:10:50;

    conf.xticklabel = {'1970','''75','''80','''85','''90','''95','''2000','''05','10'};
    conf.yticklabel = 0:10:50;

    conf.xticklabel_suffix = {};
    conf.yticklabel_suffix = {};
 
    conf.line_label_xpos_lim = [10,70];

    conf.plot_lineWidth = 2.5;

    conf.xrefline = [];
    conf.xrefline_parameters = {':k','linewidth',3};

    conf.xlabel = '';
    conf.xlabel_parameters = {'color',[.3 .3 .3],'FontName','tahoma'};
    conf.ylabel  = '';
    conf.ylabel_parameters = {'color',[.3 .3 .3],'FontName','tahoma'};

    conf.title = 'How the thing does the thing to the other thing';
    conf.title_parameters = {'color',[.3 .3 .3],'FontName','tahoma','fontsize',14};
    conf.biline = 'Bi-line problematic if main title >1 line';
    conf.biline_parameters = {'color',[.3 .3 .3],'FontName','tahoma','fontsize',12};


    conf.footer_Color = [.3 .3 .3];
    conf.footer_icon = 'C:\Users\lab\Desktop\Untitled-1.png';
    conf.footer_txt_left = 'timle';
    conf.footer_txt_right = 'source: rand(), a computer, planet earth';

    conf.footer_txt_left = 'timle';
    conf.footer_txt_right = 'source: rand(), a computer, planet earth';
    conf.footer_parameters = {'FontName','tahoma','FontSize',10,'Color','white'};
    conf.footerHeight = 0.04;

%do it
    ns17_plotter(conf)