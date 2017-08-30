function [drawopt,p] = drawtrackresult(drawopt, fno, frame, sz, param_mat)

if (isempty(drawopt))       %%��ͼ����
  figure('position',[30 50 size(frame,2) size(frame,1)]); clf;                               
  set(gcf,'DoubleBuffer','on','MenuBar','none');
  colormap('gray');

  drawopt.curaxis = [];
  drawopt.curaxis.frm  = axes('position', [0.00 0 1.00 1.0]);
end

%%����ȫͼ
curaxis = drawopt.curaxis;
axes(curaxis.frm);      
imagesc(frame, [0,1]); 
hold on;     

%%����ͼ����ٿ�
p = drawbox(sz, param_mat, 'Color','r', 'LineWidth',2.5);

%%��ʾĿǰ���ٵ��ǵڼ�֡
text(10, 15, '#', 'Color','y', 'FontWeight','bold', 'FontSize',24);
text(30, 15, num2str(fno), 'Color','y', 'FontWeight','bold', 'FontSize',24);

axis equal tight off;
hold off;
drawnow;        %%  ������ͼ

