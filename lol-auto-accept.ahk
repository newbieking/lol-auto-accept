; ToolTip default coordmode: Relative
;CoordMode ToolTip, Screen
; Pixel default coordmode: Screen
;CoordMode Pixel 
; Mouse default coordmode: Screen
;CoordMode Mouse 
;

Info(){
  msg := "Release v0.0.1 2023/3/10`nAutomatically accept LOL Games.`n`tCreated by newbieking."
  MsgBox , , Enjoy yourself!, %msg%
}


argc = %0%
if (argc >= 1) 
{
  argv = %1%
  if (argv = "version"){
    Info()
    ExitApp , 0
  }
}

Info()

#Include <FindText>


Text.="|<>*99$45.xzzzzzzz7lz007zsU0k00y7003007kU00sEly00CDX4DkssXk00S7000003ks00000SC3Xy003l000E00S8003U0TtsU0z73zD44Ts0zzsk7zUDy770Ts0zkU00E00DA0C00s1zX7wlzsTw"


while (true)
{
  ; found_text -> 
  ; [1:左上角X, 2:左上角Y, 3:图像宽度W, 4:图像高度H, x:中心点X, y:中心点Y, id:图像识别文本]
  found_text_array := FindText(X:="wait", Y:=-1, 0,0,0,0,0,0,Text) 
  if (found_text_array.Length() >= 1){
    FindTextClass.Click(found_text_array[1].x, found_text_array[1].y, "L")
    MouseMove 200, 200
    
  }
}


ExitApp 0
