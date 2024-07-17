local M = {}

---skkeletonを手動で初期化します。辞書のロードも行います。
function M.initialize()
    vim.fn["skkeleton#initialize"]()
end

---skkeletonが有効であるかどうかを返します。
---@return boolean
function M.is_enabled()
    return vim.fn["skkeleton#is_enabled"]()
end

---skkeletonにデフォルトでマッピングされているキーの一覧を返します。
---@return string[]
function M.get_default_mapped_keys()
    return vim.fn["skkeleton#get_default_mapped_keys"]()
end

---skkeletonに現在マッピングされているキーの一覧を返します。
---@return string[]
function M.get_mapped_keys()
    return vim.g["skkeleton#mapped_keys"]
end

---変数で与えたキーをskkeletonでマッピングに使用できるキーに追加します。
---@param key string
function M.add_key_for_map(key)
    vim.cmd(string.format("call add(g:skkeleton#mapped_keys,\"%s\")", key))
end

---skkeletonの現在のモードを返します。
---@return SkkeletonMode
function M.get_mode()
    return vim.fn["skkeleton#mode"]()
end

---前回のハンドリング実行時の状態を返します。
---@return SkkeletonState
function M.get_state()
    return vim.g["skkeleton#state"]
end

---辞書データベースを手動で更新します。
---@param dic_path string 更新する辞書のパスを指定します。
---@param encoding string 辞書のエンコードを指定します。空文字を指定するか無指定だと自動でエンコードを判別します。
---@param force boolean 辞書に更新がなくても強制的にデータベースを更新します。
---@overload fun(dic_path:string, encoding: string)
---@overload fun(dic_path:string)
function M.update_database(dic_path, encoding, force)
    vim.fn["skkeleton#update_database"](dic_path, encoding or "", force or false)
end

---かな変換テーブルを登録します。
---@param table_name string 登録するテーブルを指定します。
---@param table {[string]: SkkeletonKanatableVal} キー入力と仮名定義または |skkeleton-functions| にある機能名の対応を指定します。
---@param create boolean 有効にした場合、table_nameというテーブルを(存在しない場合は)作成します。
---@overload fun(table_name: string, table: SkkeletonKanatable)
function M.register_kanatable(table_name, table, create)
    vim.fn["skkeleton#register_kanatable"](table_name, table, create or false)
end

---ステート単位でキーマップを定義します。
---@param state
---|"input" #入力モード
---|"henkan" #変換モード
---@param key string
---@param func_name SkkeletonFunction
function M.register_keymap(state, key, func_name)
    vim.fn["skkeleton#register_keymap"](state, key, func_name)
end

---\|skkeleton-config|にて示されるキー(省略可能)からなる辞書型オブジェクトを渡すことでskkeletonの設定を変更できます。
---現状入力ソースの設定またはグローバル辞書の指定は必須です。
---@param opts SkkeletonOption
function M.config(opts)
    vim.fn["skkeleton#config"](opts)
end

---\|skkeleton-config|にて示されるキー(省略可能)からなる辞書型オブジェクトを渡すことでskkeletonの設定を変更できます。
---現状入力ソースの設定またはグローバル辞書の指定は必須です。
---@param opts SkkeletonOption
function M.setup(opts)
    vim.fn["skkeleton#config"](opts)
end

return M
