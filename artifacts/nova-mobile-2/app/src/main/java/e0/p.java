package e0;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TaskStackBuilder.java */
/* loaded from: classes.dex */
public final class p implements Iterable<Intent> {

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList<Intent> f5925f = new ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    public final Context f5926g;

    /* compiled from: TaskStackBuilder.java */
    /* loaded from: classes.dex */
    public interface a {
        Intent getSupportParentActivityIntent();
    }

    public p(Context context) {
        this.f5926g = context;
    }

    public static p d(Context context) {
        return new p(context);
    }

    public p a(Intent intent) {
        this.f5925f.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p b(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof a ? ((a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = h.a(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f5926g.getPackageManager());
            }
            c(component);
            a(supportParentActivityIntent);
        }
        return this;
    }

    public p c(ComponentName componentName) {
        int size = this.f5925f.size();
        try {
            Intent b10 = h.b(this.f5926g, componentName);
            while (b10 != null) {
                this.f5925f.add(size, b10);
                b10 = h.b(this.f5926g, b10.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public void e() {
        f(null);
    }

    public void f(Bundle bundle) {
        if (!this.f5925f.isEmpty()) {
            ArrayList<Intent> arrayList = this.f5925f;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (f0.a.m(this.f5926g, intentArr, bundle)) {
                return;
            }
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f5926g.startActivity(intent);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f5925f.iterator();
    }
}
