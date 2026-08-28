package j9;

import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.util.List;

/* compiled from: BatchedLogRequest.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class j {
    public static j a(List<m> list) {
        return new d(list);
    }

    public static DataEncoder b() {
        return new JsonDataEncoderBuilder().configureWith(b.f8932a).ignoreNullValues(true).build();
    }

    public abstract List<m> c();
}
