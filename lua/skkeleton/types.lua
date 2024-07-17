---@alias SkkeletonMode "hira"|"kana"|"hankata"|"zenkaku"|"abbrev"|""

---@alias SkkeletonPhase "input"|"input:okurinasi"|"input:okuriari"|"henkan"|"escape"|""

---@class SkkeletonState
---@field phase SkkeletonPhase

---@alias SkkeletonKanatableVal string|string[]|false
---@alias SkkeletonKanatable { [string]: SkkeletonKanatableVal }

---@alias SkkeletonFunction "kakutei"|"newline"|"cancel"|"disable"|"escape"|"henkanFirst"|"henkanForward"|"henkanBackward"|"purgeCandidate"|"henkanInput"|"kakuteiFeed"|"henkanPoint"|"deleteChar"|"katakana"|"hankatakana"|"zenkaku"|"abbrev"|"prefix"|"suffix"|""|false

---@class SkkeletonOption
---@field acceptIllegalResult? boolean
---@field completionRankFile? string
---@field databasePath? string
---@field debug? boolean
---@field eggLikeNewline? boolean
---@field globalDictionaries? (string|string[])[]
---@field globalKanaTableFiles? (string|string[])[]
---@field immediatelyCancel? boolean
---@field immediatelyDictionaryRW? boolean
---@field immediatelyOkuriConvert? boolean
---@field kanaTable? string
---@field keepMode? boolean
---@field keepState? boolean
---@field markerHenkan? string
---@field markerHenkanSelect? string
---@field registerConvertResult? boolean
---@field selectCandidateKeys? string
---@field setUndoPoint? boolean
---@field showCandidatesCount? integer
---@field skkServerHost? string
---@field skkServerPort? integer
---@field skkServerReqEnc? string
---@field skkServerResEnc? string
---@field sources? ("skk_dictionary"|"skk_server"|"deno_kv"|"google_japanese_input")[]
---@field usePopup? boolean
---@field useSkkServer? boolean
---@field userDictionary? string
