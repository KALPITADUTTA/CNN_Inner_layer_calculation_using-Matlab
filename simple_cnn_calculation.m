%The network layers are ::
%class Net(nn.Module):
%     def __init__(self):
%         super(Net, self).__init__()
%         self.conv1 = nn.Conv2d(3, 6, 5)
%         self.pool = nn.MaxPool2d(2, 2)
%         self.conv2 = nn.Conv2d(6, 16, 5)
%         self.fc1 = nn.Linear(16 * 5 * 5, 120)
%         self.fc2 = nn.Linear(120, 84)
%         self.fc3 = nn.Linear(84, 10)
% 
%     def forward(self, x):
%         x = self.pool(F.relu(self.conv1(x)))
%         x = self.pool(F.relu(self.conv2(x))) % no size change at relu
%         layer
%         x = x.view(-1, 16 * 5 * 5)
%         x = F.relu(self.fc1(x))
%         x = F.relu(self.fc2(x))
%         x = self.fc3(x)
%         return x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
This is for this net specially:::
If you give input image size height 32 and width 32 and rgb channel =3 
Then the output will be 5 * 5 * 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('If the image square size or image height and widht are same:: ')
H =input('Enter Image Height:: ');
W =input('Enter Image Width:: ');
C = input('Enter Image channel no::');
fprintf('The input image size is %d * %d * %d\n',H,W,C);
disp('After 1st conv1 layer of the input image:>>>>>>>>')
H = H - 4;
W = W - 4;
fprintf('The output image size after conv1 %d * %d * %d\n',H,W,C);
disp('After 1st pooling layer of the input image:(MaxPool2d)>>>>>>>>')
H = H/2;
W = W/2;
fprintf('The output image size after 1st pooling layer %d * %d * %d\n',H,W,C);
disp('After 2nd conv2 layer of the input image:>>>>>>>>')
H = H - 4; % 4 because kernel size 5 and minus (5-1)=4
W = W - 4;
fprintf('The output image size after conv2 %d * %d * %d\n',H,W,C);
disp('After 2nd pooling layer of the input image:(MaxPool2d)>>>>>>>>')
H = H/2;
W = W/2;
fprintf('The output image size after 2nd pooling layer %d * %d * %d\n',H,W,C);

