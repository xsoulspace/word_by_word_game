// Autogenerated from Pigeon (v4.2.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package dev.xsoulspace.yandex_ads_sdk;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class YandexAdEventHandlerInterface {

  public enum YandexAdEventNotifyType {
    ON_AD_LOADED(0),
    ON_AD_FAILED_TO_LOAD(1),
    ON_IMPRESSION(2),
    ON_AD_CLICKED(3),
    ON_LEFT_APPLICATION(4),
    ON_RETURNED_TO_APPLICATION(5);

    private int index;
    private YandexAdEventNotifyType(final int index) {
      this.index = index;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class YandexAdEventNotifyCall {
    private @NonNull YandexAdEventNotifyType type;
    public @NonNull YandexAdEventNotifyType getType() { return type; }
    public void setType(@NonNull YandexAdEventNotifyType setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"type\" is null.");
      }
      this.type = setterArg;
    }

    /**Constructor is private to enforce null safety; use Builder. */
    private YandexAdEventNotifyCall() {}
    public static final class Builder {
      private @Nullable YandexAdEventNotifyType type;
      public @NonNull Builder setType(@NonNull YandexAdEventNotifyType setterArg) {
        this.type = setterArg;
        return this;
      }
      public @NonNull YandexAdEventNotifyCall build() {
        YandexAdEventNotifyCall pigeonReturn = new YandexAdEventNotifyCall();
        pigeonReturn.setType(type);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("type", type == null ? null : type.index);
      return toMapResult;
    }
    static @NonNull YandexAdEventNotifyCall fromMap(@NonNull Map<String, Object> map) {
      YandexAdEventNotifyCall pigeonResult = new YandexAdEventNotifyCall();
      Object type = map.get("type");
      pigeonResult.setType(type == null ? null : YandexAdEventNotifyType.values()[(int)type]);
      return pigeonResult;
    }
  }
  private static class YandexAdEventHandlerCodec extends StandardMessageCodec {
    public static final YandexAdEventHandlerCodec INSTANCE = new YandexAdEventHandlerCodec();
    private YandexAdEventHandlerCodec() {}
    @Override
    protected Object readValueOfType(byte type, @NonNull ByteBuffer buffer) {
      switch (type) {
        case (byte)128:         
          return YandexAdEventNotifyCall.fromMap((Map<String, Object>) readValue(buffer));
        
        default:        
          return super.readValueOfType(type, buffer);
        
      }
    }
    @Override
    protected void writeValue(@NonNull ByteArrayOutputStream stream, Object value)     {
      if (value instanceof YandexAdEventNotifyCall) {
        stream.write(128);
        writeValue(stream, ((YandexAdEventNotifyCall) value).toMap());
      } else 
{
        super.writeValue(stream, value);
      }
    }
  }

  /**
   * Event Handler for java only implmentation and strong type conversion
   *
   * Generated interface from Pigeon that represents a handler of messages from Flutter.
   */
  public interface YandexAdEventHandler {
    void notifyListeners(@NonNull YandexAdEventNotifyCall notifyCall);

    /** The codec used by YandexAdEventHandler. */
    static MessageCodec<Object> getCodec() {
      return       YandexAdEventHandlerCodec.INSTANCE;    }
    /**Sets up an instance of `YandexAdEventHandler` to handle messages through the `binaryMessenger`. */
    static void setup(BinaryMessenger binaryMessenger, YandexAdEventHandler api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.YandexAdEventHandler.notifyListeners", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              assert args != null;
              YandexAdEventNotifyCall notifyCallArg = (YandexAdEventNotifyCall)args.get(0);
              if (notifyCallArg == null) {
                throw new NullPointerException("notifyCallArg unexpectedly null.");
              }
              api.notifyListeners(notifyCallArg);
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  @NonNull private static Map<String, Object> wrapError(@NonNull Throwable exception) {
    Map<String, Object> errorMap = new HashMap<>();
    errorMap.put("message", exception.toString());
    errorMap.put("code", exception.getClass().getSimpleName());
    errorMap.put("details", "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorMap;
  }
}
