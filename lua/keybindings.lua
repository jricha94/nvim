--Keybindings

local M = {}
local opts = {noremap = true, silent = true}

local o = vim.o
local g = vim.g

-- Set Leader Key
g.mapleader = ' '

-- Map helper function
local function map(mode, 
