package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.google.android.gms.auth.api.credentials.CredentialsApi;

/* compiled from: TooltipPopup.java */
/* loaded from: classes.dex */
public class a1 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1260a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1261b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f1262c;

    /* renamed from: d, reason: collision with root package name */
    public final WindowManager.LayoutParams f1263d;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f1264e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f1265f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f1266g;

    public a1(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1263d = layoutParams;
        this.f1264e = new Rect();
        this.f1265f = new int[2];
        this.f1266g = new int[2];
        this.f1260a = context;
        View inflate = LayoutInflater.from(context).inflate(d.g.f5302s, (ViewGroup) null);
        this.f1261b = inflate;
        this.f1262c = (TextView) inflate.findViewById(d.f.f5276s);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = CredentialsApi.ACTIVITY_RESULT_NO_HINTS_AVAILABLE;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = d.i.f5318a;
        layoutParams.flags = 24;
    }

    public static View b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    public final void a(View view, int i10, int i11, boolean z10, WindowManager.LayoutParams layoutParams) {
        int height;
        int i12;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1260a.getResources().getDimensionPixelOffset(d.d.f5229m);
        if (view.getWidth() < dimensionPixelOffset) {
            i10 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1260a.getResources().getDimensionPixelOffset(d.d.f5228l);
            height = i11 + dimensionPixelOffset2;
            i12 = i11 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i12 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1260a.getResources().getDimensionPixelOffset(z10 ? d.d.f5231o : d.d.f5230n);
        View b10 = b(view);
        if (b10 == null) {
            return;
        }
        b10.getWindowVisibleDisplayFrame(this.f1264e);
        Rect rect = this.f1264e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1260a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1264e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        b10.getLocationOnScreen(this.f1266g);
        view.getLocationOnScreen(this.f1265f);
        int[] iArr = this.f1265f;
        int i13 = iArr[0];
        int[] iArr2 = this.f1266g;
        iArr[0] = i13 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i10) - (b10.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1261b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1261b.getMeasuredHeight();
        int[] iArr3 = this.f1265f;
        int i14 = ((iArr3[1] + i12) - dimensionPixelOffset3) - measuredHeight;
        int i15 = iArr3[1] + height + dimensionPixelOffset3;
        if (z10) {
            if (i14 >= 0) {
                layoutParams.y = i14;
                return;
            } else {
                layoutParams.y = i15;
                return;
            }
        }
        if (measuredHeight + i15 <= this.f1264e.height()) {
            layoutParams.y = i15;
        } else {
            layoutParams.y = i14;
        }
    }

    public void c() {
        if (d()) {
            ((WindowManager) this.f1260a.getSystemService("window")).removeView(this.f1261b);
        }
    }

    public boolean d() {
        return this.f1261b.getParent() != null;
    }

    public void e(View view, int i10, int i11, boolean z10, CharSequence charSequence) {
        if (d()) {
            c();
        }
        this.f1262c.setText(charSequence);
        a(view, i10, i11, z10, this.f1263d);
        ((WindowManager) this.f1260a.getSystemService("window")).addView(this.f1261b, this.f1263d);
    }
}
