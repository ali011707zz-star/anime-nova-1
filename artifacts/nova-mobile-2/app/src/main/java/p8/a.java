package p8;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import ic.l;
import java.io.File;
import jc.g;
import vb.p;

/* compiled from: ImagePicker.kt */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final b f12093a = new b(null);

    /* compiled from: ImagePicker.kt */
    /* renamed from: p8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0298a {

        /* renamed from: a, reason: collision with root package name */
        public Fragment f12094a;

        /* renamed from: b, reason: collision with root package name */
        public q8.a f12095b;

        /* renamed from: c, reason: collision with root package name */
        public String[] f12096c;

        /* renamed from: d, reason: collision with root package name */
        public float f12097d;

        /* renamed from: e, reason: collision with root package name */
        public float f12098e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f12099f;

        /* renamed from: g, reason: collision with root package name */
        public int f12100g;

        /* renamed from: h, reason: collision with root package name */
        public int f12101h;

        /* renamed from: i, reason: collision with root package name */
        public long f12102i;

        /* renamed from: j, reason: collision with root package name */
        public l<? super q8.a, p> f12103j;

        /* renamed from: k, reason: collision with root package name */
        public r8.a f12104k;

        /* renamed from: l, reason: collision with root package name */
        public String f12105l;

        /* renamed from: m, reason: collision with root package name */
        public final Activity f12106m;

        /* compiled from: ImagePicker.kt */
        /* renamed from: p8.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0299a implements r8.b<q8.a> {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ int f12108b;

            public C0299a(int i10) {
                this.f12108b = i10;
            }

            @Override // r8.b
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public void a(q8.a aVar) {
                if (aVar != null) {
                    C0298a.this.f12095b = aVar;
                    l lVar = C0298a.this.f12103j;
                    if (lVar != null) {
                    }
                    C0298a.this.n(this.f12108b);
                }
            }
        }

        public C0298a(Activity activity) {
            jc.l.g(activity, "activity");
            this.f12106m = activity;
            this.f12095b = q8.a.BOTH;
            this.f12096c = new String[0];
        }

        public final C0298a e() {
            this.f12099f = true;
            return this;
        }

        public final C0298a f(float f10, float f11) {
            this.f12097d = f10;
            this.f12098e = f11;
            return e();
        }

        public final C0298a g() {
            return f(1.0f, 1.0f);
        }

        public final C0298a h(String[] strArr) {
            jc.l.g(strArr, "mimeTypes");
            this.f12096c = strArr;
            return this;
        }

        public final C0298a i() {
            this.f12095b = q8.a.GALLERY;
            return this;
        }

        public final Bundle j() {
            Bundle bundle = new Bundle();
            bundle.putSerializable("extra.image_provider", this.f12095b);
            bundle.putStringArray("extra.mime_types", this.f12096c);
            bundle.putBoolean("extra.crop", this.f12099f);
            bundle.putFloat("extra.crop_x", this.f12097d);
            bundle.putFloat("extra.crop_y", this.f12098e);
            bundle.putInt("extra.max_width", this.f12100g);
            bundle.putInt("extra.max_height", this.f12101h);
            bundle.putLong("extra.image_max_size", this.f12102i);
            bundle.putString("extra.save_directory", this.f12105l);
            return bundle;
        }

        public final C0298a k(int i10, int i11) {
            this.f12100g = i10;
            this.f12101h = i11;
            return this;
        }

        public final void l(int i10) {
            t8.a.f14084a.a(this.f12106m, new C0299a(i10), this.f12104k);
        }

        public final void m(int i10) {
            if (this.f12095b == q8.a.BOTH) {
                l(i10);
            } else {
                n(i10);
            }
        }

        public final void n(int i10) {
            Intent intent = new Intent(this.f12106m, (Class<?>) ImagePickerActivity.class);
            intent.putExtras(j());
            Fragment fragment = this.f12094a;
            if (fragment == null) {
                this.f12106m.startActivityForResult(intent, i10);
            } else if (fragment != null) {
                fragment.startActivityForResult(intent, i10);
            }
        }
    }

    /* compiled from: ImagePicker.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b() {
        }

        public final File a(Intent intent) {
            String b10 = b(intent);
            if (b10 != null) {
                return new File(b10);
            }
            return null;
        }

        public final String b(Intent intent) {
            if (intent != null) {
                return intent.getStringExtra("extra.file_path");
            }
            return null;
        }

        public final C0298a c(Activity activity) {
            jc.l.g(activity, "activity");
            return new C0298a(activity);
        }

        public /* synthetic */ b(g gVar) {
            this();
        }
    }
}
