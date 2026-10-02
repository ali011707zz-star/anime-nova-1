package ja;

import com.google.gson.JsonParseException;
import java.lang.reflect.Type;

/* compiled from: JsonDeserializer.java */
/* loaded from: classes.dex */
public interface k<T> {
    T deserialize(l lVar, Type type, j jVar) throws JsonParseException;
}
