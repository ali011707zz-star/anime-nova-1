package la;

import com.google.gson.stream.JsonReader;
import java.io.IOException;

/* compiled from: JsonReaderInternalAccess.java */
/* loaded from: classes.dex */
public abstract class e {
    public static e INSTANCE;

    public abstract void promoteNameToValue(JsonReader jsonReader) throws IOException;
}
