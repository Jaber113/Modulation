function varargout = ModDemod(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ModDemod_OpeningFcn, ...
                   'gui_OutputFcn',  @ModDemod_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function ModDemod_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);


function varargout = ModDemod_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function menu1_Callback(hObject, eventdata, handles)

function menu1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input1_Callback(hObject, eventdata, handles)

function input1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input3_Callback(hObject, eventdata, handles)

function input3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function input2_Callback(hObject, eventdata, handles)

function input2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)
p=get(handles.menu1,'value');
q=get(handles.menu2,'value');
fm=str2double(get(handles.input1,'string'));
fc=str2double(get(handles.input2,'string'));
fs=str2double(get(handles.input3,'string'));
D=str2num(get(handles.input4,'string'));
fm2=str2double(get(handles.input5,'string'));
t=0:0.01:10;
switch(p)
    %   AM   %
    case(1)
        switch(q)
            case(1)
               hold off;
                x=sin(2*pi*fm*t);
                 plot(t,x);
                 axis([0,10,-2,2]);
                 grid on;
                title('Message Signal');
                 xlabel('Time(sec)');
                 ylabel('Amplitude(Watts)');
          
            case(2)
                hold off;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('carrier Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
    
            case(3)
                hold off;
                x=sin(2*pi*fm*t)
                y=modulate(x,fc,fs,'am')
                plot(t,y)
                axis([0,10,-2,2])
                grid on
    title('Modulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(4)
                hold off;
                x=sin(2*pi*fm*t)
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('demodulated Signal')
 xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
        end
         %   FM   %
     case(2)
         switch(q)
            case(1)
                hold off;
                x=sin(2*pi*fm*t)
                 plot(t,x)
                 axis([0,10,-2,2])
                 grid on
    title('Message Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(2)
                hold off;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('carrier Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(3)
                hold off;
                x=sin(2*pi*fm*t)
                y=modulate(x,fc,fs,'fm')
                plot(t,y)
                axis([0,10,-2,2])
                grid on
    title('Modulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(4)
                hold off;
                x=sin(2*pi*fm*t)
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('Demodulated Signal')
    xlabel('Time(sec)');;
    ylabel('Amplitude(Watts)')
         end
        
         %   PM   %
    case(3)
       switch(q)
            case(1)
                hold off;
                x=sin(2*pi*fm*t)
                 plot(t,x)
                 axis([0,10,-2,2])
                 grid on
    title('Message Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(2)
                hold off;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('Carrier Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(3)
                hold off;
                x=sin(2*pi*fm*t)
                y=modulate(x,fc,fs,'pm')
                plot(t,y)
                axis([0,10,-2,2])
                grid on
    title('Modulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(4)
                hold off;
                x=sin(2*pi*fm*t)
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('Demodulated Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
       end
       
      %   AM-SSB   %
       case(4)
        switch(q)
            case(1)
                hold off;
                x=sin(2*pi*fm*t)
                 plot(t,x)
                 axis([0,10,-2,2])
                 grid on
    title('Message Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(2)
                hold off;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('carrier Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(3)
                hold off;
                x=sin(2*pi*fm*t)
                y=modulate(x,fc,fs,'amssb')
                plot(t,y)
                axis([0,10,-2,2])
                grid on
    title('Modulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(4)
                hold off;
                x=sin(2*pi*fm*t)
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('demodulated Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
        end
        
     %   AMSSB-SC   %
     case(5)
         switch(q)
            case(1)
                hold off;
                x=sin(2*pi*fm*t)
                 plot(t,x)
                 axis([0,10,-2,2])
                 grid on
    title('Message Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(2)
                hold off;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('carrier Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(3)
                hold off;
                x=sin(2*pi*fm*t)
                y=modulate(x,fc,fs,'amdsb-sc')
                plot(t,y)
                axis([0,10,-2,2])
                grid on
    title('Modulated Signal')
  xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(4)
                hold off;
                x=sin(2*pi*fm*t)
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('Demodulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
         end
        
          %   AMSSB-TC   %
    case(6)
       switch(q)
            case(1)
                hold off;
                x=sin(2*pi*fm*t)
                 plot(t,x)
                 axis([0,10,-2,2])
                 grid on
    title('Message Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(2)
                hold off;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('Carrier Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(3)
                hold off;
                x=sin(2*pi*fm*t)
                y=modulate(x,fc,fs,'amdsb-tc')
                plot(t,y)
                axis([0,10,-2,2])
                grid on
    title('Modulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(4)
                hold off;
                x=sin(2*pi*fm*t)
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('Demodulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
       end
       
       %   QAM   %
    case(7)
       switch(q)
            case(1)
                hold off;
                x=sin(2*pi*fm*t)
                 plot(t,x)
                 axis([0,10,-2,2])
                 grid on
    title('Message Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(2)
                hold off;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('Carrier Signal')
  xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(3)
                hold off;
                x=sin(2*pi*fm*t)
                m2=sin(2*pi*fm2*t)
                c1=x.*sin(2*pi*fc*t)
                c2=m2.*sin(2*pi*fc*t+1.5709)
                m3=c1+c2
                plot(t,m3)
                axis([0,10,-2,2])
                grid on
    title('Modulated Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(4)
                hold off;
                x=sin(2*pi*fm*t)
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('Demodulated Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
    
           case(9)
               hold off;
               x=sin(2*pi*fm2*t);
                 plot(t,x);
                 axis([0,10,-2,2]);
                 grid on;
    title('Message Signal(optional)');
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)');
               
       end
       
        %   PCM   %
    case(8)
       switch(q)
            case(1)
                hold off;
                x=sin(2*pi*fm*t)
                 plot(t,x)
                 axis([0,10,-2,2])
                 grid on
    title('Message Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(5)
                hold off;
                x=sin(2*pi*fm*t);
                x1=x+1;
                plot(t,x1)
                axis([0,10,-2,2])
                grid on
    title('Sampling Signal')
   xlabel('Time(sec)');;
    ylabel('Amplitude(Watts)')
           case(6)
               hold off;
                x=sin(2*pi*fm*t);
                x1=x+1;
                q_op=round(x1);
                plot(t,q_op)
                axis([0,10,-2,2])
                grid on
    title('Quantization Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
            case(7)
                hold off;
                x=sin(2*pi*fm*t);
                x1=x+1;
                q_op=round(x1);
                enco=de2bi(q_op,'left-msb');
                plot(t,x)
                axis([0,10,-2,2])
                grid on
    title('Encoded Signal')
  xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
           case(8)
               hold off;
                x=sin(2*pi*fm*t);
                x1=x+1;
                q_op=round(x1);
                enco=de2bi(q_op,'left-msb');
                deco=bi2de(enco,'left-msb');
                xr=deco-1;
                plot(t,xr)
                axis([0,10,-2,2])
                grid on
    title('Reconstructed Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
       end
       
     %   ASK   %
             case(9)
       switch(q)
            case(1)
                hold off;

bp=1;                                                    
bit=[]; 
for n=1:1:length(D)
    if D(n)==1;
       se=ones(1,100);
    else D(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end
    t=bp/100:bp/100:100*length(D)*(bp/100);
    
    
    plot(t,bit);grid on;
    axis([0,length(D),-2,2])
    title('Message Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
           case(2)
               hold off;
               fc;
     c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('Carrier Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
           case(3)
               hold off;
            
D;

knx=length(D)

i=1;
while i<knx+1
     t = i:0.001:i+1;
    if D(i)==1
     ask=sin(2*pi*fc*t);
      
    else
        ask=0;
      
    end
    
   plot(t,ask,'blue');
    hold on;
     axis([1,knx+1,-2,2])
    grid on;
   
 title('Amplitude Shift Keying')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
    i=i+1;
end


  case(4)
      hold off;
bp=1;                                              
bit=[]; 
for n=1:1:length(D)
    if D(n)==1;
       se=ones(1,100);
    else D(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end
    t=bp/100:bp/100:100*length(D)*(bp/100);
    
    
    plot(t,bit);grid on;
    axis([0,length(D),-2,2])
    title('Demodulated Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
       end
       
    %   PSK  %

               case(11)
       switch(q)
            case(1)
                hold off;
bp=1;                                                    
bit=[]; 
for n=1:1:length(D)
    if D(n)==1;
       se=ones(1,100);
    else D(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end
    t=bp/100:bp/100:100*length(D)*(bp/100);
    
    
    plot(t,bit);grid on;
    axis([0,length(D),-2,2])
    title('Message Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
           case(2)
               hold off;
               fc;
     c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('Carrier Signal')
  xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
           case(3)
               hold off;
            
D;

knx=length(D)

i=1;
while i<knx+1
     t = i:0.001:i+1;
    if D(i)==1
     
       psk=sin(2*pi*fc*t);
    else
        
        psk=sin(2*pi*fc*t+pi);
    end
    
   plot(t,psk,'blue');
    hold on;
     axis([1,knx+1,-2,2])
    grid on;
   
 title('Phase Shift Keying');
xlabel('Time(sec)');
    ylabel('Amplitude(Watts)');

    i=i+1;
end

  case(4)
      hold off;
bp=1;                                                  
bit=[]; 
for n=1:1:length(D)
    if D(n)==1;
       se=ones(1,100);
    else D(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end
    t=bp/100:bp/100:100*length(D)*(bp/100);
    
    
    plot(t,bit);grid on;
    axis([0,length(D),-2,2])
    title('Demodulated Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
       end
      
  %   FSK  %
        case(10)
       switch(q)
            case(1)
                hold off;
                              

bp=1;                                                    
bit=[]; 
for n=1:1:length(D)
    if D(n)==1;
       se=ones(1,100);
    else D(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end
    t=bp/100:bp/100:100*length(D)*(bp/100);
    
    
    plot(t,bit);grid on;
    axis([0,length(D),-2,2])
    title('Message Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
           
           case(2)
               hold off;
               fc;
                c=sin(2*pi*fc*t)
                plot(t,c)
                axis([0,10,-2,2])
                grid on
    title('Carrier Signal')
   xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
           case(3)
               hold off;
            
D;

knx=length(D)

i=1;
while i<knx+1
     t = i:0.001:i+1;
    if D(i)==1
     fsk=sin(2*pi*2*fc*t); 
    else
        fsk=sin(2*pi*fc*t);
    end
    
   plot(t,fsk,'blue');
    hold on;
     axis([1,knx+1,-2,2])
    grid on;  
 title('Frequency Shift Keying');
xlabel('Time(sec)');
    ylabel('Amplitude(Watts)');

    i=i+1;
end
  case(4)
      hold off;
bp=1;                                     
bit=[]; 
for n=1:1:length(D)
    if D(n)==1;
       se=ones(1,100);
    else D(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end
    t=bp/100:bp/100:100*length(D)*(bp/100);
    
    
    plot(t,bit);grid on;
    axis([0,length(D),-2,2])
    title('Demodulated Signal')
    xlabel('Time(sec)');
    ylabel('Amplitude(Watts)')
       end
      
end

function menu2_Callback(hObject, eventdata, handles)

function menu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input4_Callback(hObject, eventdata, handles)

function input4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input5_Callback(hObject, eventdata, handles)

function input5_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
