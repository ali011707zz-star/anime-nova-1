package cb;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.warkiz.widget.ArrowView;
import com.warkiz.widget.IndicatorSeekBar;

/* compiled from: Indicator.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: c, reason: collision with root package name */
    public ArrowView f3817c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f3818d;

    /* renamed from: e, reason: collision with root package name */
    public PopupWindow f3819e;

    /* renamed from: f, reason: collision with root package name */
    public LinearLayout f3820f;

    /* renamed from: g, reason: collision with root package name */
    public int f3821g;

    /* renamed from: h, reason: collision with root package name */
    public int f3822h;

    /* renamed from: i, reason: collision with root package name */
    public Context f3823i;

    /* renamed from: j, reason: collision with root package name */
    public int f3824j;

    /* renamed from: k, reason: collision with root package name */
    public IndicatorSeekBar f3825k;

    /* renamed from: l, reason: collision with root package name */
    public View f3826l;

    /* renamed from: m, reason: collision with root package name */
    public View f3827m;

    /* renamed from: n, reason: collision with root package name */
    public View f3828n;

    /* renamed from: o, reason: collision with root package name */
    public float f3829o;

    /* renamed from: p, reason: collision with root package name */
    public int f3830p;

    /* renamed from: b, reason: collision with root package name */
    public int[] f3816b = new int[2];

    /* renamed from: a, reason: collision with root package name */
    public final int f3815a = e();

    public d(Context context, IndicatorSeekBar indicatorSeekBar, int i10, int i11, int i12, int i13, View view, View view2) {
        this.f3823i = context;
        this.f3825k = indicatorSeekBar;
        this.f3822h = i10;
        this.f3824j = i11;
        this.f3827m = view;
        this.f3828n = view2;
        this.f3829o = i12;
        this.f3830p = i13;
        this.f3821g = k.a(this.f3823i, 2.0f);
        h();
    }

    public final void a(float f10) {
        int i10 = this.f3824j;
        if (i10 == 4 || i10 == 1) {
            return;
        }
        if (c() + f10 < this.f3819e.getContentView().getMeasuredWidth() / 2) {
            k(this.f3817c, -((int) (((this.f3819e.getContentView().getMeasuredWidth() / 2) - r0) - f10)), -1, -1, -1);
        } else if ((this.f3815a - r0) - f10 < this.f3819e.getContentView().getMeasuredWidth() / 2) {
            k(this.f3817c, (int) ((this.f3819e.getContentView().getMeasuredWidth() / 2) - ((this.f3815a - r0) - f10)), -1, -1, -1);
        } else {
            k(this.f3817c, 0, 0, 0, 0);
        }
    }

    public final GradientDrawable b() {
        GradientDrawable gradientDrawable;
        if (this.f3824j == 2) {
            gradientDrawable = (GradientDrawable) this.f3823i.getResources().getDrawable(f.f3831a);
        } else {
            gradientDrawable = (GradientDrawable) this.f3823i.getResources().getDrawable(f.f3832b);
        }
        gradientDrawable.setColor(this.f3822h);
        return gradientDrawable;
    }

    public final int c() {
        this.f3825k.getLocationOnScreen(this.f3816b);
        return this.f3816b[0];
    }

    public View d() {
        return this.f3826l;
    }

    public final int e() {
        WindowManager windowManager = (WindowManager) this.f3823i.getSystemService("window");
        if (windowManager != null) {
            return windowManager.getDefaultDisplay().getWidth();
        }
        return 0;
    }

    public void f() {
        PopupWindow popupWindow = this.f3819e;
        if (popupWindow == null) {
            return;
        }
        popupWindow.dismiss();
    }

    public void g() {
        View view;
        if (this.f3819e != null || this.f3824j == 0 || (view = this.f3826l) == null) {
            return;
        }
        view.measure(0, 0);
        this.f3819e = new PopupWindow(this.f3826l, -2, -2, false);
    }

    public final void h() {
        View findViewById;
        int i10 = this.f3824j;
        if (i10 == 4) {
            View view = this.f3827m;
            if (view != null) {
                this.f3826l = view;
                int identifier = this.f3823i.getResources().getIdentifier("isb_progress", "id", this.f3823i.getApplicationContext().getPackageName());
                if (identifier <= 0 || (findViewById = this.f3826l.findViewById(identifier)) == null) {
                    return;
                }
                if (findViewById instanceof TextView) {
                    TextView textView = (TextView) findViewById;
                    this.f3818d = textView;
                    textView.setText(this.f3825k.getIndicatorTextString());
                    this.f3818d.setTextSize(k.b(this.f3823i, this.f3829o));
                    this.f3818d.setTextColor(this.f3830p);
                    return;
                }
                throw new ClassCastException("the view identified by isb_progress in indicator custom layout can not be cast to TextView");
            }
            throw new IllegalArgumentException("the attr：indicator_custom_layout must be set while you set the indicator type to CUSTOM.");
        }
        if (i10 == 1) {
            b bVar = new b(this.f3823i, this.f3829o, this.f3830p, this.f3822h, "1000");
            this.f3826l = bVar;
            bVar.setProgress(this.f3825k.getIndicatorTextString());
            return;
        }
        View inflate = View.inflate(this.f3823i, h.f3836a, null);
        this.f3826l = inflate;
        this.f3820f = (LinearLayout) inflate.findViewById(g.f3834b);
        ArrowView arrowView = (ArrowView) this.f3826l.findViewById(g.f3833a);
        this.f3817c = arrowView;
        arrowView.setColor(this.f3822h);
        TextView textView2 = (TextView) this.f3826l.findViewById(g.f3835c);
        this.f3818d = textView2;
        textView2.setText(this.f3825k.getIndicatorTextString());
        this.f3818d.setTextSize(k.b(this.f3823i, this.f3829o));
        this.f3818d.setTextColor(this.f3830p);
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3820f.setBackground(b());
        } else {
            this.f3820f.setBackgroundDrawable(b());
        }
        if (this.f3828n != null) {
            int identifier2 = this.f3823i.getResources().getIdentifier("isb_progress", "id", this.f3823i.getApplicationContext().getPackageName());
            View view2 = this.f3828n;
            if (identifier2 > 0) {
                View findViewById2 = view2.findViewById(identifier2);
                if (findViewById2 != null && (findViewById2 instanceof TextView)) {
                    n(view2, (TextView) findViewById2);
                    return;
                } else {
                    m(view2);
                    return;
                }
            }
            m(view2);
        }
    }

    public boolean i() {
        PopupWindow popupWindow = this.f3819e;
        return popupWindow != null && popupWindow.isShowing();
    }

    public void j() {
        String indicatorTextString = this.f3825k.getIndicatorTextString();
        View view = this.f3826l;
        if (view instanceof b) {
            ((b) view).setProgress(indicatorTextString);
            return;
        }
        TextView textView = this.f3818d;
        if (textView != null) {
            textView.setText(indicatorTextString);
        }
    }

    public final void k(View view, int i10, int i11, int i12, int i13) {
        if (view != null && (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            if (i10 == -1) {
                i10 = marginLayoutParams.leftMargin;
            }
            if (i11 == -1) {
                i11 = marginLayoutParams.topMargin;
            }
            if (i12 == -1) {
                i12 = marginLayoutParams.rightMargin;
            }
            if (i13 == -1) {
                i13 = marginLayoutParams.bottomMargin;
            }
            marginLayoutParams.setMargins(i10, i11, i12, i13);
            view.requestLayout();
        }
    }

    public void l(String str) {
        View view = this.f3826l;
        if (view instanceof b) {
            ((b) view).setProgress(str);
            return;
        }
        TextView textView = this.f3818d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void m(View view) {
        n(view, null);
    }

    public void n(View view, TextView textView) {
        this.f3818d = textView;
        this.f3820f.removeAllViews();
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(b());
        } else {
            view.setBackgroundDrawable(b());
        }
        this.f3820f.addView(view);
    }

    public void o(float f10) {
        if (this.f3825k.isEnabled() && this.f3825k.getVisibility() == 0) {
            j();
            PopupWindow popupWindow = this.f3819e;
            if (popupWindow != null) {
                popupWindow.getContentView().measure(0, 0);
                this.f3819e.showAsDropDown(this.f3825k, (int) (f10 - (r0.getContentView().getMeasuredWidth() / 2.0f)), -(((this.f3825k.getMeasuredHeight() + this.f3819e.getContentView().getMeasuredHeight()) - this.f3825k.getPaddingTop()) + this.f3821g));
                a(f10);
            }
        }
    }

    public void p(float f10) {
        if (this.f3825k.isEnabled() && this.f3825k.getVisibility() == 0) {
            j();
            PopupWindow popupWindow = this.f3819e;
            if (popupWindow != null) {
                popupWindow.getContentView().measure(0, 0);
                this.f3819e.update(this.f3825k, (int) (f10 - (r2.getContentView().getMeasuredWidth() / 2)), -(((this.f3825k.getMeasuredHeight() + this.f3819e.getContentView().getMeasuredHeight()) - this.f3825k.getPaddingTop()) + this.f3821g), -1, -1);
                a(f10);
            }
        }
    }

    public void q(int i10) {
        k(this.f3817c, i10, -1, -1, -1);
    }

    public void r(int i10) {
        k(this.f3826l, i10, -1, -1, -1);
    }
}
