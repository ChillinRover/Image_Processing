function varargout = guiCompare(varargin)
% GUICOMPARE MATLAB code for guiCompare.fig
%      GUICOMPARE, by itself, creates a new GUICOMPARE or raises the existing
%      singleton*.
%
%      H = GUICOMPARE returns the handle to a new GUICOMPARE or the handle to
%      the existing singleton*.
%
%      GUICOMPARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUICOMPARE.M with the given input arguments.
%
%      GUICOMPARE('Property','Value',...) creates a new GUICOMPARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiCompare_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiCompare_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiCompare

% Last Modified by GUIDE v2.5 15-Jan-2017 04:01:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiCompare_OpeningFcn, ...
                   'gui_OutputFcn',  @guiCompare_OutputFcn, ...
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


% --- Executes just before guiCompare is made visible.
function guiCompare_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiCompare (see VARARGIN)

% Choose default command line output for guiCompare
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiCompare wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiCompare_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global FileName1 PathName1 FileName2 PathName2
img1 = imread([PathName1,FileName1]);
imshow(img1,'Parent',handles.axes1)
img2 = imread([PathName2,FileName2]);
imshow(img2,'Parent',handles.axes2)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(guiCompare)
Load()
