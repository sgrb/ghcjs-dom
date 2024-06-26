{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SpeechSynthesis
       (js_speak, speak, js_cancel, cancel, js_pause, pause, js_resume,
        resume, js_getVoices, getVoices, getVoices_, js_getPending,
        getPending, js_getSpeaking, getSpeaking, js_getPaused, getPaused,
        SpeechSynthesis(..), gTypeSpeechSynthesis)
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
 
foreign import javascript unsafe "(($1, $2) => { return $1[\"speak\"]($2); })" js_speak ::
        SpeechSynthesis -> SpeechSynthesisUtterance -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speak Mozilla SpeechSynthesis.speak documentation> 
speak ::
      (MonadIO m) => SpeechSynthesis -> SpeechSynthesisUtterance -> m ()
speak self utterance = liftIO (js_speak self utterance)
 
foreign import javascript unsafe "(($1) => { return $1[\"cancel\"](); })" js_cancel ::
        SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.cancel Mozilla SpeechSynthesis.cancel documentation> 
cancel :: (MonadIO m) => SpeechSynthesis -> m ()
cancel self = liftIO (js_cancel self)
 
foreign import javascript unsafe "(($1) => { return $1[\"pause\"](); })" js_pause ::
        SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pause Mozilla SpeechSynthesis.pause documentation> 
pause :: (MonadIO m) => SpeechSynthesis -> m ()
pause self = liftIO (js_pause self)
 
foreign import javascript unsafe "(($1) => { return $1[\"resume\"](); })" js_resume ::
        SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.resume Mozilla SpeechSynthesis.resume documentation> 
resume :: (MonadIO m) => SpeechSynthesis -> m ()
resume self = liftIO (js_resume self)
 
foreign import javascript unsafe "(($1) => { return $1[\"getVoices\"](); })" js_getVoices
        :: SpeechSynthesis -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.getVoices Mozilla SpeechSynthesis.getVoices documentation> 
getVoices ::
          (MonadIO m) => SpeechSynthesis -> m [SpeechSynthesisVoice]
getVoices self
  = liftIO ((js_getVoices self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.getVoices Mozilla SpeechSynthesis.getVoices documentation> 
getVoices_ :: (MonadIO m) => SpeechSynthesis -> m ()
getVoices_ self = liftIO (void (js_getVoices self))
 
foreign import javascript unsafe "(($1) => { return ($1[\"pending\"] ? 1 : 0); })"
        js_getPending :: SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pending Mozilla SpeechSynthesis.pending documentation> 
getPending :: (MonadIO m) => SpeechSynthesis -> m Bool
getPending self = liftIO (js_getPending self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"speaking\"] ? 1 : 0); })"
        js_getSpeaking :: SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speaking Mozilla SpeechSynthesis.speaking documentation> 
getSpeaking :: (MonadIO m) => SpeechSynthesis -> m Bool
getSpeaking self = liftIO (js_getSpeaking self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"paused\"] ? 1 : 0); })"
        js_getPaused :: SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.paused Mozilla SpeechSynthesis.paused documentation> 
getPaused :: (MonadIO m) => SpeechSynthesis -> m Bool
getPaused self = liftIO (js_getPaused self)