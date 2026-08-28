package j1;

import android.app.Application;
import android.content.Context;

/* compiled from: MultiDexApplication.java */
/* loaded from: classes.dex */
public class b extends Application {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a.k(this);
    }
}
