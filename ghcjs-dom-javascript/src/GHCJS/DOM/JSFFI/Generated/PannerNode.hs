{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PannerNode
       (js_setPosition, setPosition, js_setOrientation, setOrientation,
        js_setVelocity, setVelocity, js_setPanningModel, setPanningModel,
        js_getPanningModel, getPanningModel, js_setDistanceModel,
        setDistanceModel, js_getDistanceModel, getDistanceModel,
        js_setRefDistance, setRefDistance, js_getRefDistance,
        getRefDistance, js_setMaxDistance, setMaxDistance,
        js_getMaxDistance, getMaxDistance, js_setRolloffFactor,
        setRolloffFactor, js_getRolloffFactor, getRolloffFactor,
        js_setConeInnerAngle, setConeInnerAngle, js_getConeInnerAngle,
        getConeInnerAngle, js_setConeOuterAngle, setConeOuterAngle,
        js_getConeOuterAngle, getConeOuterAngle, js_setConeOuterGain,
        setConeOuterGain, js_getConeOuterGain, getConeOuterGain,
        PannerNode(..), gTypePannerNode)
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
 
foreign import javascript unsafe "(($1, $2, $3, $4) => { return $1[\"setPosition\"]($2, $3, $4); })"
        js_setPosition :: PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setPosition Mozilla webkitAudioPannerNode.setPosition documentation> 
setPosition ::
            (MonadIO m) => PannerNode -> Float -> Float -> Float -> m ()
setPosition self x y z = liftIO (js_setPosition self x y z)
 
foreign import javascript unsafe
        "(($1, $2, $3, $4) => { return $1[\"setOrientation\"]($2, $3, $4); })" js_setOrientation ::
        PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setOrientation Mozilla webkitAudioPannerNode.setOrientation documentation> 
setOrientation ::
               (MonadIO m) => PannerNode -> Float -> Float -> Float -> m ()
setOrientation self x y z = liftIO (js_setOrientation self x y z)
 
foreign import javascript unsafe "(($1, $2, $3, $4) => { return $1[\"setVelocity\"]($2, $3, $4); })"
        js_setVelocity :: PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setVelocity Mozilla webkitAudioPannerNode.setVelocity documentation> 
setVelocity ::
            (MonadIO m) => PannerNode -> Float -> Float -> Float -> m ()
setVelocity self x y z = liftIO (js_setVelocity self x y z)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"panningModel\"] = $2; })"
        js_setPanningModel :: PannerNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
setPanningModel ::
                (MonadIO m) => PannerNode -> PanningModelType -> m ()
setPanningModel self val
  = liftIO (js_setPanningModel self (pToJSVal val))
 
foreign import javascript unsafe "(($1) => { return $1[\"panningModel\"]; })"
        js_getPanningModel :: PannerNode -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
getPanningModel :: (MonadIO m) => PannerNode -> m PanningModelType
getPanningModel self
  = liftIO ((js_getPanningModel self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"distanceModel\"] = $2; })"
        js_setDistanceModel :: PannerNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
setDistanceModel ::
                 (MonadIO m) => PannerNode -> DistanceModelType -> m ()
setDistanceModel self val
  = liftIO (js_setDistanceModel self (pToJSVal val))
 
foreign import javascript unsafe "(($1) => { return $1[\"distanceModel\"]; })"
        js_getDistanceModel :: PannerNode -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
getDistanceModel ::
                 (MonadIO m) => PannerNode -> m DistanceModelType
getDistanceModel self
  = liftIO ((js_getDistanceModel self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"refDistance\"] = $2; })"
        js_setRefDistance :: PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
setRefDistance :: (MonadIO m) => PannerNode -> Double -> m ()
setRefDistance self val = liftIO (js_setRefDistance self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"refDistance\"]; })"
        js_getRefDistance :: PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
getRefDistance :: (MonadIO m) => PannerNode -> m Double
getRefDistance self = liftIO (js_getRefDistance self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"maxDistance\"] = $2; })"
        js_setMaxDistance :: PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
setMaxDistance :: (MonadIO m) => PannerNode -> Double -> m ()
setMaxDistance self val = liftIO (js_setMaxDistance self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"maxDistance\"]; })"
        js_getMaxDistance :: PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
getMaxDistance :: (MonadIO m) => PannerNode -> m Double
getMaxDistance self = liftIO (js_getMaxDistance self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"rolloffFactor\"] = $2; })"
        js_setRolloffFactor :: PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
setRolloffFactor :: (MonadIO m) => PannerNode -> Double -> m ()
setRolloffFactor self val = liftIO (js_setRolloffFactor self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"rolloffFactor\"]; })"
        js_getRolloffFactor :: PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
getRolloffFactor :: (MonadIO m) => PannerNode -> m Double
getRolloffFactor self = liftIO (js_getRolloffFactor self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"coneInnerAngle\"] = $2; })"
        js_setConeInnerAngle :: PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
setConeInnerAngle :: (MonadIO m) => PannerNode -> Double -> m ()
setConeInnerAngle self val = liftIO (js_setConeInnerAngle self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"coneInnerAngle\"]; })"
        js_getConeInnerAngle :: PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
getConeInnerAngle :: (MonadIO m) => PannerNode -> m Double
getConeInnerAngle self = liftIO (js_getConeInnerAngle self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"coneOuterAngle\"] = $2; })"
        js_setConeOuterAngle :: PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
setConeOuterAngle :: (MonadIO m) => PannerNode -> Double -> m ()
setConeOuterAngle self val = liftIO (js_setConeOuterAngle self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"coneOuterAngle\"]; })"
        js_getConeOuterAngle :: PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
getConeOuterAngle :: (MonadIO m) => PannerNode -> m Double
getConeOuterAngle self = liftIO (js_getConeOuterAngle self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"coneOuterGain\"] = $2; })"
        js_setConeOuterGain :: PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
setConeOuterGain :: (MonadIO m) => PannerNode -> Double -> m ()
setConeOuterGain self val = liftIO (js_setConeOuterGain self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"coneOuterGain\"]; })"
        js_getConeOuterGain :: PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
getConeOuterGain :: (MonadIO m) => PannerNode -> m Double
getConeOuterGain self = liftIO (js_getConeOuterGain self)