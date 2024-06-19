# ベースイメージの指定
FROM node:20

# アプリケーションディレクトリを作成
WORKDIR /work

# アプリケーションの依存関係をインストール
# package.json と package-lock.json をコピー
COPY package*.json ./

RUN npm install

# アプリケーションのソースをバンドルする
COPY . .

# アプリケーションがリッスンするポートを指定
EXPOSE 3000
