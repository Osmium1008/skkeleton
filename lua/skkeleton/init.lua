local M = {}

function M.initialize()
    vim.fn["skkeleton#initialize"]()
end

---@return boolean
function M.is_enabled()
    return vim.fn["skkeleton#is_enabled"]()
end

---@return string[]
function M.get_default_mapped_keys()
    return vim.fn["skkeleton#get_default_mapped_keys"]()
end

---@return string[]
function M.get_mapped_keys()
    return vim.g["skkeleton#mapped_keys"]
end

---@param key string
function M.add_key_for_map(key)
    vim.cmd(string.format('call add(g:skkeleton#mapped_keys,"%s")',key))
end

---@return SkkeletonMode
function M.get_mode()
    return vim.fn["skkeleton#mode"]()
end

---@return SkkeletonState
function M.get_state()
    return vim.g["skkeleton#state"]
end

---@param dic_path string
---@param encoding string
---@param force boolean
---@overload fun(dic_path:string, encoding: string)
---@overload fun(dic_path:string)
function M.update_database(dic_path,encoding,force)
    vim.fn["skkeleton#update_database"](dic_path, encoding or "", force or false)
end

---@param table_name string
---@param table SkkeletonKanatable
---@param create boolean
---@overload fun(table_name: string, table: SkkeletonKanatable)
function M.register_kanatable(table_name, table, create)
    vim.fn["skkeleton#register_kanatable"](table_name, table, create or false)
end

---@param state "input"|"henkan"
---@param key string
---@param func_name SkkeletonFunction
function M.register_keymap(state, key, func_name)
    vim.fn["skkeleton#register_keymap"](state, key, func_name)
end

function M.setup(opts)
    vim.fn["skkeleton#config"](opts)
end

return M

