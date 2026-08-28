package m7;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.anslayer.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import io.wax911.support.SupportExtentionKt;
import org.apache.http.impl.auth.NTLMEngineImpl;
import vb.p;

/* compiled from: LoadingDialog.kt */
/* loaded from: classes.dex */
public final class i extends Dialog {

    /* renamed from: f, reason: collision with root package name */
    public final boolean f11024f;

    /* renamed from: g, reason: collision with root package name */
    public final float f11025g;

    /* renamed from: h, reason: collision with root package name */
    public FrameLayout f11026h;

    /* renamed from: i, reason: collision with root package name */
    public DialogInterface.OnCancelListener f11027i;

    /* renamed from: j, reason: collision with root package name */
    public androidx.appcompat.app.d f11028j;

    /* renamed from: k, reason: collision with root package name */
    public final DialogInterface.OnDismissListener f11029k;

    /* renamed from: l, reason: collision with root package name */
    public final DialogInterface.OnClickListener f11030l;

    /* compiled from: LoadingDialog.kt */
    /* loaded from: classes.dex */
    public static final class a extends LinearLayout {
        public a(Context context) {
            super(context);
        }

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            jc.l.f(motionEvent, "ev");
            if (i.this.f()) {
                i.this.g();
                return false;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            FrameLayout frameLayout = i.this.f11026h;
            jc.l.c(frameLayout);
            int measuredWidth = ((i12 - i10) - frameLayout.getMeasuredWidth()) / 2;
            FrameLayout frameLayout2 = i.this.f11026h;
            jc.l.c(frameLayout2);
            int measuredHeight = ((i13 - i11) - frameLayout2.getMeasuredHeight()) / 2;
            FrameLayout frameLayout3 = i.this.f11026h;
            jc.l.c(frameLayout3);
            FrameLayout frameLayout4 = i.this.f11026h;
            jc.l.c(frameLayout4);
            int measuredWidth2 = frameLayout4.getMeasuredWidth() + measuredWidth;
            FrameLayout frameLayout5 = i.this.f11026h;
            jc.l.c(frameLayout5);
            frameLayout3.layout(measuredWidth, measuredHeight, measuredWidth2, frameLayout5.getMeasuredHeight() + measuredHeight);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            FrameLayout frameLayout = i.this.f11026h;
            jc.l.c(frameLayout);
            frameLayout.measure(View.MeasureSpec.makeMeasureSpec(k7.b.g(86), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(k7.b.g(86), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
            setMeasuredDimension(View.MeasureSpec.getSize(i10), View.MeasureSpec.getSize(i11));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            jc.l.f(motionEvent, "event");
            if (i.this.f()) {
                i.this.g();
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Context context, boolean z10, float f10) {
        super(context, R.style.TransparentDialog);
        jc.l.f(context, "context");
        this.f11024f = z10;
        this.f11025g = f10;
    }

    public static final void h(i iVar, DialogInterface dialogInterface, int i10) {
        jc.l.f(iVar, "this$0");
        DialogInterface.OnCancelListener onCancelListener = iVar.f11027i;
        if (onCancelListener != null) {
            onCancelListener.onCancel(iVar);
        }
        iVar.dismiss();
    }

    public static final void i(i iVar, DialogInterface dialogInterface) {
        jc.l.f(iVar, "this$0");
        iVar.f11028j = null;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        DialogInterface.OnDismissListener onDismissListener = this.f11029k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(this);
        }
        androidx.appcompat.app.d dVar = this.f11028j;
        if (dVar != null) {
            dVar.dismiss();
        }
        try {
            super.dismiss();
        } catch (Throwable unused) {
        }
    }

    public final Drawable e(int i10, int i11) {
        float[] fArr = new float[8];
        for (int i12 = 0; i12 < 8; i12++) {
            fArr[i12] = i10;
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(i11);
        return shapeDrawable;
    }

    public final boolean f() {
        return this.f11024f;
    }

    public final void g() {
        if (this.f11028j != null) {
            return;
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(getContext());
        materialAlertDialogBuilder.setMessage(R.string.stop_loading);
        materialAlertDialogBuilder.setPositiveButton(R.string.wait_more, (DialogInterface.OnClickListener) null);
        materialAlertDialogBuilder.setNegativeButton(R.string.stop, new DialogInterface.OnClickListener() { // from class: m7.g
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                i.h(i.this, dialogInterface, i10);
            }
        });
        materialAlertDialogBuilder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: m7.h
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                i.i(i.this, dialogInterface);
            }
        });
        try {
            this.f11028j = materialAlertDialogBuilder.show();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
        DialogInterface.OnClickListener onClickListener = this.f11030l;
        if (onClickListener == null) {
            return;
        }
        onClickListener.onClick(this, -2);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a aVar = new a(getContext());
        aVar.setOrientation(1);
        aVar.setBackgroundDrawable(null);
        aVar.setPadding(0, 0, 0, 0);
        int i10 = Build.VERSION.SDK_INT;
        aVar.setFitsSystemWindows(i10 >= 21);
        setContentView(aVar);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f11026h = frameLayout;
        jc.l.c(frameLayout);
        int g10 = k7.b.g(18);
        Context context = getContext();
        jc.l.e(context, "context");
        frameLayout.setBackgroundDrawable(e(g10, SupportExtentionKt.getColorFromAttr(context, R.attr.colorSurface)));
        FrameLayout frameLayout2 = this.f11026h;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(k7.b.g(86), k7.b.g(86));
        layoutParams.gravity = 17;
        p pVar = p.f15031a;
        aVar.addView(frameLayout2, layoutParams);
        j jVar = new j(getContext());
        Context context2 = getContext();
        jc.l.e(context2, "context");
        jVar.setProgressColor(SupportExtentionKt.getColorFromAttr(context2, R.attr.colorOnSurface));
        FrameLayout frameLayout3 = this.f11026h;
        jc.l.c(frameLayout3);
        frameLayout3.addView(jVar, new LinearLayout.LayoutParams(k7.b.g(86), k7.b.g(86)));
        Window window = getWindow();
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
        jc.l.c(window);
        layoutParams2.copyFrom(window.getAttributes());
        layoutParams2.width = -1;
        layoutParams2.dimAmount = this.f11025g;
        layoutParams2.flags |= 2;
        if (i10 >= 28) {
            layoutParams2.layoutInDisplayCutoutMode = 0;
        }
        window.setAttributes(layoutParams2);
    }

    @Override // android.app.Dialog
    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.f11027i = onCancelListener;
        super.setOnCancelListener(onCancelListener);
    }

    public /* synthetic */ i(Context context, boolean z10, float f10, int i10, jc.g gVar) {
        this(context, z10, (i10 & 4) != 0 ? 0.3f : f10);
    }
}
