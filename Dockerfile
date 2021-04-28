FROM pytorch/pytorch

RUN apt-get update && apt-get install -y --no-install-recommends \
		git \
		vim \
		tmux \
		build-essential libglib2.0-0 libsm6 libxext6 libxrender-dev cmake \
		libsndfile1
		

RUN pip install torch===1.7.1+cu110 torchvision===0.8.2+cu110 torchaudio===0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip install numpy opencv-python numba==0.48 librosa scikit-learn \
				matplotlib jupyterlab rich python-Levenshtein pandas seaborn \
				flask gevent requests pillow
