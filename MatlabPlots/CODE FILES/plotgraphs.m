function varargout = plotgraphs(varargin)
% PLOTGRAPHS MATLAB code for plotgraphs.fig
%      PLOTGRAPHS, by itself, creates a new PLOTGRAPHS or raises the existing
%      singleton*.
%
%      H = PLOTGRAPHS returns the handle to a new PLOTGRAPHS or the handle to
%      the existing singleton*.
%
%      PLOTGRAPHS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOTGRAPHS.M with the given input arguments.
%
%      PLOTGRAPHS('Property','Value',...) creates a new PLOTGRAPHS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plotgraphs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plotgraphs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plotgraphs

% Last Modified by GUIDE v2.5 29-May-2021 14:45:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plotgraphs_OpeningFcn, ...
                   'gui_OutputFcn',  @plotgraphs_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before plotgraphs is made visible.
function plotgraphs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plotgraphs (see VARARGIN)

% Choose default command line output for plotgraphs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plotgraphs wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%making background black
A=axes('unit','normalized','position',[0 0 1 1]);
image=imread('graphs1.jpg');
imagesc(image);
set(A,'handlevisibility','off','visible','off');
global time amplitude frequency functionSelected
time=0;
amplitude=1;
frequency=1;
functionSelected='Select ---';
% --- Outputs from this function are returned to the command line.
function varargout = plotgraphs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in other.
function other_Callback(hObject, eventdata, handles)
% hObject    handle to other (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
otherFunction
close(plotgraphs);


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(plotgraphs);


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
simpleUI
set(handles.figure1,'Visible','off');


% --- Executes on selection change in function_popup.


% --- Executes on selection change in select_popup.
function select_popup_Callback(hObject, eventdata, handles)
% hObject    handle to select_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select_popup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select_popup
global functionSelected
contents=cellstr(get(hObject,'String'));
functionSelected=contents(get(hObject,'Value'));



% --- Executes during object creation, after setting all properties.
function select_popup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in onekilohertz.
function onekilohertz_Callback(hObject, eventdata, handles)
% hObject    handle to onekilohertz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of onekilohertz
global frequency


% --- Executes on button press in fivekilohertz.
function fivekilohertz_Callback(hObject, eventdata, handles)
% hObject    handle to fivekilohertz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fivekilohertz


% --- Executes on button press in sevenkilohertz.
function sevenkilohertz_Callback(hObject, eventdata, handles)
% hObject    handle to sevenkilohertz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sevenkilohertz


% --- Executes on button press in onesecond.
function onesecond_Callback(hObject, eventdata, handles)
% hObject    handle to onesecond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of onesecond
global time
if get(hObject,'Value')==1
    time=1;
    handles.threeseconds.Value=0;
    handles.fivesecond.Value=0;
else
    time=0;
end
    
    
% --- Executes on button press in threeseconds.
function threeseconds_Callback(hObject, eventdata, handles)
% hObject    handle to threeseconds (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of threeseconds
global time
if get(hObject,'Value')==1
    time=3;
    handles.onesecond.Value=0;
    handles.fivesecond.Value=0;
else
    time=0;
end


% --- Executes on button press in fivesecond.
function fivesecond_Callback(hObject, eventdata, handles)
% hObject    handle to fivesecond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fivesecond
global time
if get(hObject,'Value')==1
    time=5;
    handles.onesecond.Value=0;
    handles.threeseconds.Value=0;
else
    time=0;
end


% --- Executes on button press in plotgraphsimple.
function plotgraphsimple_Callback(hObject, eventdata, handles)
% hObject    handle to plotgraphsimple (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global functionSelected frequency amplitude time
if strcmp(functionSelected,'Select ---')
    f=errordlg('Select function','Selection error','modal');
else if time==0
        f=errordlg('Select time','Selection error','modal');
else if strcmp(functionSelected,'sine')
        x=0:0.01:time;
        y=amplitude*sin(2*pi*frequency*x);
        axes(handles.plottingaxis);
        plot(x,y,'LineWidth',2,'color','m');
        xlabel('x axis','fontweight','bold','fontsize',16,'color','white');
        ylabel('y axis','fontweight','bold','fontsize',16,'color','white');
        title('Sine Curve','fontweight','bold','fontsize',16,'color','white');
       set(handles.plottingaxis,'Xcolor','white','Ycolor','white','XGrid','on','YGrid','on','GridColor','r');
else if strcmp(functionSelected,'cosine')
        x=0:0.01:time;
        y=amplitude*cos(2*pi*frequency*x);
        axes(handles.plottingaxis);
        plot(x,y,'LineWidth',2,'color','m');
        xlabel('x axis','fontweight','bold','fontsize',16,'color','white');
        ylabel('y axis','fontweight','bold','fontsize',16,'color','white');
        title('Cosine Curve','fontweight','bold','fontsize',16,'color','white');
       set(handles.plottingaxis,'Xcolor','white','Ycolor','white','XGrid','on','YGrid','on','GridColor','r');
else if strcmp(functionSelected,'tangent')
        x=0:0.01:time;
        y=amplitude*tan(2*pi*frequency*x);
        axes(handles.plottingaxis);
        plot(x,y,'LineWidth',2,'color','m');
        xlabel('x axis','fontweight','bold','fontsize',16,'color','white');
        ylabel('y axis','fontweight','bold','fontsize',16,'color','white');
        title('Tan Curve','fontweight','bold','fontsize',16,'color','white');
       set(handles.plottingaxis,'Xcolor','white','Ycolor','white','XGrid','on','YGrid','on','GridColor','r');
    end
    end
    end
    end
end
 

% --- Executes on button press in oneamplitude.
function oneamplitude_Callback(hObject, eventdata, handles)
% hObject    handle to oneamplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of oneamplitude


% --- Executes on button press in twoamplitude.
function twoamplitude_Callback(hObject, eventdata, handles)
% hObject    handle to twoamplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of twoamplitude



% --- Executes when selected object is changed in frequencybuttongroup.
function frequencybuttongroup_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in frequencybuttongroup 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global frequency
switch get(eventdata.NewValue,'Tag')
    case 'onekilohertz'
        frequency=1;
    case 'fivekilohertz'
        frequency=5;
    case 'sevenkilohertz'
        frequency=7;
end


% --- Executes when selected object is changed in amplitudebuttongroup.
function amplitudebuttongroup_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in amplitudebuttongroup 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global amplitude
switch get(eventdata.NewValue,'Tag')
    case 'oneamplitude'
        amplitude=1;
    case 'twoamplitude'
        amplitude=2;
end
