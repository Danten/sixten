{-# LANGUAGE OverloadedStrings #-}
module Builtin where

import qualified Data.HashMap.Lazy as HM

import Syntax
import Syntax.Abstract
import Util

int :: Type a v
int = Global "Int"

context :: Program (Expr Annotation) Annotation Empty
context = HM.fromList
  [ ("Int", opaque)
  ]
  where
    opaque = (DataDefinition $ DataDef mempty mempty, Type, Annotation Irrelevant Explicit)

