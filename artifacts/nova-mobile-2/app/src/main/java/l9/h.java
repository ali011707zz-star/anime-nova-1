package l9;

import android.content.Context;
import com.google.auto.value.AutoValue;

/* compiled from: CreationContext.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class h {
    public static h a(Context context, t9.a aVar, t9.a aVar2, String str) {
        return new c(context, aVar, aVar2, str);
    }

    public abstract Context b();

    public abstract String c();

    public abstract t9.a d();

    public abstract t9.a e();
}
