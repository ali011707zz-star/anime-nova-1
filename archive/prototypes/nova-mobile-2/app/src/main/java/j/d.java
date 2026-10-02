package j;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;

/* compiled from: ContextThemeWrapper.java */
/* loaded from: classes.dex */
public class d extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public int f7989a;

    /* renamed from: b, reason: collision with root package name */
    public Resources.Theme f7990b;

    /* renamed from: c, reason: collision with root package name */
    public LayoutInflater f7991c;

    /* renamed from: d, reason: collision with root package name */
    public Configuration f7992d;

    /* renamed from: e, reason: collision with root package name */
    public Resources f7993e;

    public d() {
        super(null);
    }

    public void a(Configuration configuration) {
        if (this.f7993e == null) {
            if (this.f7992d == null) {
                this.f7992d = new Configuration(configuration);
                return;
            }
            throw new IllegalStateException("Override configuration has already been set");
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final Resources b() {
        if (this.f7993e == null) {
            Configuration configuration = this.f7992d;
            if (configuration == null) {
                this.f7993e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f7993e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f7992d);
                this.f7993e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f7993e;
    }

    public int c() {
        return this.f7989a;
    }

    public final void d() {
        boolean z10 = this.f7990b == null;
        if (z10) {
            this.f7990b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f7990b.setTo(theme);
            }
        }
        e(this.f7990b, this.f7989a, z10);
    }

    public void e(Resources.Theme theme, int i10, boolean z10) {
        theme.applyStyle(i10, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f7991c == null) {
                this.f7991c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f7991c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f7990b;
        if (theme != null) {
            return theme;
        }
        if (this.f7989a == 0) {
            this.f7989a = d.i.f5323f;
        }
        d();
        return this.f7990b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        if (this.f7989a != i10) {
            this.f7989a = i10;
            d();
        }
    }

    public d(Context context, int i10) {
        super(context);
        this.f7989a = i10;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f7990b = theme;
    }
}
