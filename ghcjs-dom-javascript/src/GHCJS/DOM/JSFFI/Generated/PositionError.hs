{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PositionError
       (pattern PERMISSION_DENIED, pattern POSITION_UNAVAILABLE,
        pattern TIMEOUT, js_getCode, getCode, js_getMessage, getMessage,
        PositionError(..), gTypePositionError)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHC.JS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
pattern PERMISSION_DENIED = 1
pattern POSITION_UNAVAILABLE = 2
pattern TIMEOUT = 3
 
foreign import javascript unsafe "(($1) => { return $1[\"code\"]; })" js_getCode ::
        PositionError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.code Mozilla PositionError.code documentation> 
getCode :: (MonadIO m) => PositionError -> m Word
getCode self = liftIO (js_getCode self)
 
foreign import javascript unsafe "(($1) => { return $1[\"message\"]; })" js_getMessage ::
        PositionError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.message Mozilla PositionError.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => PositionError -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))