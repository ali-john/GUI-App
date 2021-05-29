function varargout = simpleUI(varargin)
% SIMPLEUI MATLAB code for simpleUI.fig
%      SIMPLEUI, by itself, creates a new SIMPLEUI or raises the existing
%      singleton*.
%
%      H = SIMPLEUI returns the handle to a new SIMPLEUI or the handle to
%      the existing singleton*.
%
%      SIMPLEUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLEUI.M with the given input arguments.
%
%      SIMPLEUI('Property','Value',...) creates a new SIMPLEUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simpleUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simpleUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simpleUI

% Last Modified by GUIDE v2.5 29-May-2021 01:17:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simpleUI_OpeningFcn, ...
                   'gui_OutputFcn',  @simpleUI_OutputFcn, ...
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


% --- Executes just before simpleUI is made visible.
function simpleUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simpleUI (see VARARGIN)

% Choose default command line output for simpleUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simpleUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%adding black image to background
A=axes('unit','normalized','position',[0 0 1 1]);
image=imread('background.jpg');
imagesc(image);
set(A,'handlevisibility','off','visible','off')


% --- Outputs from this function are returned to the command line.
function varargout = simpleUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in calculator.
function calculator_Callback(hObject, eventdata, handles)
% hObject    handle to calculator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guiCalculator
set(handles.figure1,'Visible','off');

% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plotgraphs
set(handles.figure1,'Visible','off');


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(simpleUI);
