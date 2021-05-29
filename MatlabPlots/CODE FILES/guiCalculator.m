function varargout = guiCalculator(varargin)
% GUICALCULATOR MATLAB code for guiCalculator.fig
%      GUICALCULATOR, by itself, creates a new GUICALCULATOR or raises the existing
%      singleton*.
%
%      H = GUICALCULATOR returns the handle to a new GUICALCULATOR or the handle to
%      the existing singleton*.
%
%      GUICALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUICALCULATOR.M with the given input arguments.
%
%      GUICALCULATOR('Property','Value',...) creates a new GUICALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiCalculator

% Last Modified by GUIDE v2.5 24-May-2021 19:20:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @guiCalculator_OutputFcn, ...
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


% --- Executes just before guiCalculator is made visible.
function guiCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiCalculator (see VARARGIN)

% Choose default command line output for guiCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiCalculator wait for user response (see UIRESUME)
% uiwait(handles.Calculator);


% --- Outputs from this function are returned to the command line.
function varargout = guiCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Onebutton.
function Onebutton_Callback(hObject, eventdata, handles)
% hObject    handle to Onebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'1'));


% --- Executes on button press in Twobutton.
function Twobutton_Callback(hObject, eventdata, handles)
% hObject    handle to Twobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
set(handles.output_screen,'string',strcat(temp,'2'));


% --- Executes on button press in Threebutton.
function Threebutton_Callback(hObject, eventdata, handles)
% hObject    handle to Threebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
set(handles.output_screen,'string',strcat(temp,'3'));
 
% --- Executes on button press in Dotbutton.
function Dotbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Dotbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   temp=get(handles.output_screen,'string');
   contain=contains(temp,'.');
   if contain==0 %prevent from multiples dots
      set(handles.output_screen,'string',strcat(temp,'.'));
   end

% --- Executes on button press in Fourbutton.
function Fourbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Fourbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'4'));

% --- Executes on button press in Fivebutton.
function Fivebutton_Callback(hObject, eventdata, handles)
% hObject    handle to Fivebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'5'));

% --- Executes on button press in Sixbutton.
function Sixbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Sixbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'6'));

% --- Executes on button press in Zerobutton.
function Zerobutton_Callback(hObject, eventdata, handles)
% hObject    handle to Zerobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'0'));

% --- Executes on button press in Sevenbutton.
function Sevenbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Sevenbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'7'));

% --- Executes on button press in Eightbutton.
function Eightbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Eightbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'8'));
 
% --- Executes on button press in Ninebutton.
function Ninebutton_Callback(hObject, eventdata, handles)
% hObject    handle to Ninebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.output_screen,'string');
 set(handles.output_screen,'string',strcat(temp,'9'));

% --- Executes on button press in Clearbutton.
function Clearbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Clearbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global dot_clicked
dot_clicked=0;
set(handles.output_screen,'string','');

% --- Executes on button press in Plusbutton.
function Plusbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Plusbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global firstOperand operation
firstOperand=str2num(get(handles.output_screen,'string'));
operation='+';
set(handles.output_screen,'string','');


% --- Executes on button press in Minusbutton.
function Minusbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Minusbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global firstOperand operation
firstOperand=str2num(get(handles.output_screen,'string'));
operation='-';
set(handles.output_screen,'string','');


% --- Executes on button press in Multiplybutton.
function Multiplybutton_Callback(hObject, eventdata, handles)
% hObject    handle to Multiplybutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global firstOperand operation
firstOperand=str2num(get(handles.output_screen,'string'));
operation='*';
set(handles.output_screen,'string','');


% --- Executes on button press in Dividebutton.
function Dividebutton_Callback(hObject, eventdata, handles)
% hObject    handle to Dividebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global firstOperand operation
firstOperand=str2num(get(handles.output_screen,'string'));
operation='/';
set(handles.output_screen,'string','');


% --- Executes on button press in Equalbutton.
function Equalbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Equalbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global firstOperand operation
if operation=='+'
    sum=firstOperand+ str2num(get(handles.output_screen,'string'));
    set(handles.output_screen,'string',sum);
    firstOperand=0;
    operation='';
elseif operation=='-'
    sub=firstOperand-str2num(get(handles.output_screen,'string'));
    set(handles.output_screen,'string',sub);
    firstOperand=0;
    operation='';
elseif operation=='*'
    mul=firstOperand * str2num(get(handles.output_screen,'string'));
    set(handles.output_screen,'string',mul);
    firstOperand=0;
    operation='';
elseif operation=='/'
    div=firstOperand/str2num(get(handles.output_screen,'string'));
    set(handles.output_screen,'string',div);
    firstOperand=0;
    operation='';
else
    set(handles.output_screen,'string','');
    
end

% --- Executes during object creation, after setting all properties.
function output_screen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to output_screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in xsquareButton.
function xsquareButton_Callback(hObject, eventdata, handles)
% hObject    handle to xsquareButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number=str2num(get(handles.output_screen,'string'));
number=number^2;
number=num2str(number);
set(handles.output_screen,'string',number);


% --- Executes on button press in oneoverxButton.
function oneoverxButton_Callback(hObject, eventdata, handles)
% hObject    handle to oneoverxButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number=str2num(get(handles.output_screen,'string'));
number=1/number;
number=num2str(number);
set(handles.output_screen,'string',number);

