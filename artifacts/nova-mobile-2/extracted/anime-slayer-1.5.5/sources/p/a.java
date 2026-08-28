package p;

import android.os.Bundle;

/* compiled from: CustomTabColorSchemeParams.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f11971a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f11972b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f11973c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f11974d;

    /* compiled from: CustomTabColorSchemeParams.java */
    /* renamed from: p.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0296a {

        /* renamed from: a, reason: collision with root package name */
        public Integer f11975a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f11976b;

        /* renamed from: c, reason: collision with root package name */
        public Integer f11977c;

        /* renamed from: d, reason: collision with root package name */
        public Integer f11978d;

        public a a() {
            return new a(this.f11975a, this.f11976b, this.f11977c, this.f11978d);
        }

        public C0296a b(int i10) {
            this.f11975a = Integer.valueOf(i10 | (-16777216));
            return this;
        }
    }

    public a(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f11971a = num;
        this.f11972b = num2;
        this.f11973c = num3;
        this.f11974d = num4;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        Integer num = this.f11971a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f11972b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        Integer num3 = this.f11973c;
        if (num3 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num3.intValue());
        }
        Integer num4 = this.f11974d;
        if (num4 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", num4.intValue());
        }
        return bundle;
    }
}
