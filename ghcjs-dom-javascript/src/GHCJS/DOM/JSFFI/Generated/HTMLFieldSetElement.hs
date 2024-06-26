{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLFieldSetElement
       (js_checkValidity, checkValidity, checkValidity_,
        js_reportValidity, reportValidity, reportValidity_,
        js_setCustomValidity, setCustomValidity, js_setDisabled,
        setDisabled, js_getDisabled, getDisabled, js_getForm, getForm,
        js_setName, setName, js_getName, getName, js_getType, getType,
        js_getElements, getElements, js_getWillValidate, getWillValidate,
        js_getValidity, getValidity, js_getValidationMessage,
        getValidationMessage, HTMLFieldSetElement(..),
        gTypeHTMLFieldSetElement)
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
 
foreign import javascript unsafe
        "(($1) => { return ($1[\"checkValidity\"]() ? 1 : 0); })" js_checkValidity ::
        HTMLFieldSetElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.checkValidity Mozilla HTMLFieldSetElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLFieldSetElement -> m Bool
checkValidity self = liftIO (js_checkValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.checkValidity Mozilla HTMLFieldSetElement.checkValidity documentation> 
checkValidity_ :: (MonadIO m) => HTMLFieldSetElement -> m ()
checkValidity_ self = liftIO (void (js_checkValidity self))
 
foreign import javascript unsafe
        "(($1) => { return ($1[\"reportValidity\"]() ? 1 : 0); })" js_reportValidity ::
        HTMLFieldSetElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.reportValidity Mozilla HTMLFieldSetElement.reportValidity documentation> 
reportValidity :: (MonadIO m) => HTMLFieldSetElement -> m Bool
reportValidity self = liftIO (js_reportValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.reportValidity Mozilla HTMLFieldSetElement.reportValidity documentation> 
reportValidity_ :: (MonadIO m) => HTMLFieldSetElement -> m ()
reportValidity_ self = liftIO (void (js_reportValidity self))
 
foreign import javascript unsafe "(($1, $2) => { return $1[\"setCustomValidity\"]($2); })"
        js_setCustomValidity :: HTMLFieldSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.setCustomValidity Mozilla HTMLFieldSetElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLFieldSetElement -> error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity self (toJSString error))
 
foreign import javascript unsafe "(($1, $2) => { $1[\"disabled\"] = $2; })"
        js_setDisabled :: HTMLFieldSetElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.disabled Mozilla HTMLFieldSetElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLFieldSetElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled self val)
 
foreign import javascript unsafe "(($1) => { return ($1[\"disabled\"] ? 1 : 0); })"
        js_getDisabled :: HTMLFieldSetElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.disabled Mozilla HTMLFieldSetElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLFieldSetElement -> m Bool
getDisabled self = liftIO (js_getDisabled self)
 
foreign import javascript unsafe "(($1) => { return $1[\"form\"]; })" js_getForm ::
        HTMLFieldSetElement -> IO HTMLFormElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.form Mozilla HTMLFieldSetElement.form documentation> 
getForm :: (MonadIO m) => HTMLFieldSetElement -> m HTMLFormElement
getForm self = liftIO (js_getForm self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"name\"] = $2; })" js_setName ::
        HTMLFieldSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.name Mozilla HTMLFieldSetElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLFieldSetElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"name\"]; })" js_getName ::
        HTMLFieldSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.name Mozilla HTMLFieldSetElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLFieldSetElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "(($1) => { return $1[\"type\"]; })" js_getType ::
        HTMLFieldSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.type Mozilla HTMLFieldSetElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLFieldSetElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "(($1) => { return $1[\"elements\"]; })" js_getElements
        :: HTMLFieldSetElement -> IO HTMLFormControlsCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.elements Mozilla HTMLFieldSetElement.elements documentation> 
getElements ::
            (MonadIO m) => HTMLFieldSetElement -> m HTMLFormControlsCollection
getElements self = liftIO (js_getElements self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"willValidate\"] ? 1 : 0); })"
        js_getWillValidate :: HTMLFieldSetElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.willValidate Mozilla HTMLFieldSetElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLFieldSetElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate self)
 
foreign import javascript unsafe "(($1) => { return $1[\"validity\"]; })" js_getValidity
        :: HTMLFieldSetElement -> IO ValidityState

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.validity Mozilla HTMLFieldSetElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLFieldSetElement -> m ValidityState
getValidity self = liftIO (js_getValidity self)
 
foreign import javascript unsafe "(($1) => { return $1[\"validationMessage\"]; })"
        js_getValidationMessage :: HTMLFieldSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.validationMessage Mozilla HTMLFieldSetElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLFieldSetElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage self))