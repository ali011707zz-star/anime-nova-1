package ta;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import jc.g;
import jc.l;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: IFramePlayerOptions.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final b f14101b = new b(null);

    /* renamed from: c, reason: collision with root package name */
    public static final a f14102c = new C0352a().d(1).c();

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f14103a;

    /* compiled from: IFramePlayerOptions.kt */
    /* renamed from: ta.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0352a {

        /* renamed from: b, reason: collision with root package name */
        public static final C0353a f14104b = new C0353a(null);

        /* renamed from: a, reason: collision with root package name */
        public final JSONObject f14105a = new JSONObject();

        /* compiled from: IFramePlayerOptions.kt */
        /* renamed from: ta.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0353a {
            public C0353a() {
            }

            public /* synthetic */ C0353a(g gVar) {
                this();
            }
        }

        public C0352a() {
            a("autoplay", 0);
            a("controls", 0);
            a("enablejsapi", 1);
            a("fs", 0);
            b(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, "https://www.youtube.com");
            a("rel", 0);
            a("showinfo", 0);
            a("iv_load_policy", 3);
            a("modestbranding", 1);
            a("cc_load_policy", 0);
        }

        public final void a(String str, int i10) {
            try {
                this.f14105a.put(str, i10);
            } catch (JSONException unused) {
                throw new RuntimeException("Illegal JSON value " + str + ": " + i10);
            }
        }

        public final void b(String str, String str2) {
            try {
                this.f14105a.put(str, str2);
            } catch (JSONException unused) {
                throw new RuntimeException("Illegal JSON value " + str + ": " + str2);
            }
        }

        public final a c() {
            return new a(this.f14105a, null);
        }

        public final C0352a d(int i10) {
            a("controls", i10);
            return this;
        }
    }

    /* compiled from: IFramePlayerOptions.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(g gVar) {
            this();
        }

        public final a a() {
            return a.f14102c;
        }
    }

    public a(JSONObject jSONObject) {
        this.f14103a = jSONObject;
    }

    public /* synthetic */ a(JSONObject jSONObject, g gVar) {
        this(jSONObject);
    }

    public final String b() {
        String string = this.f14103a.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN);
        l.e(string, "playerOptions.getString(Builder.ORIGIN)");
        return string;
    }

    public String toString() {
        String jSONObject = this.f14103a.toString();
        l.e(jSONObject, "playerOptions.toString()");
        return jSONObject;
    }
}
