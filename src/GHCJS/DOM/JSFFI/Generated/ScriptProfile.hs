{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ScriptProfile
       (js_getTitle, getTitle, js_getUid, getUid, js_getRootNode,
        getRootNode, ScriptProfile, castToScriptProfile,
        gTypeScriptProfile)
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
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        JSRef ScriptProfile -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.title Mozilla ScriptProfile.title documentation> 
getTitle ::
         (MonadIO m, FromJSString result) => ScriptProfile -> m result
getTitle self
  = liftIO (fromJSString <$> (js_getTitle (unScriptProfile self)))
 
foreign import javascript unsafe "$1[\"uid\"]" js_getUid ::
        JSRef ScriptProfile -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.uid Mozilla ScriptProfile.uid documentation> 
getUid :: (MonadIO m) => ScriptProfile -> m Word
getUid self = liftIO (js_getUid (unScriptProfile self))
 
foreign import javascript unsafe "$1[\"rootNode\"]" js_getRootNode
        :: JSRef ScriptProfile -> IO (JSRef ScriptProfileNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
getRootNode ::
            (MonadIO m) => ScriptProfile -> m (Maybe ScriptProfileNode)
getRootNode self
  = liftIO ((js_getRootNode (unScriptProfile self)) >>= fromJSRef)