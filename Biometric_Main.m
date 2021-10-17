function varargout = Biometric_Main(varargin)
% BIOMETRIC_MAIN MATLAB code for Biometric_Main.fig
%      BIOMETRIC_MAIN, by itself, creates a new BIOMETRIC_MAIN or raises the existing
%      singleton*.
%
%      H = BIOMETRIC_MAIN returns the handle to a new BIOMETRIC_MAIN or the handle to
%      the existing singleton*.
%
%      BIOMETRIC_MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BIOMETRIC_MAIN.M with the given input arguments.
%
%      BIOMETRIC_MAIN('Property','Value',...) creates a new BIOMETRIC_MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Biometric_Main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Biometric_Main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Biometric_Main

% Last Modified by GUIDE v2.5 06-May-2017 19:02:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Biometric_Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Biometric_Main_OutputFcn, ...
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


% --- Executes just before Biometric_Main is made visible.
function Biometric_Main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Biometric_Main (see VARARGIN)

% Choose default command line output for Biometric_Main
handles.output = hObject;
setappdata(handles.figure1,'filename','');
setappdata(handles.figure1,'matched_image',0);
setappdata(handles.figure1,'features',0);
setappdata(handles.figure1,'faceDatabase',0);
setappdata(handles.figure1,'person',0);
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes Biometric_Main wait for user response (see UIRESUME)
% uiwait(handles.figure1);






% --- Outputs from this function are returned to the command line.
function varargout = Biometric_Main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function matchedStudentName_Callback(hObject, eventdata, handles)
% hObject    handle to matchedStudentName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matchedStudentName as text
%        str2double(get(hObject,'String')) returns contents of matchedStudentName as a double


% --- Executes during object creation, after setting all properties.
function matchedStudentName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matchedStudentName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function matchedStudentID_Callback(hObject, eventdata, handles)
% hObject    handle to matchedStudentID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matchedStudentID as text
%        str2double(get(hObject,'String')) returns contents of matchedStudentID as a double


% --- Executes during object creation, after setting all properties.
function matchedStudentID_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matchedStudentID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function databaseLocationText_Callback(hObject, eventdata, handles)
% hObject    handle to databaseLocationText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of databaseLocationText as text
%        str2double(get(hObject,'String')) returns contents of databaseLocationText as a double


% --- Executes during object creation, after setting all properties.
function databaseLocationText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to databaseLocationText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in databaseFileBrowser.
function databaseFileBrowser_Callback(hObject, eventdata, handles)
% hObject    handle to databaseFileBrowser (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in startMatching.
function startMatching_Callback(hObject, eventdata, handles)
% hObject    handle to startMatching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% plot(1,2), subimage(matched_img), title('Matched image')
sprintf('Face recognition going on')
faceDatabase = getappdata(handles.figure1, 'faceDatabase');
%[training,test] = partition(faceDatabase,[0.8 0.2])
training=faceDatabase;
person = 1;
[hogFeature, visualization]= ...
    extractHOGFeatures(read(training(person),1));
    %extractHOGFeatures(read(training(person),1));

%trainingFeatures = zeros(size(training,2)*training(1).Count,4680);
trainingFeatures = zeros(size(training,2)*training(1).Count,4680);
trainingLabel=[];
featureCount = 1;

for i=1:size(training,2)
    for j = 1:training(i).Count        
        trainingFeatures(featureCount,:) = extractHOGFeatures(read(training(i),j));
        trainingLabel{featureCount} = training(i).Description;    
        featureCount = featureCount + 1;
    end
    personIndex{i} = training(i).Description;
end

faceClassifier = fitcecoc(trainingFeatures,trainingLabel);
%person = getappdata(handles.figure1, 'person');
global takenImage;
person=takenImage;
axes(handles.axes2);
test=takenImage;
test = imresize(test,[92,112]);
%queryImage = read(test,1);
queryFeatures = extractHOGFeatures(test);
personLabel = predict(faceClassifier,queryFeatures);
% Map back to training set to find identity 
booleanIndex = strcmp(personLabel, personIndex);
integerIndex=0;
integerIndex = find(booleanIndex); %finding the matched index. This index identifies the right student
faceFound=0;
if integerIndex==0
    faceFound=0;
    set(handles.matchFound, 'String', 'No Face data found');    
else
    faceFound=1;
    set(handles.matchFound, 'String', 'Face data found');
end
%%
axes(handles.axes3)
if faceFound==1
    sprintf('Face found. Fingerprint recognition going on')
    load('db.mat');
    m = matfile('rnkNo.mat','Writable',false);
    %% EXTRACT FEATURES FROM AN ARBITRARY FINGERPRINT
    filename = getappdata(handles.figure1,'filename'); %input image data for fingerprint 
    ffnew = getappdata(handles.figure1,'features');
    %% FOR EACH FINGERPRINT TEMPLATE, CALCULATE MATCHING SCORE IN COMPARISION WITH FIRST ONE
    S=zeros(m.x,1);
    x = 0.75; %matching score
    matched_img=filename;
    fPrintMatched=0;    
    for i=1:m.x
         second=strcat('10', num2str(fix((i-1)/8)+1), '_', num2str(mod(i-1,8)+1),'.tif'); % match file one by one. PLease change it according to your data
%        second=strcat('database\Student fingerprint\stdFingerPrint',num2str(i),'.tif'); % match file one by one. PLease change it according to your data

%         if filename == second
%             i = i+1;
%             continue;
%         end
        %fprintf(['Computing similarity between ' filename ' and ' second ' from FVC2002 : ']);
        S(i)=match(ffnew,ff{i});
        if S(i) > x
            matched_img = imread(second);
            temp = S(i);
            if temp > x
                matched_img = imread(second);                
                x = temp;
            end
        end
        fprintf([num2str(S(i)) '\n']);
        drawnow
    end   
    if isempty(matched_img)
        set(handles.matchFound, 'String', 'No fingerprint matched');
    else
        set(handles.matchFound, 'String', 'All match found');
        fPrintMatched=1;
        axes(handles.axes4);
        imshow(matched_img)
        axes(handles.axes2);
        imshow(read(training(integerIndex),1))
    end
end
global conn;
if fPrintMatched==1
    stdPh=strcat('stdPhoto',integerIndex);
    imshow(read(training(integerIndex),1));
    sqlquery = sprintf('SELECT id,name,attendance FROM student_info WHERE serial=%d',integerIndex);
    curs = exec(conn,sqlquery);
    curs = fetch(curs);
    curs.Data(1)
    curs.Data(2)
    curs.Data(3)
    set(handles.matchedStudentName, 'String', curs.Data(2));
    set(handles.matchedStudentID, 'String', curs.Data(1));
    attCn=cell2mat(curs.Data(3))+1;% attendance of the student will be updated
    set(handles.attendanceCount, 'String', attCn);
    update(conn,'student_info',{'attendance'},attCn,sprintf('WHERE serial=%d',integerIndex));%updating attendance for the student
end


% --- Executes on button press in analysisReport.
function analysisReport_Callback(hObject, eventdata, handles)
% hObject    handle to analysisReport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exitButton.
function exitButton_Callback(hObject, eventdata, handles)
% hObject    handle to exitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;



function mysqlUsername_Callback(hObject, eventdata, handles)
% hObject    handle to mysqlUsername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mysqlUsername as text
%        str2double(get(hObject,'String')) returns contents of mysqlUsername as a double


% --- Executes during object creation, after setting all properties.
function mysqlUsername_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mysqlUsername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mysqlPassword_Callback(hObject, eventdata, handles)
% hObject    handle to mysqlPassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mysqlPassword as text
%        str2double(get(hObject,'String')) returns contents of mysqlPassword as a double


% --- Executes during object creation, after setting all properties.
function mysqlPassword_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mysqlPassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in databaseConnect.
function databaseConnect_Callback(hObject, eventdata, handles)
% hObject    handle to databaseConnect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dbname = 'attendance_login';
username = get(handles.mysqlUsername, 'String');
password = get(handles.mysqlPassword, 'String');
%driver = 'mysql-connector-java-5.1.41\mysql-connector-java-5.1.41\mysql-connector-java-5.1.41-bin.jar';
driver = 'com.mysql.jdbc.Driver';
dburl = ['jdbc:mysql://localhost:3306/' dbname];
javaclasspath('mysql-connector-java-5.1.42\mysql-connector-java-5.1.41\mysql-connector-java-5.1.42-bin.jar');
global conn;
conn = database(dbname, username, password, driver, dburl);
set(handles.dbConnectShow, 'String', 'Connected');


% --- Executes on mouse press over axes background.
function axes3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% BUILD FINGERPRINT TEMPLATE DATABASE
% build_db(9,8);        %THIS WILL TAKE ABOUT 30 MINUTES



% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on mouse press over axes background.
function axes4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes4


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3


% --- Executes during object deletion, before destroying properties.
function axes4_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on startMatching and none of its controls.
function startMatching_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to startMatching (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



    

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on mouse press over axes background.
function axes2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on exitButton and none of its controls.
function exitButton_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to exitButton (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
close all;


% --- Executes on button press in fingerprintButton.
function fingerprintButton_Callback(hObject, eventdata, handles)
% hObject    handle to fingerprintButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%filename='104_1.tif';
axes(handles.axes3);
filename = uigetfile()
img = imread(filename);
imshow(img)
if ndims(img) == 3; img = rgb2gray(img); end  % Color Images
disp(['Extracting features from ' filename ' ...']);
ffnew = ext_finger(img,1);
setappdata(handles.figure1,'filename',filename);
setappdata(handles.figure1,'features',ffnew);
%% 

% --- Executes on button press in takeLaptopPhoto.
function takeLaptopPhoto_Callback(hObject, eventdata, handles)
% hObject    handle to takeLaptopPhoto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

faceDatabase = imageSet('database\Student photo','recursive');
% personToQuery = 6;
% galleryImage = read(faceDatabase(personToQuery),1);
% imshow(galleryImage);
global takenImage;
setappdata(handles.figure1,'faceDatabase',faceDatabase);
if get(handles.cameraChecker, 'Value')==1
    axes(handles.axes1);
    global vid;
    vid = videoinput('winvideo', 1, get(handles.cameraCodeEdit, 'String'));
    vid.FramesPerTrigger = 1;
    hImage=image(zeros(480,480,3),'Parent',handles.axes1);
    preview(vid,hImage);
    start(vid);
    vid.ReturnedColorSpace = 'rgb';
    studentPhoto=getdata(vid);
    takenImage=studentPhoto;
    takenImage=rgb2gray(takenImage);
    imshow(takenImage);    
    %setappdata(handles.axes1,'person',personToQuery);
elseif get(handles.fileChecker, 'Value')==1
    [filename, pathname] = uigetfile({'*.*';'*.png';'*.tif';'*.jpg';'*.pgm'},'File Selector');
    takenImage=imread(strcat(pathname,filename));
    if ndims(takenImage)>2
        takenImage=rgb2gray(takenImage);
    end
    axes(handles.axes1);
    imshow(takenImage);
end

function cameraCodeEdit_Callback(hObject, eventdata, handles)
% hObject    handle to cameraCodeEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cameraCodeEdit as text
%        str2double(get(hObject,'String')) returns contents of cameraCodeEdit as a double


% --- Executes during object creation, after setting all properties.
function cameraCodeEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cameraCodeEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in selectPicture.
function selectPicture_Callback(hObject, eventdata, handles)
% hObject    handle to selectPicture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function attendanceCount_Callback(hObject, eventdata, handles)
% hObject    handle to attendanceCount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of attendanceCount as text
%        str2double(get(hObject,'String')) returns contents of attendanceCount as a double


% --- Executes during object creation, after setting all properties.
function attendanceCount_CreateFcn(hObject, eventdata, handles)
% hObject    handle to attendanceCount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
