-- source provider function
local diagnostic = require('galaxyline.provider_diagnostic')
local vcs = require('galaxyline.provider_vcs')
local fileinfo = require('galaxyline.provider_fileinfo')
local extension = require('galaxyline.provider_extensions')
local colors = require('galaxyline.colors')
local buffer = require('galaxyline.provider_buffer')
local whitespace = require('galaxyline.provider_whitespace')
local lspclient = require('galaxyline.provider_lsp')

-- provider
BufferIcon  = buffer.get_buffer_type_icon
BufferNumber = buffer.get_buffer_number
FileTypeName = buffer.get_buffer_filetype
-- Git Provider
GitBranch = vcs.get_git_branch
DiffAdd = vcs.diff_add            -- support vim-gitgutter vim-signify gitsigns
DiffModified = vcs.diff_modified  -- support vim-gitgutter vim-signify gitsigns
DiffRemove = vcs.diff_remove      -- support vim-gitgutter vim-signify gitsigns
-- File Provider
LineColumn = fileinfo.line_column
FileFormat = fileinfo.get_file_format
FileEncode = fileinfo.get_file_encode
FileSize = fileinfo.get_file_size
FileIcon = fileinfo.get_file_icon
FileName = fileinfo.get_current_file_name
FilePath = fileinfo.get_current_file_path
LinePercent = fileinfo.current_line_percent
ScrollBar = extension.scrollbar_instance
VistaPlugin = extension.vista_nearest
-- Whitespace
Whitespace = whitespace.get_item
-- Diagnostic Provider
DiagnosticError = diagnostic.get_diagnostic_error
DiagnosticWarn = diagnostic.get_diagnostic_warn
DiagnosticHint = diagnostic.get_diagnostic_hint
DiagnosticInfo = diagnostic.get_diagnostic_info
-- LSP
GetLspClient = lspclient.get_lsp_client
-- built-in theme
local colors = require('galaxyline.theme').default

local left = require('galaxyline').section.left
left[1] = {
    DiffAdd = {
        provider = 'FileName'
    },
}
