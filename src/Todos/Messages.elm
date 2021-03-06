module Todos.Messages exposing (..)

import Http

import Todos.Models exposing (Todo, TodoEditView)


-- messages relevant to todos
-- more thorough explanations can be
-- found in the Todos.Update module
type Msg =
    -- "no operation"
    NoOp

    -- http task success/fail messages
    -- (type variables with the response's return data)
    | Fail Http.Error
    | FetchAllDone (List Todo)
    | CreateDone Todo
    | PatchDone Todo
    | DeleteDone Todo

    -- these are relevant to the Todos.Edit view
    | ShowEditView TodoEditView
    | ChangeTitle String
    | CreateOrPatch

    -- these are relevant to the Toos.List view
    -- also, these trigger http commands
    | Complete Todo
    | Revert Todo
    | Patch Todo
    | Delete Todo
    | DeleteCompleted
