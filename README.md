这是一个用于 [小红书ASR/FireRedASR](https://github.com/FireRedTeam/FireRedASR) 的webUI及API项目，api兼容openai格式


FireRedASR 是一个高度精确的中文语音转文字项目。

## WebUI

![](./static/ui0.png)


## 源码安装 Linux/MacOS

> 确保已安装 python3.10 、ffmpeg 
> 


进入某个目录下，打开终端

1. 拉取源码，执行命令 `git clone https://github.com/jianchang512/fireredasr-ui.git`
2. 进入源码目录 `cd FireRedASR`
3. 创建虚拟环境：`python3 -m venv venv` 
4. 激活该环境：`. venv/bin/activate`
5. 安装依赖:`pip3 install -r requirements.txt`
6. 点击从 [huggingface](https://huggingface.co/FireRedTeam/FireRedASR-AED-L/tree/main)  下载模型，将页面中的几个文件下载后放入 `/pretrained_models/FireRedASR-AED-L`文件夹内

## Windows预打包版

win10/11 提供了预打包版。[点击下载](https://github.com/jianchang512/fireredasr-ui/releases) 解压后双击 `启动.bat` 即可

## API 地址:

默认地址: http://127.0.0.1:5078/v1


**OpenAI SDK中使用**

```
from openai import OpenAI
client = OpenAI(api_key='123456',
    base_url='http://127.0.0.1:5078/v1')

audio_file = open("5.wav", "rb")
transcript = client.audio.transcriptions.create(
  model="whisper-1",
  file=audio_file,
  response_format="json",
  timeout=86400
)

print(transcript.text)


```

## 在 pyVideoTrans 中使用

如下图在 `OpenAI语音识别及兼容API`中填写，然后在语音识别渠道中选择`OpenAI语音识别`

![](./static/ui.png)


## Acknowledgements
- [小红书ASR/FireRedASR](https://github.com/FireRedTeam/FireRedASR) 