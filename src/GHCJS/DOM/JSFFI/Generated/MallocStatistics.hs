{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MallocStatistics
       (js_getReservedVMBytes, getReservedVMBytes, js_getCommittedVMBytes,
        getCommittedVMBytes, js_getFreeListBytes, getFreeListBytes,
        MallocStatistics, castToMallocStatistics, gTypeMallocStatistics)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"reservedVMBytes\"]"
        js_getReservedVMBytes :: JSRef MallocStatistics -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.reservedVMBytes Mozilla MallocStatistics.reservedVMBytes documentation> 
getReservedVMBytes :: (MonadIO m) => MallocStatistics -> m Word
getReservedVMBytes self
  = liftIO (js_getReservedVMBytes (unMallocStatistics self))
 
foreign import javascript unsafe "$1[\"committedVMBytes\"]"
        js_getCommittedVMBytes :: JSRef MallocStatistics -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.committedVMBytes Mozilla MallocStatistics.committedVMBytes documentation> 
getCommittedVMBytes :: (MonadIO m) => MallocStatistics -> m Word
getCommittedVMBytes self
  = liftIO (js_getCommittedVMBytes (unMallocStatistics self))
 
foreign import javascript unsafe "$1[\"freeListBytes\"]"
        js_getFreeListBytes :: JSRef MallocStatistics -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.freeListBytes Mozilla MallocStatistics.freeListBytes documentation> 
getFreeListBytes :: (MonadIO m) => MallocStatistics -> m Word
getFreeListBytes self
  = liftIO (js_getFreeListBytes (unMallocStatistics self))