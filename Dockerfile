# 使用 Ubuntu 作為基底映像
FROM ubuntu:latest

# 更新系統並安裝 C++ 編譯器和 Vim
RUN apt update && apt install -y g++ vim

# 複製 C++ 源文件到容器
COPY t.cpp /t.cpp

# 預設 C++ 檔 & 編譯
RUN g++ t.cpp -o t


# 啟動時執行程式並進入互動 Shell
CMD ["bash", "-c", "./t; exec bash"]