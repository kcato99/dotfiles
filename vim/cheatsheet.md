# Cheat Sheet

## nvim

### display
- `<ESC><ESC>` : 検索ハイライト消去

### move(normal mode)
- `h` : 左移動
- `j` : 下移動
- `k` : 上移動
- `l` : 右移動
- `<Left>` : 左移動
- `<Down>` : 下移動
- `<Up>` : 上移動
- `<Right>` : 右移動
- `<Space><Space>` : 次のbufferへ移動
- `<BS><BS>` : 前のbufferへ移動
- `gb` : 最後に編集した位置に移動
- `gp` : 最後に編集した位置に移動
- `(` : 対応する括弧に移動
- `)` : 対応する括弧に移動
- `<C-h>` : 左ウィンドウ移動
- `<C-j>` : 下ウィンドウ移動
- `<C-k>` : 上ウィンドウ移動
- `<C-l>` : 右ウィンドウ移動
<!-- - `gd` : コード定義ジャンプ(by coc/vim-lsp) -->
<!-- - `gy` : コードタイプ定義ジャンプ(by coc/vim-lsp) -->
<!-- - `gi` : コード実装ジャンプ(by coc/vim-lsp) -->
<!-- - `gr` : コード参照ジャンプ(by coc/vim-lsp) -->
<!-- - `K` : 定義表示 -->
- `<Leader>rn` : 一括置換
- `gd` lsp-definition
- `gr` lsp-references
- `gi` lsp-implementation
- `gt` lsp-type-definition
- `K` lsp-hover
- `<Leader>rn` lsp-rename

### edit(normal mode)
- `y9` : 行末までyank
- `yd` : 行末までyank
- `y0` : 行頭までyank
- `yk` : 行頭までyank
- `d0` : 行頭まで削除
- `vy` : カーソル位置の単語をyank

### exact
- `<C-p>` : ctrlp 起動(buffer検索)

### move(insert mode)
- `<C-e>` : 行末まで移動
- `<C-a>` : 行頭まで移動
- `<END>` : 行末まで移動
- `<HOME>` : 行頭まで移動
- `<C-h>` : 左移動
- `<C-j>` : 下移動
- `<C-k>` : 上移動
- `<C-l>` : 右移動
- `jj` : normal modeに戻る

### move(visual mode)
- `v` : 行末まで選択

### quickfix window
- `cw` : 表示toggle

### format
- `<Leader>j` : jsonをformat
```json
{"key": "value", "items": [{"key1": "val1"}, {"key2": "val2"}]}

{
    "items": [
        {
            "key1": "val1"
        },
        {
            "key2": "val2"
        }
    ],
    "key": "value"
}
```

## edit(insert mode)
- `,` : コンマの後にスペース挿入
- `,df` : 日時挿入 2020-11-21 21:16:35
- `,dd` : 日挿入 2020/11/21
- `,dt` : 時間挿入 21:17:11
- `<C-d>e` : 行頭まで削除
- `<C-d>0` : 行末まで削除
- `<C-y>e` : 行頭までyank
- `<C-y>0` : 行末までyank

#### visual

