---@alias SkkeletonMode "hira"|"kana"|"hankata"|"zenkaku"|"abbrev"|""

---@alias SkkeletonPhase "input"|"input:okurinasi"|"input:okuriari"|"henkan"|"escape"|""

---@class SkkeletonState
---@field phase SkkeletonPhase

---@alias SkkeletonKanatableVal string|string[]|false
---@alias SkkeletonKanatable { [string]: SkkeletonKanatableVal }

---@alias SkkeletonFunction "kakutei"|"newline"|"cancel"|"disable"|"escape"|"henkanFirst"|"henkanForward"|"henkanBackward"|"purgeCandidate"|"henkanInput"|"kakuteiFeed"|"henkanPoint"|"deleteChar"|"katakana"|"hankatakana"|"zenkaku"|"abbrev"|"prefix"|"suffix"|""|false
