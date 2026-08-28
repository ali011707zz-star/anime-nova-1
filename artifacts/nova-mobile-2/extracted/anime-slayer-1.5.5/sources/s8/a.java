package s8;

import android.content.ContextWrapper;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import jc.l;

/* compiled from: BaseProvider.kt */
/* loaded from: classes.dex */
public abstract class a extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final ImagePickerActivity f13850a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ImagePickerActivity imagePickerActivity) {
        super(imagePickerActivity);
        l.g(imagePickerActivity, "activity");
        this.f13850a = imagePickerActivity;
    }

    public final ImagePickerActivity a() {
        return this.f13850a;
    }

    public void b() {
    }

    public final void c(int i10) {
        String string = getString(i10);
        l.b(string, "getString(errorRes)");
        d(string);
    }

    public final void d(String str) {
        l.g(str, "error");
        b();
        this.f13850a.f(str);
    }

    public final void e() {
        b();
        this.f13850a.i();
    }
}
