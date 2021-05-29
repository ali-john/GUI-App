function varargout = otherFunction(varargin)
% OTHERFUNCTION MATLAB code for otherFunction.fig
%      OTHERFUNCTION, by itself, creates a new OTHERFUNCTION or raises the existing
%      singleton*.
%
%      H = OTHERFUNCTION returns the handle to a new OTHERFUNCTION or the handle to
%      the existing singleton*.
%
%      OTHERFUNCTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OTHERFUNCTION.M with the given input arguments.
%
%      OTHERFUNCTION('Property','Value',...) creates a new OTHERFUNCTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before otherFunction_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to otherFunction_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help otherFunction

% Last Modified by GUIDE v2.5 29-May-2021 22:53:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @otherFunction_OpeningFcn, ...
                   'gui_OutputFcn',  @otherFunction_OutputFcn, ...
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


% --- Executes just before otherFunction is made visible.
function otherFunction_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to otherFunction (see VARARGIN)

% Choose default command line output for otherFunction
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes otherFunction wait for user response (see UIRESUME)
% uiwait(handles.figure1);
A=axes('unit','normalized','position',[0 0 1 1]);
image=imread('graphs2.jpg');
imagesc(image);
set(A,'handlevisibility','off','visible','off');

% --- Outputs from this function are returned to the command line.
function varargout = otherFunction_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plotbutton.
function plotbutton_Callback(hObject, eventdata, handles)
% hObject    handle to plotbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 expression=get(handles.input,'String');
if isempty(expression)
    f=errordlg('Enter function','No input','modal');
else 
    start=str2num(get(handles.startvalue_textbox,'String'));
    ending=str2num(get(handles.ending_textbox,'String'));
    x=start:0.01:ending;
    new_expression=expression(3:1:end);
    y=inline(new_expression,'x');
    axes(handles.axes1);
    try
    plot(x,y(x),'LineWidth',2,'color','m');
    xlabel('x axis','fontweight','bold','fontsize',16,'color','white');
    ylabel('y axis','fontweight','bold','fontsize',16,'color','white');
    title('Graph','fontweight','bold','fontsize',16,'color','white');
    set(handles.axes1,'Xcolor','white','Ycolor','white','XGrid','on','YGrid','on','GridColor','red');
    grid on;
    catch
         f=errordlg('Incorrect Function entered. If raising power use (.)','Incorrect Input','modal');
    end
end


function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of input as text
%str2double(get(hObject,'String')) returns contents of input as a double
global expression
expression=get(hObject,'String');
%set(hObject,'String','');


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(otherFunction);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plotgraphs
close(otherFunction);



function startvalue_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to startvalue_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startvalue_textbox as text
%        str2double(get(hObject,'String')) returns contents of startvalue_textbox as a double


% --- Executes during object creation, after setting all properties.
function startvalue_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startvalue_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ending_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to ending_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ending_textbox as text
%        str2double(get(hObject,'String')) returns contents of ending_textbox as a double


% --- Executes during object creation, after setting all properties.
function ending_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ending_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
